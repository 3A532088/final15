<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Good;
use Redirect;


class CartController extends Controller
{

    
    public function index($id)
    {
        static $data = array();
        $good = Good::where('id',$id)->get();
        array_push($data,$good);
        return view('cart',['carts'=>$data]);
        //return Redirect::to(url()->previous());
    }

    public function show()
    {

    }
}
