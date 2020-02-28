<?php

namespace App\Plugins\Extensions\Other\ExportInvoice\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ShopOrder;
use App\Models\ShopUser;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserExchangeModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserWithdrawModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateWithdrawModel;
use App\Plugins\Extensions\Other\ExportInvoice\AppConfig;
use Illuminate\Http\Request;

class ExportInvoiceController extends Controller
{
    public function order($id)
    {
        $order = ShopOrder::findOrFail($id);
        return view((new AppConfig())->pathPlugin.'::order_invoice', compact('order'));
    }

    public function withdraw(AffiliateUserWithdrawModel $withdraw)
    {
        $user = ShopUser::find($withdraw->user_id);
        return view((new AppConfig())->pathPlugin.'::withdraw_invoice', compact('withdraw', 'user'));
    }

    public function user_order($id)
    {
        $order = ShopOrder::findOrFail($id);
        if ($order->user_id != auth()->id())
            abort(403);
        return view((new AppConfig())->pathPlugin.'::order_invoice', compact('order'));
    }

    public function user_withdraw(AffiliateUserWithdrawModel $withdraw)
    {
        if ($withdraw->user_id != auth()->id())
            abort(403);
        $user = ShopUser::find($withdraw->user_id);
        return view((new AppConfig())->pathPlugin.'::withdraw_invoice', compact('withdraw', 'user'));
    }
}
