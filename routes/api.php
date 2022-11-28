<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\LoginController;
use App\Http\Controllers\api\CRUDController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('login', 'api\loginController@login');
Route::middleware('auth:api')->post('addUser', 'api\CRUDController@addUser');
Route::middleware('auth:api')->get('getUser', 'api\CRUDController@getUser');
Route::middleware('auth:api')->get('delete/{id}', 'api\CRUDController@delete');
Route::middleware('auth:api')->post('updateUser/{id}', 'api\CRUDController@updateUser');