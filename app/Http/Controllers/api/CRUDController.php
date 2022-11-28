<?php

namespace App\Http\Controllers\api;

use Auth;
use App\Model\usersModel;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Validator;

class CRUDController extends Controller
{
    public function getUser()
    {
       $data = usersModel::all();
       return response()->json(['status' => 'Success', 'result' => $data]);
    }

    public function addUser(Request $request)
    {
       $input["name"] = $request->name;
       $input["email"] = $request->email;
       $input["email_verified_at"] = $request->email_verified_at;
       $input["password"] = Hash::make($request->password);
       $data = usersModel::create($input);
       return response()->json(['status' => 'Success', 'result' => $data]);
    }

    public function getAuth()
    {
       $data = Auth::user();
       return response()->json(['status' => 'Success', 'result' => $data]);
    }

    public function delete($id)
    {
       usersModel::find($id)->delete();
       return response()->json(['status' => 'Success', 'result' => [], 'message' => 'Data has been deleted.']);
    }

    public function updateUser(Request $request)
    {
       $input["name"] = $request->name;
       $input["email"] = $request->email;
       $input["email_verified_at"] = $request->email_verified_at;
       $input["password"] = Hash::make($request->password);
       usersModel::whereId($request->id)->update($input);
       
       $data = usersModel::all();
       return response()->json(['status' => 'Success', 'result' => $data]);
    }
}
