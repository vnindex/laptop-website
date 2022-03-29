<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $fillable=['user_id','code','total_price','shipping_fee','coupon','status','notes','first_name','last_name','address','phone','email','payment_method','payment_status','shipping_id'];

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function shipping()
    {
        return $this->belongsTo('App\Models\Shipping', 'shipping_id', 'id');
    }

    public function payment()
    {
        return $this->hasMany('App\Models\Payment', 'order_id', 'id'); // note
    }

    public function order_details()
    {
        return $this->hasMany('App\Models\OrderDetail', 'order_id', 'id');
    }


    public static function getAllOrder($id){
        return Order::with('order_details')->find($id);
    }
    public static function countActiveOrder(){
        $data=Order::count();
        if($data){
            return $data;
        }
        return 0;
    }
}
