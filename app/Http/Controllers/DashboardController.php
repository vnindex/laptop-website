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
        $user_total = User::where('role', 0)->count();
        $admin_total = User::where('role', 1)->count();
        $user_male = User::where('gender', 1)->count();
        $user_female = User::where('gender', 0)->count();
        $user_buy = User::all();
        $review_total = Review::all()->count();
        
        
        // best product
        $bestProducts = Product::orderBy('view', 'DESC')->limit(5)->get();

        //product follow price
        $prices = Product::orderBy('pro_new_price', 'DESC')->limit(5)->get();

        
        

        return view('admin', compact(
            'user_total',
            'admin_total',
            'user_male',
            'user_female',
            'review_total',
            'user_buy',
            'bestProducts',
            'prices'
        ));

    }
}
