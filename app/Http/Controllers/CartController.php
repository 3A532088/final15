<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect;
use App\Cart;
use DB;

class CartController extends Controller
{

    
    public function index()
    {
        $all = 0;
        $data = Cart::all();
        foreach ($data as $s){
            $all = $all + $s->total;
        }
        return view('cart',['carts' => $data,'a' =>$all]);
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
                'total' => $price
             ]
        );
        return Redirect::to(url()->previous());
    }

    public function update($id,$q)
    {
        $cost = DB::table('carts')->where('id', $id)->value('cost');
        DB::table('carts')
        ->where('id', $id)
        ->update([
            'qty' => $q,
            'total' => $cost * $q
        ]);
        return redirect()->route('cart');

    }


    public function delete($id)
    {
        Cart::destroy($id);
        return redirect()->route('cart');
    }
}
