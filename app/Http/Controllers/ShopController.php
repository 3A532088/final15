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
    public function clean()
    {

        $a = DB::table('goods')
        ->join('plants', 'id', '=', 'plants.goods_id')
        ->select('goods.goods_name1')
        ->get();
        dd($a); 
        
    }

    public function price($tpye)
    {  
   
        $data = Good::orderBy('price', $tpye)->get();
        return view('Shop', ['goods' => $data]);
    }

}
