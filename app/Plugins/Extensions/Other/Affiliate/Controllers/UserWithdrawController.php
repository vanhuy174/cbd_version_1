<?php


namespace App\Plugins\Extensions\Other\Affiliate\Controllers;

use App\Admin\Admin;
use App\Http\Controllers\Controller;
use App\Models\ShopOrder;
use App\Models\ShopUser;
use App\Plugins\Extensions\Other\Affiliate\AppConfig;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateHistoryModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateOrderModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserWithdrawModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateWithdrawModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class UserWithdrawController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Danh sách rút tiền',
            'sub_title' => '',
            'icon' => 'fa fa-indent',
            'menu_left' => '',
            'menu_right' => '',
            'menu_sort' => '',
            'script_sort' => '',
            'menu_search' => '',
            'script_search' => '',
            'listTh' => '',
            'dataTr' => '',
            'pagination' => '',
            'result_items' => '',
            'url_delete_item' => '',
        ];

        $listTh = [
            'id' => 'ID',
            'user_id' => 'Người Dùng',
            'money' => 'Số Tiền',
            'transaction_id' => 'Mã Giao Dịch Ngân Hàng',
            'note' => 'Ghi Chú',
            'created_at' => 'Ngày Tạo',
            'status' => 'Trạng Thái',
            'action' => 'Thao Tác'
        ];

        $obj = new AffiliateUserWithdrawModel();
        $obj = $obj->orderBy('id', 'desc');
        $dataTmp = $obj->paginate(20);

        $dataTr = [];
        foreach ($dataTmp as $key => $row) {
            $dataTr[] = [
                'id' => $row['id'],
                'user_id' => get_user_name($row['user_id']),
                'money' => $row['money'],
                'transaction_id' => $row['transaction_id'],
                'note' => $row['note'],
                'created_at' => $row['created_at'],
                'status' => get_withdraw_status($row['status']),
                'action' => get_withdraw_confirm_btn($row['status'], $row['id']),
            ];
        }

        $data['listTh'] = $listTh;
        $data['dataTr'] = $dataTr;
        $data['pagination'] = $dataTmp->appends(request()->except(['_token', '_pjax']))->links('admin.component.pagination');
        $data['result_items'] = trans('shipping_status.admin.result_item', ['item_from' => $dataTmp->firstItem(), 'item_to' => $dataTmp->lastItem(), 'item_total' => $dataTmp->total()]);

//menu_left
        $data['menu_left'] = '<div class="pull-left">
                      <a class="btn   btn-flat btn-primary grid-refresh" title="Refresh"><i class="fa fa-refresh"></i><span class="hidden-xs"> ' . trans('shipping_status.admin.refresh') . '</span></a> &nbsp;
                      </div>';
//=menu_left

        return view('admin.screen.list')
            ->with($data);
    }

    public function pre_confirm(AffiliateUserWithdrawModel $withdraw)
    {
        $user = ShopUser::find($withdraw->user_id);
        $a_user = AffiliateUserModel::where('user_id', $withdraw->user_id)->first();
        $bank_user = AffiliateWithdrawModel::where('user_id', $withdraw->user_id)->first();
        return view((new AppConfig())->pathPlugin.'::pre_withdraw', compact('withdraw', 'user', 'a_user', 'bank_user'));
    }

    public function confirm(Request $request, AffiliateUserWithdrawModel $withdraw)
    {
        try {
            if ($withdraw->status != $withdraw::UNCOMFIRM)
                abort(400);
            $withdraw->status = 1;
            $withdraw->transaction_id = $request->transaction_id;
            $withdraw->note = $request->note;
            $withdraw->save();

            AffiliateHistoryModel::create([
                'user_id' => $withdraw->user_id,
                'admin_id' => Admin::user()->id,
                'content' => 'Đã xác nhận yêu cầu rút tiền #<b>'.$withdraw->id.'</b>'
            ]);

            return back()->with('success', 'Xác nhận rút tiền thành công!');
        } catch (\Exception $e) {
            return back()->with('error', 'Xác nhận rút tiền không thành công!');
        }
    }

    public function cancel(AffiliateUserWithdrawModel $withdraw)
    {
        try {
            if ($withdraw->status != $withdraw::UNCOMFIRM)
                abort(400);
            $withdraw->status = 2;
            $withdraw->save();

            AffiliateHistoryModel::create([
                'user_id' => $withdraw->user_id,
                'admin_id' => Admin::user()->id,
                'content' => 'Đã hủy yêu cầu rút tiền #<b>'.$withdraw->id.'</b>. Hoàn lại <b>'.$withdraw->money.'</b>.'
            ]);
            $affiliate_user = AffiliateUserModel::where('user_id',$withdraw->user_id)->firstOrFail();
            $affiliate_user->affiliate_money += $withdraw->money;
            $affiliate_user->save();
            return back()->with('success', 'Hủy yêu cầu rút tiền thành công!');
        } catch (\Exception $e) {
            return back()->with('error', 'Hủy yêu cầu rút tiền không thành công!');
        }
    }
}
