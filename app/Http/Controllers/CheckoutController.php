<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Cart;
use App\Order;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{
    public function store(Request $request)
    {
        Order::create($request->all());
        return redirect()->route('main.user');
    }

    public function cartdetail()
    {
        $all = 0;
        $data = DB::table('carts')
            ->where('users_id',Auth::user()->id)
            ->get();
        foreach ($data as $s){
            $all = $all + $s->total;
        }
        return view('checkout', ['checkouts' => $data,'a' =>$all]);
    }
}
