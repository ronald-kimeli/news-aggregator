<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\AthorsController;
use App\Http\Controllers\API\LoadNewsController;
use App\Http\Controllers\API\FetchNewsController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('getauthors', [AthorsController::class , 'index']);

Route::get('loadnews', [LoadNewsController::class , 'index']);
Route::post('searchnews', [LoadNewsController::class , 'store']);

Route::get('fetchnewsapi', [FetchNewsController::class , 'fetchNewsAPI']);
Route::get('fetchthegurdian', [FetchNewsController::class , 'fetchTheGurdianAPI']);
Route::get('fetchnewyorktimes', [FetchNewsController::class , 'fetchNewYorkTimesAPI']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::apiResource('/users', UserController::class);
});

Route::post('/signup', [AuthController::class, 'signup']);
Route::post('/login', [AuthController::class, 'login']);
