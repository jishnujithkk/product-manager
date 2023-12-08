<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ProductController;
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

Route::middleware(['auth:api'])->group(function () {
    Route::post('/logout', [LoginController::class, 'logout']);
    Route::get('/user', function (Request $request) {
        return $request->user();
    });
});

Route::post('/signup',[LoginController::class,'signup']);
Route::post('/login',[LoginController::class,'login']);
// Route::post('/logout',[LoginController::class,'logout']);

// test
Route::post('/upload-csv', [ProductController::class, 'uploadCSV']);
Route::get('/products', [ProductController::class, 'index']);