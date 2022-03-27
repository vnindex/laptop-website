<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    protected $fillable=['name','quantity','sold','slug','category_id','brand_id','description','content','keywords','price','image','status'];

    public function brand()
    {
        return $this->belongsTo('App\Brand', 'brand_id', 'id');
    }

    public function category()
    {
        return $this->belongsTo('App\Category', 'category_id', 'id');
    }

    public function order_details()
    {
        return $this->hasMany('App\OrderDetail', 'product_id', 'id');
    }

    public static function getAllProduct(){
        return Product::with(['category'])->orderBy('id','desc')->paginate(10);
    }
    
    
    public static function getProductBySlug($slug){
        return Product::with(['category'])->where('slug',$slug)->first();
    }
}
