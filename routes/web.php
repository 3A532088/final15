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
Route::get('index',['as'=>'main.home',function(){
    return view('index');
}]);
Route::get('home',['as'=>'main.user',function(){
    return view('home');
}]);


Route::get('home',['as'=>'main.user','uses' => 'OrderController@index',function(){
    return view('home');
}]);
//使用者
Route::auth();

//訂單
Route::post('/order', 'OrderController@store');

//顯示商品頁面
Route::get('shop/main', ['as' => 'main.shop', 'uses' => 'ShopController@index']);

//顯示購物車頁面
Route::get('cart', ['as' => 'cart', 'uses' => 'CartController@index']);

//購物車商品新增
Route::get('cart/{id}', ['as' => 'cart.add', 'uses' => 'CartController@add',function($id){
}]);

//購物車數量修改
Route::get('cart/{id}/{q}', ['as' => 'cart.update', 'uses' => 'CartController@update',function($id,$q){
}]);

//購物車項目刪除
Route::delete('cart/{id}',['as'=>'cart.delete','uses'=>'CartController@delete',function($id){
}]);

//顯示商品詳細資訊頁面
Route::get('detail/{id}', ['as' => 'detail', 'uses' => 'ShopDetailController@index',function($id){

}]);

//價格排序
Route::get('shopprice/{type}', ['as' => 'sort.shop', 'uses' => 'ShopController@price',function($type){
}]);


//淨化能力篩選
Route::get('shop/cleanup', ['as' => 'cleanup.shop', 'uses' => 'ShopController@cleanup',function(){
}]);
Route::get('shop/cleandown', ['as' => 'cleandown.shop', 'uses' => 'ShopController@cleandown',function(){
}]);

//滯塵能力篩選
Route::get('shop/dustup', ['as' => 'dustup.shop', 'uses' => 'ShopController@dustup',function(){
}]);
Route::get('shop/dustdown', ['as' => 'dustdown.shop', 'uses' => 'ShopController@dustdown',function(){
}]);

//聯絡我們
Route::get('contact', ['as' => 'main.contact', 'uses' => 'ContactController@index']);

//植物新聞
Route::get('news', ['as' => 'main.news', 'uses' => 'NewsController@index']);
Route::get('news/detail', ['as' => 'news.detail', 'uses' => 'NewsDetailController@news']);


//搜尋
Route::post('/shop/search',['as'=> 'search','uses'=>'ShopController@search']);



//checkout
Route::get('checkout',['as'=> 'checkout','uses'=>'CheckoutController@cartdetail']);

Route::post('/orders',['as'=> 'orders.store','uses'=>'CheckoutController@store',function(Request $request){
}]);


