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
    return redirect('films');
});

Route::get('/films', 'FilmsController@showAllFilms');

Route::get('/films/create', function () {
    return view('films.create');
});


Route::get('/films/{slug}', 'FilmsController@showFilm');

Route::get('/register', function () {
    return view('newuser');
});

Route::post('registeruser', 'UsersController@validateForm');

Route::post('newfilm', 'FilmsController@newFilm');

Route::post('new_comment', 'FilmsController@newComment');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
