<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Good;
use Redirect;
use App\Cart;
use DB;

class CartController extends Controller
{

    
    public function index()
    {
        $data = Cart::all();
        return view('cart',['carts' => $data]);
    }

    public function add($id)
    {
        $good = DB::table('goods')->where('id', $id)->value('goods_name2');
        $photo = DB::table('goods')->where('id', $id)->value('photo1');
        $price = DB::table('goods')->where('id', $id)->value('price');
        DB::table('carts')->insert(
             [
                'photo' => $photo,
                'product' => $good,
                'cost' => $price,
                'total' => 2 * $price
             ]
        );
        return Redirect::to(url()->previous());
    }
}
