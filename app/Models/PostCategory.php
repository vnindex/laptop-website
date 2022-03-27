<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostCategory extends Model
{
    protected $table = 'post_categories';

    protected $fillable=['name','slug','description','keywords','status'];

    public function posts()
    {
        return $this->hasMany('App\Post', 'category_id', 'id');
    }

    public static function getBlogByCategory($slug){
        return PostCategory::with('posts')->where('slug',$slug)->first();
    }
}
