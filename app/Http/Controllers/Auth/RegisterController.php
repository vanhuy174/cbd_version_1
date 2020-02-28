<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\GeneralController;
use App\Models\ShopEmailTemplate;
use App\Models\ShopUser;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateHistoryModel;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateUserModel;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class RegisterController extends GeneralController
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
     */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    // protected $redirectTo = '/home';
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        $validate = [
            'reg_first_name' => 'required|string|max:100',
            'reg_email' => 'required|string|email|max:255|unique:' . (new ShopUser)->getTable() . ',email',
            'reg_password' => 'required|string|min:6|confirmed',
        ];

        return Validator::make($data, $validate);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\ShopUser
     */
    protected function create(array $data)
    {
        $dataMap = [
            'first_name' => $data['reg_first_name'],
            'email' => $data['reg_email'],
            'password' => bcrypt($data['reg_password']),
        ];

        $user = ShopUser::createCustomer($dataMap);
        if (Session::has('affiliate_code')) {
            try {
                AffiliateUserModel::where('user_id', $user->id)->firstOrFail();
            } catch (\Exception $e) {
                AffiliateUserModel::create([
                    'user_id' =>  $user->id,
                    'parent_code' => session('affiliate_code'),
                ]);
                try {
                    $parent = AffiliateUserModel::where('affiliate_code', session('affiliate_code'))->firstOrFail();
                    AffiliateHistoryModel::create([
                        'user_id' => $parent->user_id,
                        'content' => 'Người dùng <b>#'.$user->id.'</b> đã đăng ký với mã affiliate  <b>'.session('affiliate_code'),
                    ]);
                } catch (\Exception $e) {
                    Log::error('Not Found affiliate_code');
                }
            }
        } else {
            AffiliateUserModel::create([
                'user_id' =>  $user->id
            ]);
        }

        if ($user) {
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
                        $dataMap['first_name'],
                        $dataMap['email'],
                        $data['reg_password'],
                    ];
                    $content = preg_replace($dataFind, $dataReplace, $content);
                    $data_mail = [
                        'content' => $content,
                    ];

                    $config = [
                        'to' => $data['reg_email'],
                        'subject' => trans('email.welcome_customer.title'),
                    ];

                    sc_send_mail('mail.welcome_customer', $data_mail, $config, []);
                }

            }
        }
        return $user;
    }
    public function showRegistrationForm()
    {
        return redirect()->route('register');
        // return view('auth.register');
    }

    protected function registered(Request $request, $user)
    {
        redirect()->route('home')->with(['message' => trans('account.register_success')]);
    }
}
