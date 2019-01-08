
<!DOCTYPE html>
<html lang="en">
@extends('layouts.master')
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="chrome">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>室內植物盆栽訂購系統</title>

    <!-- Favicon  -->
    <link rel="icon" href="../img/core-img/plant.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="../css/core-style.css">
    <link rel="stylesheet" href="../style.css">


</head>

<div class="breadcumb_area  bg-img" style="background-image: url(img/bg-img/test4.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2>USER</h2>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="container">


    <div class="row justify-content-center">

        <div class="col-md-8">
            <div class="clearfix mr-50 mt-50 mb-50">
            </div>

            <div class="card">
                <div class="card-header"style="text-align:center">{{ __('個人資料') }}</div>


                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    會員名稱：{{ Auth::user()->name }} <span class="caret"></span><br>
                    電子信箱：{{ Auth::user()->email }} <span class="caret"></span><br>
                    手機號碼：{{ Auth::user()->cellphone }} <span class="caret"></span><br>
                </div>


                <div class="card-body" aria-labelledby="navbarDropdown">
                    <a class="card-body" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                       document.getElementById('logout-form').submit();">
                        {{ __('登出') }}
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>


<div class="container">


    <div class="row justify-content-center">

        <div class="col-md-8">
            <div class="clearfix mr-50 mt-50 mb-50">
            </div>

            <div class="card">
                <div class="card-header"style="text-align:center">{{ __('訂單資料') }}</div>


                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <div class="row">

                        @foreach ($orders as $order)
                            <!-- Single Product -->
                                <div class="contact-info">
                                    <div class="single-product-wrapper text-align:center">
                                        <div style="float:left  ; " width="50%">
                                            購買時間：{{$order->created_at}}
                                        <table class="table" border="0">
                                            <tr bgcolor="#eeeeee">
                                                　<td width="94" align="center" >收件人姓名</td>
                                                　<td width="80" align="center">郵遞區號</td>
                                                　<td width="70" align="center">手機號碼</td>
                                                　<td width="200" align="center">地址</td>
                                            </tr>
                                            <tr>
                                                　<td width="94" align="center">{{$order->name}}</td>
                                                　<td width="80" align="center">{{$order->postcode}}</td>
                                                　<td width="70" align="center">{{$order->ph_number}}</td>
                                                　<td width="200" align="center">{{$order->address}}</td>
                                            </tr>
                                        </table>
                                        </div>
                                        <div style="float:right" width="50%">
                                        <table class="table mt-21" border="0">
                                            <tr bgcolor="#f5f5f5">
                                                <td width="66" align="center">商品</td>
                                                <td width="52" align="center">單價</td>
                                                <td width="52" align="center">數量</td>
                                                <td width="52" align="center">總計</td>
                                            </tr>
                                            @foreach ($ordersdetails as $ordersdetail)
                                                @if($ordersdetail->orders_id == $order->id)
                                            <tr>
                                                <td width="66" align="center">{{$ordersdetail->product}}</td>
                                                <td width="52" align="center">{{$ordersdetail->cost}}</td>
                                                <td width="52" align="center">{{$ordersdetail->qty}}</td>
                                                <td width="52" align="center">{{$ordersdetail->total}}</td>
                                            </tr>
                                                @endif
                                            @endforeach
                                        </table>
                                        </div>


                                    </div>

                                </div>
                        @endforeach
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>





<div class="clearfix mr-50 mt-50 mb-50">
</div>


</html>