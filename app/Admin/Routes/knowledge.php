<?php
$router->group(['prefix' => 'knowledge'], function ($router) {
    $router->get('/', 'ShopknowledgesController@index')->name('admin_knowledges.index');
    $router->get('create', 'ShopknowledgesController@create')->name('admin_knowledges.create');
    $router->post('/create', 'ShopknowledgesController@postCreate')->name('admin_knowledges.create');
    $router->get('/edit/{id}', 'ShopknowledgesController@edit')->name('admin_knowledges.edit');
    $router->post('/edit/{id}', 'ShopknowledgesController@postEdit')->name('admin_knowledges.edit');
    $router->post('/delete', 'ShopknowledgesController@deleteList')->name('admin_knowledges.delete');
});
