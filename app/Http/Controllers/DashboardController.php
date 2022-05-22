<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Review;
use App\Product;
use App\Order;
use Carbon\Carbon;
use App\Category;

class DashboardController extends Controller
{
    public function index(){
        $user_total = User::all()->count();
        
        $review_total = Review::all()->count();

        $order_total = Order::all()->count();
        
        
        
        $product_total = Product::all()->count();

        
        $tongtien1 = 1000000 * Order::where('order_status', 2)->sum('order_total');
        $tongtien2 = 1000000 * Order::where('order_status', 3)->sum('order_total');;
        $tongtien = $tongtien2 + $tongtien1;
        //dd($tongtien);
        return view('admin', compact(
            'user_total',
            'order_total',
            'product_total',
            'review_total',
            'tongtien'
        ));

    }
}
