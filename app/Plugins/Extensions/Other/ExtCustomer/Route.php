<?php

use Illuminate\Support\Facades\Route;

Route::group(
    [
        'prefix' => SC_ADMIN_PREFIX,
        'middleware' => SC_ADMIN_MIDDLEWARE,
        'namespace' => 'App\Plugins\Extensions\Other\ExtCustomer\Controllers',
    ], function () {
    Route::prefix('customer')->group(function () {
        Route::get('/', 'ExtCustomerController@index')->name('admin_customer.index');
        Route::get('create', 'ExtCustomerController@create')->name('admin_customer.create');
        Route::post('create', 'ExtCustomerController@store')->name('admin_customer.create');
        Route::get('edit/{id}', 'ExtCustomerController@edit')->name('admin_customer.edit');
        Route::post('edit/{id}', 'ExtCustomerController@update')->name('admin_customer.edit');
    });
});
