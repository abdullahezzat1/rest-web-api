<?php

use App\Http\Controllers\DELETEController;
use App\Http\Controllers\GETController;
use App\Http\Controllers\POSTController;
use App\Http\Controllers\PUTController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/agents', [GETController::class, 'agents']);
Route::get('/companies', [GETController::class, 'companies']);
Route::get('/customers', [GETController::class, 'customers']);
Route::get('/agents/{id}', [GETController::class, 'agent']);
Route::get('/companies/{id}', [GETController::class, 'company']);
Route::get('/customers/{id}', [GETController::class, 'customer']);

Route::post('/agent', [POSTController::class, 'agent']);
Route::post('/company', [POSTController::class, 'company']);

Route::put('/agent', [PUTController::class, 'agent']);
Route::put('/company', [PUTController::class, 'company']);

Route::delete('/agent', [DELETEController::class, 'agent']);
Route::delete('/company', [DELETEController::class, 'company']);
