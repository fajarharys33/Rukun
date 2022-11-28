<?php

namespace App\Http\Controllers\backend;

use Auth;
use App\Model\usersModel;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class loginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(!Session::get('login')){
            return redirect('/')->with('warning', 'Please login !');
        }else{
            return view('pages.dashboard');
        }
    }

    public function login(){
        if(!Session::get('login')){
            return view('pages.login');
        }else{
            return redirect('dashboard');
        }
    }

    public function loginpost(Request $request){
        $email = $request->email;
        $password = $request->password;
        $data = usersModel::where('email', $email)->first();
        if($data){ //cek email ada atau tidak 
            if(Hash::check($password,$data->password)){
                Session::put('login', TRUE);
                if($data->isAdmin == '1'){
                    Session::put('isAdmin', '');
                }else{
                    Session::put('isAdmin', 'hide');
                }
                if(Auth::attempt([
                    'email' => $request->email,
                    'password' => $request->password,
                ])){
                    alert()->success('successfully.');
                    return redirect('/dashboard');
                }
            }
            else{
                alert()->warning('Invalid email or password !');
                return redirect('/');
            }
        }else{
            alert()->warning('Email not found, please register !');
            return redirect('/');
        }
    }

    public function logout(Request $request){
        Auth::logout();
        $request->session()->flush();
        return redirect('/')->with('success', 'Logout successfully .');
    }
}
