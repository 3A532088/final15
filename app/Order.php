<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use app\User;
class Order extends Model
{
    protected $fillable = ['name'];
    public function user()
    {
        return $this->belongsTo(User::class);
    }


}
