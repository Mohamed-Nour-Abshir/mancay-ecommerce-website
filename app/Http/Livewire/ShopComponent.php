<?php

namespace App\Http\Livewire;

use App\Models\product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;

class ShopComponent extends Component
{
    public $sorting;
    public $pageSize;

    public function mount(){
        $this->sorting ="default";
        $this->pageSize = 12;
    }

    public function store($product_id, $product_name, $product_price){
     Cart::add($product_id,$product_name, 1, $product_price)->associate('App\Models\Product');
     session()->flash('success_message', 'Item added to the Cart');
     return redirect()->route('product.cart');
    }
    // use WithPagination;
    public function render()
    {
        if($this->sorting == 'date'){
           $products = product::orderBy('created_at','DESC')->paginate($this->pageSize);
        }
        else if($this->sorting == 'price'){
            $products = product::orderBy('regular_price','ASC')->paginate($this->pageSize);
         }
         else if($this->sorting == 'price-desc'){
            $products = product::orderBy('regular_price','DESC')->paginate($this->pageSize);
         }
         else{
            $products = product::paginate($this->pageSize);
         }

        return view('livewire.shop-component',['products'=>$products])->layout('layouts.home');
    }
}
