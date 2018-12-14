<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use \App\Good;
class Plant extends Model
{
    protected $table ='plants';
    

    
    Public function goods()
    {
        return $this->belongsTo('App\Good');
    }
}
