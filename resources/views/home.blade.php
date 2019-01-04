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
                <div class="card-header"style="text-align:center">{{ __('個人資料') }}</div>


                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <div class="row">

                        @foreach ($orders as $order)
                            <!-- Single Product -->
                                <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="single-product-wrapper">
                                     <span>{{$order->name}}</span>
                                        <span>{{$order->postcode}}</span>
                                        <span>{{$order->ph_number}}</span>
                                        <span>{{$order->address}}</span>
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