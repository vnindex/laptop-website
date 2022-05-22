<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Checkout extends Model
{
    protected $table = 'ChiTietHoaDon';
    protected $primaryKey = 'check_id';
    protected $fillable = [
        'order_id',
        'pro_id',
        'quantity',
        'total_price',
    ];

    public function order()
    {
        return $this->belongsTo(Order::class, 'order_id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'pro_id');
    }
}
