<?php


namespace App\Plugins\Extensions\Other\Affiliate\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ShopUser;
use App\Plugins\Extensions\Other\Affiliate\AppConfig;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateHistoryModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateLevelModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserWithdrawModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AffiliateUserController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Danh sách người dùng tham gia affiliate',
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
            'affiliate_code' => 'Mã Affiliate',
            'parent_code' => 'Giới Thiệu Bởi',
            'affiliate_token' => 'Tiền Kiếm Được',
            'action' => 'Thao Tác'
        ];

        $obj = new AffiliateUserModel();
        $obj = $obj->orderBy('id', 'desc');
        $dataTmp = $obj->paginate(20);

        $dataTr = [];
        foreach ($dataTmp as $key => $row) {
            $dataTr[] = [
                'id' => $row['id'],
                'user_id' => get_user_name($row['user_id']),
                'affiliate_code' => is_null($row['affiliate_code']) ? 'Chưa được cấp' : $row['affiliate_code'],
                'parent_code' => get_affiliate_name($row['parent_code']),
                'affiliate_money' => $row['affiliate_money'],
                'action' => '<a href="'.route('affiliate.user.detail', $row['id']).'">Xem Chi Tiết</a>'
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

    public function detail($a_user_id)
    {
        $a_user = AffiliateUserModel::findOrFail($a_user_id);
        $a_history = AffiliateHistoryModel::where('user_id', $a_user->user_id)->orderBy('id', 'desc')->get();
        $childs = [];
        if (!is_null($a_user->affiliate_code)) {
            $childs = AffiliateUserModel::where('parent_code', $a_user->affiliate_code)->with('user')->get();
        }
        $user_withdraws = AffiliateUserWithdrawModel::where('user_id', $a_user->user_id)->orderBy('id', 'desc')->get();

        $data = [
            'title' => 'Chi Tiết Affiliate Người Dùng #'.$a_user->user_id,
            'icon' => 'fa fa-id-card',

        ];
        return view((new AppConfig())->pathPlugin.'::user_detail', [
            'a_user' => $a_user,
            'a_history' => $a_history,
            'childs' => $childs,
            'user_withdraws' => $user_withdraws
        ])->with($data);
    }
}
