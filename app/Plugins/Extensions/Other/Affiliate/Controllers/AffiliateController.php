<?php


namespace App\Plugins\Extensions\Other\Affiliate\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Controllers\GeneralController;
use App\Models\ShopOrder;
use App\Plugins\Extensions\Other\Affiliate\AppConfig;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserWithdrawModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AffiliateController extends GeneralController
{
    public function index($affiliate_code)
    {
        session(['affiliate_code' => $affiliate_code]);
        return redirect()->route('home');
    }

    public function landing()
    {
        $affiliate_user = AffiliateUserModel::where('user_id', auth()->id())->first();
        $childs = [];
        if (!is_null($affiliate_user->affiliate_code))
            $childs = AffiliateUserModel::where('parent_code', $affiliate_user->affiliate_code)->with('user')->orderBy('id', 'desc')->get();
        $title = 'Tham gia tích đổi đổi thưởng';
        $withdraws = AffiliateUserWithdrawModel::where('user_id', auth()->id())->get();
        return view((new AppConfig())->pathPlugin.'::affiliate_create',
            compact('affiliate_user', 'title', 'childs', 'withdraws'));
    }

    public function create_affiliate_code()
    {
            if (can_affiliate_code()) {
                AffiliateUserModel::where('user_id', auth()->id())->update([
                    'affiliate_code' => auth()->id().time()
                ]);
                return back()->with('success', 'Tạo mã giới thiệu thành công!');
            } else {
                return back()->with('error', 'Tạo mã giới thiệu thất bại! Hãy hoàn thành đơn hàng đầu tiên và thử lại.');
            }
    }
}
