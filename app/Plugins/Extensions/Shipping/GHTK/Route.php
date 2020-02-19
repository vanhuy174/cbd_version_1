<?php

use Illuminate\Support\Facades\Route;

Route::group(
    [
        'prefix' => SC_ADMIN_PREFIX,
        'middleware' => SC_ADMIN_MIDDLEWARE,
        'namespace' => 'App\Plugins\Extensions\Shipping\GHTK\Controllers',
    ], function () {
    Route::prefix('ghtk_warehouses')->group(function () {
        Route::get('/', 'GHTKWarehouseController@index')->name('ghtk.warehouses.index');
        Route::get('create', 'GHTKWarehouseController@create')->name('ghtk.warehouses.create');
        Route::post('store', 'GHTKWarehouseController@store')->name('ghtk.warehouses.store');
        Route::get('edit/{id}', 'GHTKWarehouseController@edit')->name('ghtk.warehouses.edit');
        Route::post('edit/{id}', 'GHTKWarehouseController@update')->name('ghtk.warehouses.update');
        Route::post('delete', 'GHTKWarehouseController@destroy')->name('ghtk.warehouses.delete');
    });
    Route::get('order/detail/{id}', 'GHTKController@detail')->name('admin_order.detail');
    Route::get('ghtk/order/create/{id}', 'GHTKController@ghtk_order')->name('ghtk.order.create');
    Route::post('ghtk/order/create/{id}', 'GHTKWebserviceController@create_order')->name('ghtk.order.send');
    Route::get('ghtk/order/print/{id}', 'GHTKWebserviceController@ghtk_order_print')->name('ghtk.order.print');
    Route::get('ghtk/order/cancel/{id}', 'GHTKWebserviceController@ghtk_order_cancel')->name('ghtk.order.cancel');
});
