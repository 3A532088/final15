<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Good;
use App\Plant;
use DB;
class ShopController extends Controller
{
    public function show()
    {
        return view('shop');
    }

    public function index()
    {
        $data = Good::all();
        return view('Shop', ['goods' => $data]);
    }
    public function cleanup()
    {

        $data = DB::table('goods')
        ->join('plants', 'goods.id', '=', 'plants.goods_id')
        ->where('cleanup','>',5)
        ->get();
        return view('Shop', ['goods' => $data]);
        
    }
    public function cleandown()
    {

        $data = DB::table('goods')
        ->join('plants', 'goods.id', '=', 'plants.goods_id')
        ->where('cleanup','<',6)
        ->get();
        return view('Shop', ['goods' => $data]);
        
    }
    public function price($tpye)
    {  
   
        $data = Good::orderBy('price', $tpye)->get();
        return view('Shop', ['goods' => $data]);
    }

}
