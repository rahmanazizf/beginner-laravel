<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome', 
    ["title" => "Home"]
);
});

Route::get('/contact', function () {
    return view('contact', [
        "title" => "Contact"
    ]);
});

Route::get('/news', function () {
    return view('news', [
        "title" => "News"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "about" => "lorem ipsum dolor amet",
        "email" => "example@mail.com",
        "phone" => "+628123412"
        ]);
});