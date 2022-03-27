<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';

    public function customer()
    {
        return $this->belongsTo('App\Customer', 'customer_id', 'id');
    }

    public function shipping()
    {
        return $this->belongsTo('App\Shipping', 'shipping_id', 'id');
    }

    public function payment()
    {
        return $this->hasMany('App\Payment', 'order_id', 'id'); // note
    }

    public function order_details()
    {
        return $this->hasMany('App\OrderDetail', 'order_id', 'id');
    }
}
