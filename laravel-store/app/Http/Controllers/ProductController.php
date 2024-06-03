<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Services\CurrencyConverterService;
use App\Services\MeasurementConverterService;
use \Illuminate\Http\Client\Request;

class ProductController extends Controller
{
    public function allProducts()
    {

        $products = Product::all();

        foreach ($products as $product) {
            $product->price = CurrencyConverterService::getCurrency($product->price, 'GBP');
        }

        return view('products', ['products' => $products]);
    }

    public function productById(int $id)
    {
        $product = Product::find($id);
        $product->price = CurrencyConverterService::getCurrency($product->price, 'GBP');

            $relatedProduct = Product::find($product->related);
            if ($relatedProduct) {
                $relatedProduct->price = CurrencyConverterService::getCurrency($relatedProduct->price, 'GBP');
            } else {
                $relatedProduct = null;
            }

            return view('product', ['product' => $product, 'relatedProduct' => $relatedProduct]);
        }

}




