<?php

namespace App\Http\Controllers\backend;

use Auth;
use App\Model\usersModel;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\File; 
use DB;
use DataTables;
use Validator;

class employeeController extends Controller
{
    public function index(){
        if(!Session::get('login')){
            return redirect('/login')->with('warning', 'Please login !');
        }else{
            DB::statement(DB::raw('set @rownum=0'));
            $data = usersModel::select('id', 'name', 'email_verified_at', 'email', DB::raw('@rownum  := @rownum  + 1 AS rownum'))->get();
            $data_edit = '';
            return view('pages.employee', compact('data', 'data_edit'));
        }
    }

    public function form(){
        if(!Session::get('login')){
            return redirect('/login')->with('warning', 'Please login !');
        }else{
            return view('pages.employee_insert');
        }
    }

    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            $rules = array(
                'name' => 'required',
                'password' => 'required',
            );

            $error = Validator::make($request->all(), $rules);
            if($error->passes()){

                $form_data = array(
                    'name' => $request->name,
                    'email' => $request->email ,
                    'email_verified_at' => $request->email_verify,
                    'password' => Hash::make($request->password),
                );

                DB::commit();
                usersModel::create($form_data);
                alert()->success('Data has been successfuly.');
                return redirect('/employee');
            }else{
                return response()->json(['errors' => $error->errors()->all()]);
            }
        } catch (\Exception $e) {
            DB::rollback();
        }
    }

    public function edit($id)
    {
        DB::statement(DB::raw('set @rownum=0'));
        $data_edit = usersModel::select('id', 'name', 'email_verified_at', 'email')->where('id', $id)->first();
        return view('pages.employee_update', compact('data_edit'));
    }

    public function update(Request $request)
    {
        DB::beginTransaction();
        try {
            $rules = array(
                'name' => 'required',
                'password' => 'required',
            );

            $error = Validator::make($request->all(), $rules);
            if($error->passes())
            {
                $form_data = array(
                    'name' => $request->name,
                    'email' => $request->email ,
                    'email_verified_at' => $request->email_verify,
                    'password' => Hash::make($request->password),
                );

                DB::commit();
                usersModel::whereId($request->hdn_id)->update($form_data);
                alert()->success('Data has been successfuly.');
                return redirect('/employee');
            }else{
                return response()->json(['errors' => $error->errors()->all()]);
            }
        } catch (\Exception $e) {
            DB::rollback();
        }
    }

    public function destroy($id)
    {
        $data = usersModel::findOrfail($id);
        $data->delete();
        alert()->success('Data has been successfuly deleted.');
        return redirect('/employee');
    }
}
