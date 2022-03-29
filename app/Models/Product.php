<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    protected $fillable=['name','quantity','sold','slug','category_id','brand_id','description','content','keywords','price','image','status'];

    public function brand()
    {
        return $this->belongsTo('App\Models\Brand', 'brand_id', 'id');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\Category', 'category_id', 'id');
    }

    public function order_details()
    {
        return $this->hasMany('App\Models\OrderDetail', 'product_id', 'id');
    }

    public static function getAllProduct(){
        return Product::with(['category'])->orderBy('id','desc')->paginate(10);
    }
    
    
    public static function getProductBySlug($slug){
        return Product::with(['category'])->where('slug',$slug)->first();
    }

    public function getReview(){
        return $this->hasMany('App\Models\ProductReview','product_id','id')->with('user_info')->where('status','active')->orderBy('id','DESC');
    }

    public static function countActiveProduct(){
        // $data=Category::where('status','active')->count();
        // if($data){
        //     return $data;
        // }
        return 10;
    }
}
