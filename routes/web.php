<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

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

//Route::get('/', function () {
    //return view('welcome');
//});



Route::get('/', [\App\Http\Controllers\EmpresarioController::class, 'index']);

Route::post('/', [\App\Http\Controllers\EmpresarioController::class, 'store']);

Route::delete('/{id}', [\App\Http\Controllers\EmpresarioController::class, 'destroy']);
