<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class PostCategory extends Model
{
    protected $table = 'post_categories';

    protected $fillable=['title','slug','status'];

    public function post(){
        return $this->hasMany('App\Models\Post','post_cat_id','id')->where('status','active');
    }

    public static function getBlogByCategory($slug){
        return PostCategory::with('post')->where('slug',$slug)->first();
    }
}
