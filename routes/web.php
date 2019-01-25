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

Route::get('/', 'HomeController@homePage')->name('home-page');
Route::get('/now-showing', 'HomeController@nowShowing')->name('nowshowing');
Route::post('/add-order', 'TicketController@orderTicket')->name('order');

Route::post('/seat', 'TicketController@seat')->name('seat');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

