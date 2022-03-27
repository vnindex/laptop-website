<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments';

    protected $fillable=['user_id','product_id','comment','replied_comment','parent_id','status'];


    public function user_info(){
        return $this->hasOne('App\User','id','user_id');
    }
    public static function getAllComments(){
        return Comment::with('user_info')->paginate(10);
    }

    // public static function getAllUserComments(){
    //     return Comment::where('user_id',auth()->user()->id)->with('user_info')->paginate(10);
    // }

    public function user()
    {
        return $this->belongsTo('App\user', 'user_id', 'id');
    }

    public function product()
    {
        return $this->belongsTo('App\Product', 'product_id', 'id');
    }

    public function replies(){
        return $this->hasMany(Comment::class,'parent_id');
    }
}
