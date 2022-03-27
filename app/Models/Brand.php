<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $table = 'brands';

    public function products()
    {
        return $this->hasMany('App\Product', 'brand_id', 'id');
    }
}
