<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});
Route::get('home',['as'=>'main.home',function(){
    return view('index');
}]);



Route::get('shop', ['as' => 'main.shop', 'uses' => 'ShopController@index']);

Route::get('shop/{type}', ['as' => 'sort.shop', 'uses' => 'ShopController@price',function($type){
}]);

//淨化力篩選
Route::get('shopcleanup', ['as' => 'cleanup.shop', 'uses' => 'ShopController@cleanup',function(){
}]);
Route::get('shopcleandown', ['as' => 'cleandown.shop', 'uses' => 'ShopController@cleandown',function(){
}]);

//
Route::get('shopdustup', ['as' => 'dustup.shop', 'uses' => 'ShopController@dustup',function(){
}]);


Route::get('contact', ['as' => 'main.contact', 'uses' => 'ContactController@show']);


