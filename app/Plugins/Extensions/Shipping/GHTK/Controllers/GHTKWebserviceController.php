<?php


namespace App\Plugins\Extensions\Shipping\GHTK\Controllers;


use App\Http\Controllers\Controller;
use App\Models\ShopOrder;
use App\Models\ShopOrderDetail;
use App\Plugins\Extensions\Shipping\GHTK\Models\GHTKModel;
use App\Plugins\Extensions\Shipping\GHTK\Models\GHTKOrderModel;
use App\Plugins\Extensions\Shipping\GHTK\Models\GHTKWarehouseModel;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class GHTKWebserviceController extends Controller
{
    private $client;
    private $url;
    private $token;
    private $create_order_url;
    private $track_url;
    private $print_url;
    private $cancel_url;


    public function __construct()
    {
        $ghtk = GHTKModel::find(1);
        $this->url = $ghtk->getWebserviceUrl();
        $this->create_order_url = $this->url .'/services/shipment/order';
        $this->track_url = $this->url .'/services/shipment/v2/';
        $this->print_url = $this->url .'/services/label/';
        $this->cancel_url = $this->url .'/services/shipment/cancel/partner_id:';
        $this->token = $ghtk->token;
        $this->client = new Client([
            'headers' => [
                'Token' => $this->token,
                'Content-Type' => 'application/json',
            ],
        ]);
    }

    public function create_order(Request $request, $id)
    {
        try {
            $order = ShopOrder::findOrFail($id);
            $products_data = [];
            $order_detail = ShopOrderDetail::with('product')->where('order_id', $id)->get();
            foreach ($order_detail as $detail) {
                $products_data[] = [
                    "name" => $detail->name,
                    "weight" =>  0.1,
                    "quantity" => $detail->qty
                ];
            }
            $warehouse = GHTKWarehouseModel::find($request->get('warehouse'));

            $order_data = [
                "id" => $id,
                "pick_address_id" => $warehouse->pick_address_id,
                "pick_name" => $warehouse->pick_name,
                "pick_address" => $warehouse->pick_address,
                "pick_province" => $warehouse->pick_province,
                "pick_district" => $warehouse->pick_district,
                "pick_tel" => $warehouse->pick_tel,
                "pick_ward" => $warehouse->pick_ward,
                "pick_street" => $warehouse->pick_street,
                "pick_email" => $warehouse->pick_email,
                "tel" => $order->phone,
                "name" => $order->first_name . ' ' . $order->last_name,
                "address" => $order->address,
                "ward" => $order->ward,
                "province" => $order->province,
                "district" => $order->district,
                "is_freeship" => $request->get('is_freeship'),
                "pick_money" => (int) $request->get('pick_money'),
                "note" => $request->get('note'),
                "value" => (int) $request->get('value'),
                "transport" => $request->get('transport'),
                "weight_option" => $request->get('weight_option'),
                "total_weight" => (float) $request->get('total_weight'),
                'pick_option' => $request->get('pick_option')
            ];
            $data = array('products' => $products_data, 'order' => $order_data);
            $response = $this->client->post($this->create_order_url, array(
                'form_params' => $data
            ));
            $rs = json_decode($response->getBody());
            if ($rs->success) {
                GHTKOrderModel::create([
                    'shop_order_id' => $id,
                    'ghtk_order_id' => $rs->order->label,
                    'weight_option' => $request->get('weight_option'),
                    'total_weight' => (float) $request->get('total_weight'),
                    'pick_option' => $request->get('pick_option'),
                    'transport' => $request->get('transport'),
                    'pick_money' => (int) $request->get('pick_money'),
                    'value' => (int) $request->get('value'),
                    'is_freeship' => $request->get('is_freeship')
                ]);
                return redirect()->route('admin_order.detail', $id)->with('success', 'Đăng đơn hàng lên GHTK thành công');
            } else {
                return redirect()->route('admin_order.detail', $id)->with('error', 'Không thể đăng đơn hàng lên GHTK');
            }
        } catch (\Exception $e) {
            return back()->with('error', 'Không thể kết nối tới GHTK');
        }
    }

    public function track($order)
    {
        return json_decode($this->client->get($this->track_url.$order)->getBody()->getContents());
    }

    public function ghtk_order_print($order)
    {
        $ghtk_order = GHTKOrderModel::where('shop_order_id', $order)->firstOrFail();
        try {
            $rs = $this->client->get($this->print_url.$ghtk_order->ghtk_order_id)->getBody()->getContents();
            return \Response::make($rs, 200, [
                'Content-Type' => 'application/pdf',
                'Content-Disposition' => 'inline; filename=""',
                'Content-Transfer-Encoding' => 'binary'
            ]);
        } catch (\Exception $e) {
            return 'Không thể kết nối tới GHTK';
        }
    }

    public function ghtk_order_cancel($order)
    {
        try {
            $rs = json_decode($this->client->post($this->cancel_url.$order)->getBody()->getContents());
            if ($rs->success) {
                return back()->with('success', 'Hủy đơn trên GHTK thành công');
            } else {
                return back()->with('error', $rs->message);
            }
        } catch (\Exception $e) {
            return back()->with('error', 'Không thể kết nối tới GHTK');
        }
    }
}
