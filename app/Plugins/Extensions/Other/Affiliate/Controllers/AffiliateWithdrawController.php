<?php


namespace App\Plugins\Extensions\Other\Affiliate\Controllers;

use App\Admin\Admin;
use App\Http\Controllers\Controller;
use App\Http\Controllers\GeneralController;
use App\Mail\SendMail;
use App\Models\ShopUser;
use App\Plugins\Extensions\Other\Affiliate\AppConfig;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateHistoryModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateLevelModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserWithdrawModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateWithdrawModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class AffiliateWithdrawController extends GeneralController
{
    public function index()
    {
        $title = "Thêm tài khoản ngân hàng";
        return view((new AppConfig())->pathPlugin.'::withdraw_info_create', compact('title'));
    }

    public function store(Request $request)
    {
        try {
            AffiliateWithdrawModel::where('user_id', auth()->id())->firstOrFail();
            return redirect()->route('affiliate.withdraw_info.edit');
        } catch (\Exception $e) {
            $request->validate([
                'bank' => 'required|string|max:191',
                'branch' => 'required|string|max:191',
                'card_name' => 'required|string|max:191',
                'card_number' => 'required|string|max:191',
            ]);
            AffiliateWithdrawModel::create(array_merge(['user_id' => auth()->id()],$request->all()));
            return redirect()->route('affiliate.landing')->with('success', 'Thêm tài khoản ngân hàng thành công');
        }
    }

    public function edit()
    {
        $title = "Sửa tài khoản ngân hàng";
        $bank_info = AffiliateWithdrawModel::where('user_id', auth()->id())->first();
        return view((new AppConfig())->pathPlugin.'::withdraw_info_edit', compact('title', 'bank_info'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'bank' => 'required|string|max:191',
            'branch' => 'required|string|max:191',
            'card_name' => 'required|string|max:191',
            'card_number' => 'required|string|max:191',
        ]);
        AffiliateWithdrawModel::where('user_id', auth()->id())->update([
            'bank' => $request->bank,
            'branch' => $request->branch,
            'card_name' => $request->card_name,
            'card_number' => $request->card_number,
        ]);
        return redirect()->route('affiliate.landing')->with('success', 'Cập nhật tài khoản ngân hàng thành công');
    }

    public function withdraw()
    {
        $affiliate_user = AffiliateUserModel::where('user_id', auth()->id())->first();
        if ($affiliate_user->affiliate_money <= get_min_withdraw())
            return back();
        $title = "Tạo lệnh rút tiền";
        return view((new AppConfig())->pathPlugin.'::withdraw_create', compact('title', 'affiliate_user'));
    }

    public function withdraw_store(Request $request)
    {
        $affiliate_user = AffiliateUserModel::where('user_id', auth()->id())->first();
        if ($affiliate_user->affiliate_money <= get_min_withdraw())
            return back();
        $request->validate([
            'money' => [
                'numeric',
                'max:'.$affiliate_user->affiliate_money,
                'min:'.get_min_withdraw()
            ],
        ]);
        $affiliate_user->affiliate_money -= (float)$request->money;
        $affiliate_user->save();
        $wd = AffiliateUserWithdrawModel::create([
            'user_id' => auth()->id(),
            'money' => (float)$request->money,
        ]);
        AffiliateHistoryModel::create([
            'user_id' => auth()->id(),
            'content' => 'Đã tạo lệnh rút tiền <b>'.$wd->id.'</b>. Số tiền <b>'.$request->money.'</b>'
        ]);
        $data = [
            'withdraw' => $wd,
            'user' => auth()->user(),
        ];
        $config = [
            'to' => auth()->user()->email,
            'replyTo' => sc_store('email'),
            'subject' => 'Tạo Lệnh Rút Tiền Thành Công',
        ];
        Mail::send(new SendMail('mail.withdraw_create', $data, $config));
        return redirect()->route('affiliate.landing')->with('success', 'Tạo lệnh rút tiền thành công');
    }
}
