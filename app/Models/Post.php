<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';
    protected $fillable=['name','slug','description','content','keywords','image','status','view','category_id'];

    public function category()
    {
        return $this->belongsTo('App\PostCategory', 'category_id', 'id');
    }

    public static function getAllPost(){
        return Post::with(['category'])->orderBy('id','DESC')->paginate(10);
    }
}
