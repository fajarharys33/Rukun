<?php

namespace App\Http\Controllers\api;

use Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Validator;

class loginController extends Controller
{
    public function login(Request $request)
    {
       $input = $request->all();
       $vallidation = Validator::make($input, [
            'email' => 'required|email',
            'password' => 'required'
       ]);

       if($vallidation->fails()){
            return response()->json(['error' => $vallidation->errors()->all()], 422);
       }

       if(Auth::attempt(['email' => $input['email'], 'password' => $input['password']])){
            $user = Auth::user();
            $token = $user->createToken('Token name')->accessToken;
            return response()->json(['user' => $user, 'token' => $token]);
       }
    }
}
