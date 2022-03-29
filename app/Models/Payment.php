<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $table = 'payments';

    public function order() // note
    {
        return $this->belongsTo('App\Models\Order', 'order_id', 'id');
    }

    public static function countActivePayment(){
        $data=Category::where('status','active')->count();
        if($data){
            return $data;
        }
        return 0;
    }
}
