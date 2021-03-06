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

Route::view('/', 'welcome');

Route::get('/lang/{lang}', 'LanguagePreferenceController@setLanguage');

Route::resource('ticket', 'TicketController');

//Route::resource('comment', 'CommentController')->only('store');
//Route::resource('note', 'NoteController')->only('store');
//Route::resource('feedback', 'FeedbackController')->only('store');

Route::view('dashboard-beta', 'layouts.dashboard-beta');

Route::view('/component/test', 'test');
