<!DOCTYPE HTML>
@extends('layouts.master')
<html>
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
	<div class="breadcumb_area bg-img" style="background-image: url(../img/core-img/cartbp.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="page-title text-center">
                        <h2>cart</h2>
                    </div>
                </div>
            </div>
        </div>
	</div>



		<center> 
		<table>
        <tr>
        <td width="200" align="center" valign="center">
			<div class="product-left">
			    <h5></h5>
			</div>
		</td>
		<td width="300" align="center" valign="center">
			<div class="product-right">
				<h5>Product Name</h5>
			</div>
		</td>
		<td width="20" align="center" valign="center">
				<h5>Prcie</h5>
		</td>
		<td width="200" align="center" valign="center">
			<div class="product-right1">
			    <h5>Quantity</h5>
			</div>
		</td>
		<td width="200" align="center" valign="center">
			<div class="product-right1">
			    <h5>Total</h5>
			</div>
		</td>
		<td width="200" align="center" valign="center">
			
		</td>
		</tr>
		@for ($i=0; $i <2 ; $i++) 
            　	   <tr>
        <td width="200" align="center" valign="center">
			<div class="product-left">
				<img src="../img/product-img/product_1.jpg">
			</div>
		</td>
		<td width="300" align="center" valign="center">
			<div class="product-right">
				<h6>常春藤</h6>

			</div>
		</td>
		<td width="200" align="center" valign="center">
			<div class="product-right1">
				<h6>$ 290<h6>
				<div class="close"> </div>
			</div>
		</td>
		<td width="100" align="center" valign="center">
			<div class="product-middle">
				<select class="sel">
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
					<option value="">4</option>
					<option value="">5</option>
				</select>
			</div>
		</td>
		<td width="200" align="center" valign="center">
			<div class="product-right1">
				<h6>$ 290<h6>
				<div class="close"> </div>
			</div>
		</td>
		<td width="200" align="center" valign="center">
			<div class="clear">
                    <a href="#"><img src="{{asset('/img/core-img/close.png')}}" alt=""></a>
             </div>
		</td>
		</tr>
		@endfor
　	   <tr>
        <td width="200" align="center" valign="center">
			<div class="product-left">
				<img src="../img/product-img/product_1.jpg">
			</div>
		</td>
		<td width="300" align="center" valign="center">
			<div class="product-right">
				<h6>常春藤</h6>

			</div>
		</td>
		<td width="200" align="center" valign="center">
			<div class="product-right1">
				<h6>$ 290<h6>
				<div class="close"> </div>
			</div>
		</td>
		<td width="100" align="center" valign="center">
			<div class="product-middle">
				<select class="sel">
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
					<option value="">4</option>
					<option value="">5</option>
				</select>
			</div>
		</td>
		<td width="200" align="center" valign="center">
			<div class="product-right1">
				<h6>$ 290<h6>
				<div class="close"> </div>
			</div>
		</td>
		<td width="200" align="center" valign="center">
			<div class="clear">
                    <a href="#"><img src="{{asset('/img/core-img/close.png')}}" alt=""></a>
             </div>
		</td>
		</tr>
		</table>
		</center>




</body>
</html>