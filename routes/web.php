<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['middleware' => 'web'], function () {
    Route::namespace('backend')->group(function(){
        // admin
        Route::get('/', ['uses' => 'loginController@login'])->name('login');
        Route::post('loginpost', 'loginController@loginpost');
        Route::get('logout', 'loginController@logout')->name('logout');

        Route::get('dashboard', 'dashboardController@index')->name('dashboard');

        Route::get('employee', 'employeeController@index')->name('employee');
        Route::get('employee/insert', 'employeeController@form')->name('employee.insert');
        Route::post('employee/input', 'employeeController@store')->name('employee.input');
        Route::post('employee/update', 'employeeController@update')->name('employee.update');
        Route::get('employee/destroy/{id}', 'employeeController@destroy');
        Route::get('employee/edit/{id}', 'employeeController@edit');
    });
});

Route::get('/clear', function() {
   Artisan::call('cache:clear');
   Artisan::call('config:clear');
   Artisan::call('config:cache');
   Artisan::call('view:clear');
   session()->flush();
   return "Cleared!";

});
