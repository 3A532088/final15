<?php

namespace App\Http\Controllers;
use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use App\Order;
use App\Cart;
use DB;
use Illuminate\Support\Facades\Auth;


class CheckoutController extends Controller
{

    public function index()
    {
    return view ('checkout');
    }
    public function store(Request $request)
    {
        Order::create($request->all());
        DB::table('orders')->update(['users_id'=>Auth::user()->id]);
        return redirect(route ('main.home'));
    }
    public function cartdetail()
    {
       $all = 0;
       $data = Cart::all();
       foreach ($data as $s){
           $all=$all + $s -> total;
       }
       return view('checkout',['checkouts' =>$data ,'a'=>$all]);
    }



}
