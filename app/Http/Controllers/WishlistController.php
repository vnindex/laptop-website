<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Wishlist;

class WishlistController extends Controller
{
    public function save_wishlist(Request $request)
    {
        // dd($request);
        if(@isset(Auth::user()->user_id)){
            Wishlist::create([
                'user_id' => Auth::user()->user_id,
                'pro_id' => $request->input('pro_id'),
            ]);
    
            return redirect()->back();
        }
        return view('auth.login');
        
    }
    public function show_wishlist($id)
    {
        //dd($id);
        $wish = User::findOrFail($id);
        // $wish = Wishlist::with('product')
        //   ->where('user_id', $user->id)
        //   ->orderby('id', 'desc')
        //   ->paginate(10);
        return view('product.wishlist', compact('wish'));
    }

    public function delete_wishlist($id)
    {
        $wish = Wishlist::findOrFail($id);
        $wish->delete();

        return redirect()->back();
    }
}
