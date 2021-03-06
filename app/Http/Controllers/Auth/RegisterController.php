<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => ['required', 'string', 'max:255', 'unique:taikhoan'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'password' => ['required', 'string', 'min:6'],
            'birthday' => ['required'],
            'gender' => ['required'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        //dd($data);
        return User::create([
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => ($data['password']),
            'name' => $data['lastname'],
            'birthday' => $data['birthday'],
            'gender' => $data['gender'],
            'role' => config('app.user_role'),
        ]);
        // return DB::table('taikhoan')->insert(
        //     [
        //             'username' => $data['username'],
        //             'email' => $data['email'],
        //             'password' => ($data['password']),
        //             'name' => $data['lastname'],
        //             'birthday' => $data['birthday'],
        //             'gender' => $data['gender'],
        //             'role' => config('app.user_role'),
        //         ]
        // );
    }
}
