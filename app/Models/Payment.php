<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $table = 'payments';

    public function order() // note
    {
        return $this->belongsTo('App\Order', 'order_id', 'id');
    }
}
