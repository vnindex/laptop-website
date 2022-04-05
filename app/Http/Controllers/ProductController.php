<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Review;
use App\Order;
use App\proChillImage;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->has('search')){
            $search = $request->input('search');
            $products = Product::search($search)->paginate(10);
            $countModal = 1;

            return view('product.view', compact('products', 'countModal'));
        }
        $products = Product::with('category')->latest()->paginate(10);
        $countModal = 1;

        return view('product.view', compact('products', 'countModal'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('product.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $file = $request->file('pro_image');
        $fileName = uniqid() . '_' . $file->getClientOriginalName();
        $file->move('images/products', $fileName);
        $product = new Product();
        $product->pro_name = $request->input('pro_name');
        $product->cate_id = $request->input('cate_id');
        $product->pro_desc = $request->input('pro_desc');
        $product->pro_image = $fileName;
        $product->quantity = $request->input('quantity');
        $product->pro_old_price = $request->input('pro_old_price');
        $product->pro_new_price = $request->input('pro_new_price');
        $product->pro_sale = $request->input('pro_sale');
        $product->save();

        foreach($request->file('chill_image') as $fileChill)
        {
            $nameChill = uniqid() . '_' . $fileChill->getClientOriginalName();;
            $fileChill->move('images/chillImageProducts', $nameChill);
            $chillImage = new proChillImage();
            $chillImage->pro_id = $product->pro_id;
            $chillImage->chill_image = $nameChill;
            $chillImage->save();
        }

        return redirect()->route('admin.product.index')->with('add_success', trans('admin.message.add_success'));
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
