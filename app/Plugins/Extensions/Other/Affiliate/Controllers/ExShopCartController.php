<?php


namespace App\Plugins\Extensions\Other\Affiliate\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Controllers\ShopCart;
use App\Models\ShopAttributeGroup;
use App\Models\ShopCountry;
use App\Models\ShopEmailTemplate;
use App\Models\ShopOrder;
use App\Models\ShopOrderTotal;
use App\Models\ShopProduct;
use App\Models\ShopUser;
use App\Plugins\Extensions\Other\Affiliate\AppConfig;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateHistoryModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateOrderModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use App\Plugins\Extensions\Other\ExtCustomer\Models\ExtOrderModel;
use Illuminate\Http\Request;
use Cart;
use DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class ExShopCartController extends ShopCart
{
    public function getCart()
    {
        session()->forget('paymentMethod'); //destroy paymentMethod
        session()->forget('shippingMethod'); //destroy shippingMethod

        //Shipping
        $moduleShipping = sc_get_extension('shipping');
        $sourcesShipping = sc_get_all_plugin('Extensions', 'shipping');
        $shippingMethod = array();
        foreach ($moduleShipping as $module) {
            if (array_key_exists($module['key'], $sourcesShipping)) {
                $moduleClass = sc_get_class_extension_config('shipping', $module['key']);
                $shippingMethod[$module['key']] = (new $moduleClass)->getData();
            }
        }

        //Payment
        $modulePayment = sc_get_extension('payment');
        $sourcesPayment = sc_get_all_plugin('Extensions', 'payment');
        $paymentMethod = array();
        foreach ($modulePayment as $module) {
            if (array_key_exists($module['key'], $sourcesPayment)) {
                $moduleClass = $sourcesPayment[$module['key']].'\AppConfig';
                $paymentMethod[$module['key']] = (new $moduleClass)->getData();
            }
        }

        //Total
        $moduleTotal = sc_get_extension('total');
        $sourcesTotal = sc_get_all_plugin('Extensions', 'total');
        $totalMethod = array();
        foreach ($moduleTotal as $module) {
            if (array_key_exists($module['key'], $sourcesTotal)) {
                $moduleClass = $sourcesTotal[$module['key']].'\AppConfig';
                $totalMethod[$module['key']] = (new $moduleClass)->getData();
            }
        }


        //====================================================


        $extensionDiscount = $totalMethod['Discount'] ?? '';
        if (!empty(session('Discount'))) {
            $hasCoupon = true;
        } else {
            $hasCoupon = false;
        }
        $user = auth()->user();
        if ($user) {
            $addressDefaul = [
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'email' => $user->email,
                'address' => $user->address,
                'ward' => $user->ward,
                'province' => $user->province,
                'district' => $user->district,
                'postcode' => $user->postcode,
                'company' => $user->company,
                'country' => $user->country,
                'phone' => $user->phone,
                'comment' => '',
            ];
        } else {
            $addressDefaul = [
                'first_name' => '',
                'last_name' => '',
                'postcode' => '',
                'company' => '',
                'email' => '',
                'address' => '',
                'ward' => '',
                'district' => '',
                'province' => '',
                'country' => '',
                'phone' => '',
                'comment' => '',
            ];
        }
        $shippingAddress = session('shippingAddress') ? session('shippingAddress') : $addressDefaul;
        $objects = ShopOrderTotal::getObjectOrderTotal();
        return view(
            $this->templatePath . '.shop_cart',
            [
                'title' => trans('front.cart_title'),
                'description' => '',
                'keyword' => '',
                'cart' => Cart::content(),
                'shippingMethod' => $shippingMethod,
                'paymentMethod' => $paymentMethod,
                'totalMethod' => $totalMethod,
                'dataTotal' => ShopOrderTotal::processDataTotal($objects),
                'hasCoupon' => $hasCoupon,
                'extensionDiscount' => $extensionDiscount,
                'shippingAddress' => $shippingAddress,
                'uID' => $user->id ?? 0,
                'layout_page' => 'shop_cart',
                'countries' => ShopCountry::getArray(),
                'attributesGroup' => ShopAttributeGroup::pluck('name', 'id')->all(),
            ]
        );
    }
    public function processCart()
    {
        if (Cart::count() == 0) {
            return redirect()->route('cart');
        }

        //Not allow for guest
        if (!sc_config('shop_allow_guest') && !auth()->user()) {
            return redirect()->route('login');
        }

        $messages = [
            'max' => trans('validation.max.string'),
            'required' => trans('validation.required'),
        ];
        $validate = [
            'first_name' => 'required|max:100',
            'address' => 'required|max:100',
            'province' => 'required|max:100',
            'district' => 'required|max:100',
            'ward' => 'nullable|max:100',
            'email' => 'required|string|email|max:255',
        ];

        if(sc_config('customer_lastname')) {
            $validate['last_name'] = 'required|max:100';
        }
        if(sc_config('customer_phone')) {
            $validate['phone'] = 'required|regex:/^0[^0][0-9\-]{7,13}$/';
        }
        if(sc_config('customer_country')) {
            $validate['country'] = 'required|min:2';
        }
        if(sc_config('customer_postcode')) {
            $validate['postcode'] = 'required|min:7';
        }
        if(sc_config('customer_company')) {
            $validate['company'] = 'required|min:3';
        }
        $v = Validator::make(
            request()->all(),
            $validate,
            $messages
        );

        if ($v->fails()) {
            return redirect()->back()
                ->withInput()
                ->withErrors($v->errors());
        }

        //Set session shippingMethod
        session(['shippingMethod' => request('shippingMethod')]);
        //Set session paymentMethod
        session(['paymentMethod' => request('paymentMethod')]);

        //Set session shippingAddress
        session(
            [
                'shippingAddress' => [
                    'first_name' => request('first_name'),
                    'last_name' => request('last_name'),
                    'email' => request('email'),
                    'address' => request('address'),
                    'province' => request('province'),
                    'district' => request('district'),
                    'ward' => request('ward'),
                    'country' => request('country'),
                    'phone' => request('phone'),
                    'postcode' => request('postcode'),
                    'company' => request('company'),
                    'comment' => request('comment'),
                ],
            ]
        );

        return redirect()->route('checkout');
    }

    public function addOrder(Request $request)
    {
        if (Cart::count() == 0) {
            return redirect()->route('home');
        }
        //Not allow for guest
        if (!sc_config('shop_allow_guest') && !auth()->user()) {
            return redirect()->route('login');
        } //

        $data = request()->all();
        if (!$data) {
            return redirect()->route('cart');
        } else {
            $dataTotal = session('dataTotal') ?? [];
            $shippingAddress = session('shippingAddress') ?? [];
            $payment_method = session('paymentMethod') ?? '';
            $shipping_method = session('shippingMethod') ?? '';
        }

        if (auth()->check()) {
            $uID = auth()->id();
        } else {
            try {
                $uID = ShopUser::where('email', $shippingAddress['email'])->firstOrFail()->id;
            } catch (\Exception $e) {
                $user = ShopUser::create([
                    'first_name' => $shippingAddress['first_name'],
                    'last_name' => $shippingAddress['last_name'],
                    'email' => $shippingAddress['email'],
                    'password' => bcrypt($shippingAddress['phone']),
                    'province' => $shippingAddress['province'],
                    'address' => $shippingAddress['address'],
                    'district' => $shippingAddress['district'],
                    'ward' => $shippingAddress['ward'],
                    'country' => $shippingAddress['country'],
                    'phone' => $shippingAddress['phone'],
                ]);
                if (sc_config('welcome_customer')) {

                    $checkContent = (new ShopEmailTemplate)->where('group', 'welcome_customer')->where('status', 1)->first();
                    if ($checkContent) {
                        $content = $checkContent->text;
                        $dataFind = [
                            '/\{\{\$title\}\}/',
                            '/\{\{\$first_name\}\}/',
                            '/\{\{\$email\}\}/',
                            '/\{\{\$password\}\}/',
                        ];
                        $dataReplace = [
                            trans('email.welcome_customer.title'),
                            $shippingAddress['first_name'],
                            $shippingAddress['email'],
                            $shippingAddress['phone'],
                        ];
                        $content = preg_replace($dataFind, $dataReplace, $content);
                        $data_mail = [
                            'content' => $content,
                        ];

                        $config = [
                            'to' => $shippingAddress['email'],
                            'subject' => trans('email.welcome_customer.title'),
                        ];

                        sc_send_mail('mail.welcome_customer', $data_mail, $config, []);
                    }

                }
                $uID = $user->id;
                if (Session::has('affiliate_code')) {
                    try {
                        AffiliateUserModel::where('user_id', $uID)->firstOrFail();
                    } catch (\Exception $e) {
                        AffiliateUserModel::create([
                            'user_id' =>  $uID,
                            'parent_code' => session('affiliate_code'),
                        ]);
                        try {
                            $parent = AffiliateUserModel::where('affiliate_code', session('affiliate_code'))->firstOrFail();
                            AffiliateHistoryModel::create([
                                'user_id' => $parent->user_id,
                                'content' => 'Người dùng <b>#'.$uID.'</b> đã đăng ký với mã affiliate  <b>'.session('affiliate_code'),
                            ]);
                        } catch (\Exception $e) {
                            Log::error('Not Found affiliate_code');
                        }
                    }
                } else {
                    AffiliateUserModel::create([
                        'user_id' =>  $uID
                    ]);
                }
            }
        }

        //Process total
        $subtotal = (new ShopOrderTotal)->sumValueTotal('subtotal', $dataTotal); //sum total
        $shipping = (new ShopOrderTotal)->sumValueTotal('shipping', $dataTotal); //sum shipping
        $discount = (new ShopOrderTotal)->sumValueTotal('discount', $dataTotal); //sum discount
        $received = (new ShopOrderTotal)->sumValueTotal('received', $dataTotal); //sum received
        $total = (new ShopOrderTotal)->sumValueTotal('total', $dataTotal);
        //end total

        $dataOrder['user_id'] = $uID;
        $dataOrder['subtotal'] = $subtotal;
        $dataOrder['shipping'] = $shipping;
        $dataOrder['discount'] = $discount;
        $dataOrder['received'] = $received;
        $dataOrder['payment_status'] = self::PAYMENT_UNPAID;
        $dataOrder['shipping_status'] = self::SHIPPING_NOTSEND;
        $dataOrder['status'] = self::ORDER_STATUS_NEW;
        $dataOrder['currency'] = sc_currency_code();
        $dataOrder['exchange_rate'] = sc_currency_rate();
        $dataOrder['total'] = $total;
        $dataOrder['balance'] = $total + $received;
        $dataOrder['first_name'] = $shippingAddress['first_name'];
        $dataOrder['last_name'] = $shippingAddress['last_name'];
        $dataOrder['email'] = $shippingAddress['email'];
        $dataOrder['address'] = $shippingAddress['address'];
        $dataOrder['address1'] = $shippingAddress['address'];
        $dataOrder['address2'] = $shippingAddress['address'];
        $dataOrder['province'] = $shippingAddress['province'];
        $dataOrder['district'] = $shippingAddress['district'];
        $dataOrder['ward'] = $shippingAddress['ward'];
        $dataOrder['country'] = $shippingAddress['country'];
        $dataOrder['phone'] = $shippingAddress['phone'];
        $dataOrder['postcode'] = $shippingAddress['postcode']??null;
        $dataOrder['company'] = $shippingAddress['company']??null;
        $dataOrder['payment_method'] = $payment_method;
        $dataOrder['shipping_method'] = $shipping_method;
        $dataOrder['comment'] = $shippingAddress['comment'];
        $dataOrder['user_agent'] = $request->header('User-Agent');
        $dataOrder['ip'] = $request->ip();
        $dataOrder['created_at'] = date('Y-m-d H:i:s');

        $arrCartDetail = [];
        foreach (Cart::content() as $cartItem) {
            $arrDetail['product_id'] = $cartItem->id;
            $arrDetail['name'] = $cartItem->name;
            $arrDetail['price'] = sc_currency_value($cartItem->price);
            $arrDetail['qty'] = $cartItem->qty;
            $arrDetail['attribute'] = ($cartItem->options) ? json_encode($cartItem->options) : null;
            $arrDetail['total_price'] = sc_currency_value($cartItem->price) * $cartItem->qty;
            $arrCartDetail[] = $arrDetail;
        }

        //Set session info order
        session(['dataOrder' => $dataOrder]);
        session(['arrCartDetail' => $arrCartDetail]);

        //Create new order
        $createOrder = (new ShopOrder())->createOrder($dataOrder, $dataTotal, $arrCartDetail);

        if ($createOrder['error'] == 1) {
            return redirect()->route('cart')->with(['error' => $createOrder['msg']]);
        }  else {
            $affiliate_user = AffiliateUserModel::where('user_id', $uID)->first();
            if (!is_null($affiliate_user->parent_code)) {
                $earn = AffiliateModel::first()->percent*$subtotal/100;
                AffiliateOrderModel::create([
                    'user_id' => $uID,
                    'order_id' => $createOrder['orderID'],
                    'affiliate_code' => $affiliate_user->parent_code,
                    'earn_money' => $earn
                ]);
                try {
                    $parent = AffiliateUserModel::where('affiliate_code', $affiliate_user->parent_code)->firstOrFail();
                    AffiliateHistoryModel::create([
                        'user_id' => $parent->user_id,
                        'content' => 'Người dùng <b>#'.$uID.'</b> tạo đơn hàng <b>#'.$createOrder['orderID']. '</b><br> Số tiền sẽ nhận được là <b>'.$earn.'</b>, sau khi đơn hàng được xác nhận thành công.',
                    ]);
                } catch (\Exception $e) {
                    Log::error('Not Found affiliate_code');
                }
            }
        }
        //Set session orderID
        session(['orderID' => $createOrder['orderID']]);

        $paymentMethod = sc_get_class_extension_controller('Payment', session('paymentMethod'));

        return (new $paymentMethod)->processOrder();

    }
}
