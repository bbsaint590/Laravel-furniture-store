<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\ProductController;
use \App\Http\Controllers\CategoryController;

Route::get('/products/', [ProductController::class, 'allProducts']);
Route::get('/products/{id}', [ProductController::class, 'productById']);
Route::get('/index', [CategoryController::class, 'index']);
