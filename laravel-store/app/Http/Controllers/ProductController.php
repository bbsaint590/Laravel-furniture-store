<?php

namespace App\Http\Controllers;

use App\Models\Product;
use \Illuminate\Http\Client\Request;

class ProductController extends Controller
{
    public function allProducts()
    {

        $products = Product::all();

        return view('products', ['products' => $products]);
    }

    public function productById(int $id)
    {
        $product = Product::find($id);
        $relatedProduct = Product::find($product->related);
        return view('product', ['product' => $product, 'relatedProduct' => $relatedProduct]);
    }

}


