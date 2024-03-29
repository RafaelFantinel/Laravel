<?php

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
Route::group(['middleware'=>['web']], function (){
    Route::get('candidatos', 'CandidatoController@index');
    Route::get('candidatos/novo', 'CandidatoController@novo');
    Route::post('candidatos/salvar', 'CandidatoController@salvar');

    Route::get('/home', 'HomeController@index')->name('home');
});


