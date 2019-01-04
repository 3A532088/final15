<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $orders = Order::where('user_id', $request->user()->id)->get();

        return view('home', [
            'orders' => $orders,
        ]);

     // 取得發表文章的使用者資訊
        $user = $orders->user();
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'address' => 'required|max:255',
        ]);
        $request->user()->orders()->create([
            'address' => $request->address,
        ]);

        return redirect('/orders');
    }


}
