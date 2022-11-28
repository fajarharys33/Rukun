<?php

namespace App\Http\Controllers\backend;

use Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use DB;

class dashboardController extends Controller
{
    public function index(){
        if(!Session::get('login')){
            return redirect('/login')->with('warning', 'Please login !');
        }else{
            return view('pages.dashboard');
        }
    }
}
