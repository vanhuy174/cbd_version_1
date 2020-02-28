<?php
    Route::get('/knowledges', 'CBDController@knowledge')
        ->name('knowledge');
    Route::get('/knowledges/'.$prefixNews.'/{alias}'.$suffix, 'CBDController@knowledgeDetail')
        ->name('knowledges.detail');
