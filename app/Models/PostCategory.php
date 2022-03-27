<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostCategory extends Model
{
    protected $table = 'post_categories';

    public function posts()
    {
        return $this->hasMany('App\Post', 'category_id', 'id');
    }
}
