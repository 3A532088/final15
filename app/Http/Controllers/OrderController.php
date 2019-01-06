<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $orders = Order::where('users_id',Auth::user()->id)->get();

        return view('home',['orders' => $orders]);

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
