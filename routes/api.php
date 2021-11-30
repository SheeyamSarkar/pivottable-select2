<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AntroApiController;

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



Route::get('portfolio-categories',[AntroApiController::class,'portfolio_cat']);
Route::get('portfolio-categories/{id}',[AntroApiController::class,'getCategoryById']);

Route::get('portfolio-items',[AntroApiController::class,'portfolioItem']);
Route::get('portfolio-items/{id}',[AntroApiController::class,'portfolioItemById']);


Route::get('portfolio-category-by-level/{id}',[AntroApiController::class,'portfolioCategoryByLevel']);
 
Route::get('portfolio-position',[AntroApiController::class,'portfolioPosition']);
Route::get('portfolio-position/{id}',[AntroApiController::class,'portfolioPositionById']);

Route::get('portfolio-tags',[AntroApiController::class,'portfolioTags']);
Route::get('portfolio-tags/{id}',[AntroApiController::class,'portfolioTagsById']);


Route::get('category-related-services',[AntroApiController::class,'categoryRelatedServices']);
Route::get('category-related-services/{id}',[AntroApiController::class,'categoryRelatedServicesById']);

Route::get('infos',[AntroApiController::class,'infos']);
Route::get('infos/{id}',[AntroApiController::class,'infosById']);

Route::get('quotes-list',[AntroApiController::class,'quotes']);
Route::post('quotes',[AntroApiController::class,'getQuotes']);

Route::get('clients',[AntroApiController::class,'clients']);
Route::get('clients/{id}',[AntroApiController::class,'clientsById']);

Route::get('counts',[AntroApiController::class,'counts']);
Route::get('counts/{id}',[AntroApiController::class,'countsById']);

Route::get('terms',[AntroApiController::class,'terms']);
Route::get('terms/{id}',[AntroApiController::class,'termsById']);

Route::get('services',[AntroApiController::class,'services']);
Route::get('services/{id}',[AntroApiController::class,'servicesById']);

Route::get('faqs',[AntroApiController::class,'faqs']);
Route::get('faqs/{id}',[AntroApiController::class,'faqsById']);