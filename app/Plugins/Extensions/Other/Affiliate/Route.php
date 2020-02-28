<?php

use Illuminate\Support\Facades\Route;

Route::group(
    [
        'prefix' => SC_ADMIN_PREFIX,
        'middleware' => SC_ADMIN_MIDDLEWARE,
        'namespace' => 'App\Plugins\Extensions\Other\Affiliate\Controllers',
    ], function () {
    Route::prefix('affiliate')->group(function () {
        Route::prefix('user')->group(function () {
            Route::get('/', 'AffiliateUserController@index')->name('affiliate.user.index');
            Route::get('detail/{user_id}', 'AffiliateUserController@detail')->name('affiliate.user.detail');
        });
        Route::prefix('order')->group(function () {
            Route::get('/', 'AffiliateOrderController@index')->name('affiliate.order.index');
            Route::get('confirm/{id}', 'AffiliateOrderController@confirm')->name('affiliate.order.confirm');
            Route::get('cancel/{id}', 'AffiliateOrderController@cancel')->name('affiliate.order.cancel');
        });
        Route::prefix('user_withdraw')->group(function () {
            Route::get('/', 'UserWithdrawController@index')->name('affiliate.user_withdraw.index');
            Route::get('confirm/{withdraw}', 'UserWithdrawController@pre_confirm')->name('admin.withdraw.confirm');
            Route::post('confirm/{withdraw}', 'UserWithdrawController@confirm')->name('admin.withdraw.confirm');
            Route::get('cancel/{withdraw}', 'UserWithdrawController@cancel')->name('admin.withdraw.cancel');
        });
    });
});

Route::group(
    [
        'middleware' => 'auth',
        'namespace' => 'App\Plugins\Extensions\Other\Affiliate\Controllers',
    ], function () {
    Route::get('affiliate', 'AffiliateController@landing')->name('affiliate.landing');
    Route::get('withdraw', 'AffiliateWithdrawController@withdraw')->name('affiliate.withdraw');
    Route::get('bank/create', 'AffiliateWithdrawController@index')->name('affiliate.withdraw_info.index');
    Route::get('bank/edit', 'AffiliateWithdrawController@edit')->name('affiliate.withdraw_info.edit');
    Route::post('bank/store', 'AffiliateWithdrawController@store')->name('affiliate.withdraw_info.store');
    Route::post('bank/update', 'AffiliateWithdrawController@update')->name('affiliate.withdraw_info.update');
    Route::post('withdraw/create', 'AffiliateWithdrawController@withdraw_store')->name('affiliate.withdraw.store');
    Route::get('create_affiliate_code', 'AffiliateController@create_affiliate_code')->name('create_affiliate_code');
});

Route::group(
    [
        'namespace' => 'App\Plugins\Extensions\Other\Affiliate\Controllers',
    ], function () {
    Route::get('gioi-thieu-mua-hang/{affiliate_code}', 'AffiliateController@index')->name('affiliate');
    Route::post('order_add', 'ExShopCartController@addOrder')->name('order.add');
    Route::post('checkout_prepare', 'ExShopCartController@processCart')->name('cart.process');
    Route::get('cart.html', 'ExShopCartController@getCart')->name('cart');
});
