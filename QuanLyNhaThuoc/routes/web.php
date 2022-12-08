<?php

use App\Http\Controllers\ProductController;
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

Route::get('/', [ProductController::class, 'index'])->name('homepage');
Route::get('productDetail/{ProductId?}', [ProductController::class, 'getProductDetail'])->name('productdetail');
// Route::get('index', [ProductController::class, 'index']);
// Route::get('productdetail/{ProductId}', ['as' => 'proddetail', 'uses' => 'ProductController@getProductDetail']);
Route::get('addproduct', [ProductController::class, 'addProd'])->name('add')->middleware(['auth']);
Route::post('', [ProductController::class, 'insertProduct'])->name('insert')->middleware(['auth']);
Route::get('productlist', [ProductController::class, 'listProduct'])->name('productlist');
Route::get('productlist/{ProductId}', [ProductController::class, 'deleteProduct'])->name('deleteProduct')->middleware(['auth']);
Route::get('search', [ProductController::class, 'getSearch'])->name('search');
Route::get('update/{ProductId?}', [ProductController::class, 'UpdateProduct'])->name('Update')->middleware(['auth']);
Route::post('update/{ProductId?}', [ProductController::class, 'updateProd'])->name('UpdateProd')->middleware(['auth']);
Route::get('sortasc',[ProductController::class,'sortProductASC'])->name('SortProductASC');
Route::get('sortdesc',[ProductController::class,'sortProductDESC'])->name('SortProductDESC');
Route::get('sortaz',[ProductController::class,'sortProductAZ'])->name('SortProductAZ');
Route::get('sortza',[ProductController::class,'sortProductZA'])->name('SortProductZA');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
