<?php

namespace App\Http\Livewire;

use App\Models\product;
use Livewire\Component;
use Cart;
class DetailsComponent extends Component
{
    public $slug;
    public function mount($slug){
        $this->slug = $slug;
    }
    public function store($product_id, $product_name, $product_price){
        Cart::add($product_id,$product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added to the Cart');
        return redirect()->route('product.cart');
       }
    public function render()
    {
        $product = product::where('slug',$this->slug)->first();
        $popular_products = product::inRandomOrder()->limit(4)->get();
        $related_products = product::where('category_id',$product->category_id)->inRandomOrder()->limit(5)->get();
        return view('livewire.details-component',['product'=>$product, 'popular_products'=>$popular_products, 'related_products'=>$related_products])->layout('layouts.home');
    }
}