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



Route::get('shop/main', ['as' => 'main.shop', 'uses' => 'ShopController@index']);

Route::get('cart', ['as' => 'cart', 'uses' => 'CartController@index']);

//價格排序
Route::get('shopprice/{type}', ['as' => 'sort.shop', 'uses' => 'ShopController@price',function($type){
}]);

//淨化能力篩選
Route::get('shopclean/up', ['as' => 'cleanup.shop', 'uses' => 'ShopController@cleanup',function(){
}]);
Route::get('shopclean/down', ['as' => 'cleandown.shop', 'uses' => 'ShopController@cleandown',function(){
}]);

//滯塵能力篩選
Route::get('shopdust/up', ['as' => 'dustup.shop', 'uses' => 'ShopController@dustup',function(){
}]);
Route::get('shopdust/down', ['as' => 'dustdown.shop', 'uses' => 'ShopController@dustdown',function(){
}]);

//聯絡我們
Route::get('contact', ['as' => 'main.contact', 'uses' => 'ContactController@index']);

//搜尋
Route::get('shop1/{search}', ['as' => 'search.shop', 'uses' => 'ShopController@search',function($search){

}]);

