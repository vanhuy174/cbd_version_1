<?php

use App\Models\ShopOrder;
use App\Models\ShopUser;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateOrderModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserWithdrawModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateWithdrawModel;
use App\Plugins\Extensions\Other\ExtCustomer\Models\ExtOrderModel;

if(!function_exists('get_user_name'))
{
    function get_user_name($id)
    {
        try {
            $user = ShopUser::find($id);
            return '<a href="'.route('admin_customer.edit', $user->id).'">#'.$user->id. ' ' .$user->first_name. ' ' .$user->last_name.'</a>';
        } catch (\Exception $e) {
            return 'Tài khoản không tồn tại';
        }
    }
}

if(!function_exists('get_affiliate_name'))
{
    function get_affiliate_name($affiliate_code)
    {
        if (is_null($affiliate_code))
            return null;
        try {
            $a_user = AffiliateUserModel::where('affiliate_code', $affiliate_code)->firstOrFail();
            $user = ShopUser::findOrFail($a_user->user_id);
            return '<a href="'.route('admin_customer.edit', $user->id).'">#'.$user->id. ' ' .$user->first_name. ' ' .$user->last_name.'</a>';
        } catch (\Exception $e) {
            return 'Tài khoản không tồn tại';
        }
    }
}

if(!function_exists('get_affiliate_order'))
{
    function get_affiliate_order($id)
    {
        try {
            $order = ExtOrderModel::findOrFail($id);
            return '<a href="'.route('admin_order.detail', $order->id).'">#'.$order->id. '</a>';
        } catch (\Exception $e) {
            return 'Không tìm thấy đơn hàng';
        }
    }
}

if(!function_exists('get_affiliate_status'))
{
    function get_affiliate_status($status)
    {
        if ($status == (new AffiliateOrderModel())::UNCONFIRM)
            return '<span class="label label-info">Chưa xác nhận</span>';
        if ($status == (new AffiliateOrderModel())::CONFIRM)
            return '<span class="label label-success">Đã xác nhận</span>';
        if ($status == (new AffiliateOrderModel())::CANCEL)
            return '<span class="label label-danger">Đã hủy</span>';
        return '<span class="label">Không tìm thấy</span>';
    }
}

if(!function_exists('get_affiliate_confirm_btn'))
{
    function get_affiliate_confirm_btn($status, $id)
    {
        if ($status != (new AffiliateOrderModel())::UNCONFIRM)
            return '';
        else
            return '<a href="' . route('affiliate.order.confirm', ['id' => $id]) . '" onclick="return confirm(\'Bạn có chắc chắn, Đơn hàng đã xác nhận sẽ không thể thao tác lại!\')">
                    <span title="Xác Nhận" type="button" class="btn btn-flat btn-success">
                    <i class="fa fa-check"></i>
                    </span>
                    </a> <a href="' . route('affiliate.order.cancel', ['id' => $id]) . '" onclick="return confirm(\'Bạn có chắc chắn, Đơn hàng đã hủy sẽ không thể thao tác lại!\')">
                    <span title="Xác Nhận" type="button" class="btn btn-flat btn-danger">
                    <i class="fa fa-times"></i>
                    </span>
                    </a>';
    }
}

if(!function_exists('get_withdraw_status'))
{
    function get_withdraw_status($status)
    {
        if ($status == (new AffiliateUserWithdrawModel())::UNCOMFIRM)
            return '<span class="label label-info">Chưa xác nhận</span>';
        if ($status == (new AffiliateUserWithdrawModel())::COMFIRM)
            return '<span class="label label-success">Đã xác nhận</span>';
        if ($status == (new AffiliateUserWithdrawModel())::CANCEL)
            return '<span class="label label-danger">Đã hủy</span>';

        return '<span class="label">Không có thông tin</span>';
    }
}

if(!function_exists('can_affiliate_code'))
{
    function can_affiliate_code()
    {
        try {
            ShopOrder::where([
                'user_id' => auth()->id(),
                'status' => 5
            ])->firstOrFail();
            return true;
        } catch (\Exception $e) {
            return false;
        }
    }
}

if(!function_exists('get_withdraw_confirm_btn'))
{
    function get_withdraw_confirm_btn($status, $withdraw_id)
    {
        if ($status == (new AffiliateUserWithdrawModel())::UNCOMFIRM) {
            return '<a href="' . route('admin.withdraw.confirm', ['withdraw' => $withdraw_id]) . '">
                    <span title="Xác Nhận" type="button" class="btn btn-flat btn-success">
                    <i class="fa fa-check"></i>
                    </span>
                    </a>  <a href="' . route('admin.withdraw.cancel', ['withdraw' => $withdraw_id]) . '" onclick="return confirm(\'Bạn có chắc chắn, Hủy sẽ không thể thao tác lại!\')">
                    <span title="Hủy" type="button" class="btn btn-flat btn-danger">
                    <i class="fa fa-times"></i>
                    </span>
                    </a>';
        } else {
            return '';
        }
    }
}

if(!function_exists('get_affiliate_percent'))
{
    function get_affiliate_percent()
    {
        try {
            return AffiliateModel::first()->percent.'%';
        } catch (\Exception $e) {
            return '0%';
        }
    }
}

if(!function_exists('get_min_withdraw'))
{
    function get_min_withdraw()
    {
        try {
            return AffiliateModel::first()->min_withdraw;
        } catch (\Exception $e) {
            return '0';
        }
    }
}

if(!function_exists('get_withdraw_info'))
{
    function get_withdraw_info()
    {
        try {
            return AffiliateWithdrawModel::where('user_id', auth()->id())->firstOrFail();
        } catch (\Exception $e) {
            return false;
        }
    }
}

if(!function_exists('get_vn_banks'))
{
    function get_vn_banks()
    {
        return [
            "Ngân hàng An Bình - ABBANK",
            "Ngân hàng Á Châu - ACB",
            "Ngân hàng NN&PT Nông thôn Việt Nam - Agribank",
            "Ngân hàng ANZ Việt Nam - ANZVL",
            "Ngân hàng Bắc Á - Bac A Bank",
            "Ngân hàng Bảo Việt - BAOVIET Bank",
            "Ngân hàng Đầu tư và Phát triển Việt Nam - BIDV",
            "Ngân hàng Xây dựng - CB","Ngân hàng CIMB Việt Nam - CIMB",
            "Ngân hàng Hợp tác xã Việt Nam - Co-opBank",
            "Ngân hàng Đông Á - DongA Bank",
            "Ngân hàng Xuất Nhập Khẩu - Eximbank",
            "Ngân hàng Dầu khí toàn cầu - GPBank",
            "Ngân hàng Phát triển TPHồ Chí Minh - HDBank",
            "Ngân hàng Hong Leong Việt Nam - HLBVN",
            "Ngân hàng HSBC Việt Nam - HSBC",
            "Ngân hàng Indovina - IVB",
            "Ngân hàng Kiên Long - Kienlongbank",
            "Ngân hàng Bưu điện Liên Việt - LienVietPostBank",
            "Ngân hàng Quân Đội - MB",
            "Ngân hàng Hàng Hải - MSB",
            "Ngân hàng Nam Á - Nam A Bank",
            "Ngân hàng Quốc dân - NCB",
            "Ngân hàng Phương Đông - OCB",
            "Ngân hàng Đại Dương - OceanBank",
            "Ngân hàng Public Bank Việt Nam - PBVN",
            "Ngân hàng Xăng dầu Petrolimex - PG Bank",
            "Ngân hàng Đại Chúng Việt Nam - PVcomBank",
            "Ngân hàng Sài Gòn Thương Tín - Sacombank",
            "Ngân hàng Sài Gòn Công Thương - SAIGONBANK",
            "Ngân hàng Sài Gòn - SCB",
            "Ngân hàng Standard Chartered Việt Nam - SCBVL",
            "Ngân hàng Đông Nam Á - SeABank",
            "Ngân hàng Sài Gòn – Hà Nội - SHB",
            "Ngân hàng Shinhan Việt Nam - SHBVN",
            "Ngân hàng Kỹ Thương - Techcombank",
            "Ngân hàng Tiên Phong - TPBank",
            "Ngân hàng UOB Việt Nam - UOB",
            "Ngân hàng Chính sách xã hội Việt Nam - VBSP",
            "Ngân hàng Phát triển Việt Nam - VDB",
            "Ngân hàng Quốc Tế - VIB",
            "Ngân hàng Bản Việt - Viet Capital Bank",
            "Ngân hàng Việt Á - VietABank",
            "Ngân hàng Việt Nam Thương Tín - Vietbank",
            "Ngân hàng Ngoại Thương Việt Nam - Vietcombank",
            "Ngân hàng Công thương Việt Nam - VietinBank",
            "Ngân hàng Việt Nam Thịnh Vượng - VPBank",
            "Ngân hàng Việt – Nga - VRB",
            "Ngân hàng Woori Việt Nam - Woori",
        ];
    }
}

if(!function_exists('get_user_address'))
{
    function get_user_address($user)
    {
        return $user->address. ', ' . $user->ward. ', '. $user->district. ', '. $user->province. ', '. ', '. $user->country. ', ';
    }
}
