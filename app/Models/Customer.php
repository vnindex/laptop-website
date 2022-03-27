<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table = 'customers';

    public function orders()
    {
        return $this->hasMany('App\Order', 'customer_id', 'id');
    }

    public function shipping()
    {
        return $this->belongsTo('App\Shipping','shipping_id', 'id');
    }
}
