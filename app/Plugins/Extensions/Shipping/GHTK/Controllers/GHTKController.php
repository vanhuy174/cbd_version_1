<?php


namespace App\Plugins\Extensions\Shipping\GHTK\Controllers;

use App\Admin\Admin;
use App\Admin\Controllers\ShopOrderController;
use App\Http\Controllers\Controller;
use App\Models\ShopAttributeGroup;
use App\Models\ShopOrder;
use App\Models\ShopOrderTotal;
use App\Models\ShopProduct;
use App\Models\ShopShippingStatus;
use App\Plugins\Extensions\Shipping\GHTK\AppConfig;
use App\Plugins\Extensions\Shipping\GHTK\Models\GHTKOrderModel;
use App\Plugins\Extensions\Shipping\GHTK\Models\GHTKWarehouseModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class GHTKController extends ShopOrderController
{
    public function detail($id)
    {
        $order = ShopOrder::findOrFail($id);
        $products = ShopProduct::getArrayProductName();
        $paymentMethodTmp = sc_get_extension('payment', $onlyActive = false);
        foreach ($paymentMethodTmp as $key => $value) {
            $paymentMethod[$key] = sc_language_render($value->detail);
        }
        $shippingMethodTmp = sc_get_extension('shipping', $onlyActive = false);
        foreach ($shippingMethodTmp as $key => $value) {
            $shippingMethod[$key] = sc_language_render($value->detail);
        }
        $ghtk_order = null;
        if (isset($shippingMethod['GHTK']))
            $ghtk_order = GHTKOrderModel::where('shop_order_id', $id)->first();
        $order_track = null;
        if (!is_null($ghtk_order)) {
            try {
                $order_track = (new GHTKWebserviceController())->track($ghtk_order->ghtk_order_id);
                if ($order->shipping_status != $order_track->order->status) {
                    if ($order_track->order->status == -1 && $order->shipping_status != 9999) {
                        //Add history
                        $dataHistory = [
                            'order_id' => $order->id,
                            'content' => 'Change <b>shipping status</b> from <span style="color:blue">' . $order->shipping_status . '</span> to <span style="color:red">' . 9999 . '</span>',
                            'admin_id' => Admin::user()->id,
                        ];
                        $order->shipping_status = 9999;
                    } else {
                        ShopShippingStatus::findOrFail($order_track->order->status);
                        //Add history
                        $dataHistory = [
                            'order_id' => $order->id,
                            'content' => 'Change <b>shipping status</b> from <span style="color:blue">' . $order->shipping_status . '</span> to <span style="color:red">' . $order_track->order->status . '</span>',
                            'admin_id' => Admin::user()->id,
                        ];
                        $order->shipping_status = $order_track->order->status;
                    }
                    $order->save();
                    (new ShopOrder)->addOrderHistory($dataHistory);
                }
            } catch (\Exception $e) {
                Log::error($e->getMessage());
            }
        }

        return view((new AppConfig())->pathPlugin.'::order_edit')->with(
            [
                "title" => trans('order.order_detail'),
                "sub_title" => '',
                'icon' => 'fa fa-file-text-o',
                "order" => $order,
                "products" => $products,
                "statusOrder" => $this->statusOrder,
                "statusPayment" => $this->statusPayment,
                "statusShipping" => $this->statusShipping,
                "statusOrderMap" => $this->statusOrderMap,
                "statusShippingMap" => $this->statusShippingMap,
                'dataTotal' => ShopOrderTotal::getTotal($id),
                'attributesGroup' => ShopAttributeGroup::pluck('name', 'id')->all(),
                'paymentMethod' => $paymentMethod,
                'shippingMethod' => $shippingMethod,
                'countryMap' => $this->countryMap,
                'ghtk_order' => $ghtk_order,
                'order_track' => $order_track,
            ]);
    }

    public function ghtk_order($id)
    {
        $order = ShopOrder::findOrFail($id);
        $products = ShopProduct::getArrayProductName();

        $warehouses = GHTKWarehouseModel::all();

        return view((new AppConfig())->pathPlugin.'::create_ghtk_order')->with(
            [
                "title" => 'Đăng đơn lên GHTK',
                "sub_title" => '',
                'icon' => 'fa fa-file-text-o',
                "order" => $order,
                "products" => $products,
                'dataTotal' => ShopOrderTotal::getTotal($id),
                'warehouses' => $warehouses,
            ]);
    }
}
