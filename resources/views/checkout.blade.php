<!DOCTYPE html>
@extends('layouts.master')
<html lang="en">

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

<body>



    <!-- ##### Checkout Area Start ##### -->
    <div class="checkout_area section-padding-80">
        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-page-heading mb-30">
                            <h5>帳單地址</h5>
                        </div>

                        <form action="checkout" method="post">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-md-6 mb-3">

                                    <label for="name">名字 <span>*</span></label>
                                    <input type="text" class="form-control" id="name"  required>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="check_address">地址 <span>*</span></label>
                                    <input type="text" class="form-control mb-3" id="check_address" value="">

                                </div>
                                <div class="col-12 mb-3">
                                    <label for="postcode">郵遞區號 <span>*</span></label>
                                    <input type="text" class="form-control" id="postcode" value="">
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="phone_number">電話號碼 <span>*</span></label>
                                    <input type="number" class="form-control" id="phone_number" min="0" value="">
                                </div>

                                <div class="col-12">

                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-5 ml-lg-auto">
                    <div class="order-details-confirmation">

                        <div class="cart-page-heading">
                            <h5>訂單明細</h5>
                        </div>

                        <ul class="order-details-form mb-4">
                            <li><span>商品</span> <span>Total</span></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Checkout Area End ##### -->



</body>
<div class="container" align="center">
<a href="checkout" class="btn essence-btn">結帳</a>
    </div>
<div class="clearfix mr-50 mt-50 mb-50">
</div>
</html>