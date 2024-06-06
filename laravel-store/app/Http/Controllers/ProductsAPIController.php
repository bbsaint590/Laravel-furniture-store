<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductsAPIController extends Controller
{
    public function index()
    {
        $products = Product::with(['category', 'tags'])->get();
        return response()->json([
            'message' => 'Products retrieved successfully',
            'success' => true,
            'data' => $products
        ]);
    }

    public function create(Request $request)
    {
        $request->validate([

        'category_id' => 'required|integer|exists:categories,id',
        'width' => 'required|integer|min:0',
        'height' => 'required|integer|min:0',
        'depth' => 'required|integer|min:0',
        'price' => 'required|integer|min:0|max:10000',
        'stock' => 'required|integer|min:0',
        'related' => 'required|integer|exists:products,id',
        'color' => 'required|string|max:50',

        ]);
        //instantiate new product
        $product = new Product();
//take the data from the request and save it on the product
        $product->category_id = $request->category_id;
        $product->width = $request->width;
        $product->height = $request->height;
        $product->depth = $request->depth;
        $product->price = $request->price;
        $product->stock = $request->stock;
        $product->related = $request->related;
        $product->color = $request->color;
        $product->deleted = $request->deleted;

        //save the product in DB

        $product->save();

        return response()->json([
            'message' => 'Product added to the DB',
            'success' => true
        ]);

    }
}
