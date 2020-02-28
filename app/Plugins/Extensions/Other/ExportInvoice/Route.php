<?php

use Illuminate\Support\Facades\Route;

Route::group(
    [
        'prefix' => SC_ADMIN_PREFIX,
        'middleware' => SC_ADMIN_MIDDLEWARE,
        'namespace' => 'App\Plugins\Extensions\Other\ExportInvoice\Controllers',
    ], function () {
    Route::prefix('invoice')->group(function () {
        Route::get('order/{id}', 'ExportInvoiceController@order')->name('invoice.order');
        Route::get('withdraw/{withdraw}', 'ExportInvoiceController@withdraw')->name('invoice.withdraw');
    });
});

Route::group(
    [
        'middleware' => 'auth',
        'namespace' => 'App\Plugins\Extensions\Other\ExportInvoice\Controllers',
    ], function () {
    Route::get('print/withdraw/{withdraw}', 'ExportInvoiceController@user_withdraw')->name('affiliate.withdraw.print');
    Route::get('print/order/{id}', 'ExportInvoiceController@user_order')->name('customer.order');
});
