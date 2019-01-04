<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Order extends Model
{
    protected $table = 'orders';


    protected $fillable = [
        'address',
        'quantity',
        'total_money',
        'created_at',
        'updated_at',
        'mail_number',
        'cellphone',
        'updated_at',
        'username',
    ];


}
