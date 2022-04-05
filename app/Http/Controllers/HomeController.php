<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banner;
use Illuminate\Support\Facades\Auth;
use App\Category;
use App\Product;
use App\Deal;
use App\Review;




class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banners = Banner::all();
        $products = Product::All();
        $proCount =1;
        $cateCount =1;
        $CateParentCount = 1;
        $deals = Deal::all();
        $categories = Category::with('products')->get();
        $topSales = Product::where('pro_sale', 1)->orderBy('updated_at', 'desc')->distinct('cate_id')->get();
        $hots = Product::orderBy('view', 'desc')->paginate(57);

        return view('home', compact(
            'banners',
            'categories',
            'products',
            'proCount',
            'CateParentCount',
            'topSales',
            'hots',
            'deals',
            'cateCount'
        ));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
