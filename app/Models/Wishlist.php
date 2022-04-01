<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    // protected $fillable=['user_id','product_id','price','amount','quantity'];
    protected $fillable=['user_id','product_id','cart_id','price','amount','quantity'];

    public function product(){
        return $this->belongsTo('App\Models\Product','product_id');
    }

    public function user(){
        return $this->belongsTo('App\User','user_id');
    }
}
