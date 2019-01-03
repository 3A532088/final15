<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    public function store(PostRequest $request)
    {
        Post::create($request->all());
        return redirect()->route('shop.blade.php');
    }
}
