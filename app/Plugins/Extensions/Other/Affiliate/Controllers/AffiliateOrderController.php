<?php


namespace App\Plugins\Extensions\Other\Affiliate\Controllers;

use App\Admin\Admin;
use App\Http\Controllers\Controller;
use App\Models\ShopOrder;
use App\Plugins\Extensions\Other\Affiliate\AppConfig;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateHistoryModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateOrderModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AffiliateOrderController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Danh sách đơn hàng affiliate',
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
            'order_id' => 'Đơn Hàng',
            'earn_money' => 'Tiền Người Giới Thiệu Sẽ Nhận Được',
            'affiliate_code' => 'Mã Giới Thiệu Đã Dùng',
            'status' => 'Trạng Thái',
            'action' => 'Thao Tác'
        ];

        $obj = new AffiliateOrderModel();
        $obj = $obj->orderBy('id', 'desc');
        $dataTmp = $obj->paginate(20);

        $dataTr = [];
        foreach ($dataTmp as $key => $row) {
            $dataTr[] = [
                'id' => $row['id'],
                'user_id' => get_user_name($row['user_id']),
                'order_id' => get_affiliate_order($row['order_id']),
                'earn_money' => $row['earn_money'],
                'affiliate_code' => $row['affiliate_code'],
                'status' => get_affiliate_status($row['status']),
                'action' => get_affiliate_confirm_btn($row['status'], $row['id']),
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

    public function confirm(AffiliateOrderModel $id)
    {
        try {
            if ($id->status != $id::UNCONFIRM)
                return back()->with('error', 'Đơn hàng đã xác nhận hoặc hủy bỏ trước đó!');
            $id->status = $id::CONFIRM;
            $id->save();
            $order = ShopOrder::find($id->order_id);
            if ($order->status != $id::DONE) {
                $dataHistory = [
                    'order_id' => $id->order_id,
                    'content' => 'Change <b>status</b> from <span style="color:blue">' . $order->status . '</span> to <span style="color:red">'.$id::DONE.'</span>',
                    'admin_id' => Admin::user()->id,
                    'order_status_id' => $order->status,
                ];
                $order->update([
                    'status' => $id::DONE
                ]);
                $order->save();
                (new ShopOrder)->addOrderHistory($dataHistory);
            }

            $parent = AffiliateUserModel::where('affiliate_code', $id->affiliate_code)->first();
            AffiliateHistoryModel::create([
                'user_id' => $parent->user_id,
                'admin_id' => Admin::user()->id,
                'content' => 'Đã xác nhận đơn hàng #<b>'.$id->order_id.'</b>. <br> Người dùng nhận được số tiền <b>'.$id->earn_money.'</b>.'
            ]);
            $parent->affiliate_money += $id->earn_money;
            $parent->save();
            return back()->with('success', 'Xác nhận đơn hàng thành công!');
        } catch (\Exception $e) {
            return back()->with('error', 'Xác nhận đơn hàng không thành công!');
        }
    }

    public function cancel(AffiliateOrderModel $id)
    {
        try {
            if ($id->status != $id::UNCONFIRM)
                return back()->with('error', 'Đơn hàng đã xác nhận hoặc hủy bỏ trước đó!');
            $id->status = $id::CANCEL;
            $id->save();
            $order = ShopOrder::find($id->order_id);
            if ($order->status != $id::FAILED) {
                $dataHistory = [
                    'order_id' => $id->order_id,
                    'content' => 'Change <b>status</b> from <span style="color:blue">' . $order->status . '</span> to <span style="color:red">'.$id::FAILED.'</span>',
                    'admin_id' => Admin::user()->id,
                    'order_status_id' => $order->status,
                ];
                $order->update([
                    'status' => $id::FAILED
                ]);
                $order->save();
                (new ShopOrder)->addOrderHistory($dataHistory);
            }

            $parent = AffiliateUserModel::where('affiliate_code', $id->affiliate_code)->first();
            AffiliateHistoryModel::create([
                'user_id' => $parent->user_id,
                'admin_id' => Admin::user()->id,
                'content' => 'Đã hủy bỏ đơn hàng #<b>'.$id->order_id.'</b>'
            ]);
            return back()->with('success', 'Hủy bỏ đơn hàng thành công!');
        } catch (\Exception $e) {
            return back()->with('error', 'Hủy bỏ đơn hàng không thành công!');
        }
    }
}
