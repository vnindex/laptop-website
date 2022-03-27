<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    protected $table = 'coupons';
    protected $fillable=['name','code','quantity','amount','type'];

    public static function findByCode($code){
        return self::where('code',$code)->first();
    }
    
}
