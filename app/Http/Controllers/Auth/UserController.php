<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();

        return view('auth.admin.view', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
    //     //
    //     return view('auth.admin.create');
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function store(Request $request)
    // {
        

    //     $file = $request -> file('user_image');
    //     $fileName = uniqid().'-'.$file->getClientOriginalName();
    //     $file -> move('images/user', $fileName);
        
    //     $user =  new User();
    //     $user->avatar = $fileName;
    //     $user->username = $request->input('username');
    //     $user->email = $request->input('email');
    //     $user->password = $request->input('password');

    //     $user->save();
        
    //     return redirect()->route('auth.admin.view')->with('add_success', trans('admin.message.add_success'));
    // }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::findOrFail($id);

        return view('auth.admin.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::findOrFail($id);
        $users = User::all();

        return view('auth.admin.edit', compact('user', 'users'));
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
        $file = $request -> file('avatar');
        $fileName = uniqid() . '_' . $file->getClientOriginalName();
        $file->move('images/users', $fileName);
        $user = User::findOrFail($id);
        $user->name = $request->input('name');
        $user->phone = $request->input('phone');
        $user->email = $request->input('email');
        $user->birthday = $request->input('birthday');
        $user->gender = $request->input('gender');
        $user->avatar = $fileName;
        $user->save();

        
        $url = "http://127.0.0.1:8000/admin/user";
        return redirect()->to($url)->with('update_success', trans('admin.message.update_success'));
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
        $user = User::findOrFail($id);
        $user->wishlist()->delete();
        $user->reviews()->delete();
        $orders1 = $user->orders();
        foreach($orders1->get() as $order1) {
            $order1->checkouts()->delete();
        }
        $user->orders()->delete();
        $user->delete();

        
        
        return redirect()->back()->with('del_success', trans('admin.message.del_success'));
    }
}
