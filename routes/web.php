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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::prefix('merchants')->group(function () {
 
        Route::get('/', 'MerchantsController@index')->name('merchants');
        Route::get('outlet/{merchants_id}','OutletController@index')->name('outlet');
        Route::get('outlet/{merchants_id}/omzet/{outlet_id}','OmzetController@index')->name('omzet');
  
});