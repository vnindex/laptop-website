<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments';

    protected $fillable=['customer_id','product_id','comment','replied_comment','parent_id','status'];


    public function user_info(){
        return $this->hasOne('App\Customer','id','customer_id');
    }
    public static function getAllComments(){
        return Comment::with('user_info')->paginate(10);
    }

    // public static function getAllUserComments(){
    //     return Comment::where('customer_id',auth()->customer()->id)->with('user_info')->paginate(10);
    // }

    public function customer()
    {
        return $this->belongsTo('App\Customer', 'customer_id', 'id');
    }

    public function product()
    {
        return $this->belongsTo('App\Product', 'product_id', 'id');
    }

    public function replies(){
        return $this->hasMany(Comment::class,'parent_id');
    }
}
