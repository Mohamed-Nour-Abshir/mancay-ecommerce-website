<?php

namespace App\Http\Livewire;

use App\Models\product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
use App\Models\category;

class CategoryComponent extends Component
{
    public $sorting;
    public $pageSize;
    public $category_slug;

    public function mount($category_slug){
        $this->sorting ="default";
        $this->pageSize = 12;
        $this->category_slug = $category_slug;
    }

    public function store($product_id, $product_name, $product_price){
     Cart::add($product_id,$product_name, 1, $product_price)->associate('App\Models\Product');
     session()->flash('success_message', 'Item added to the Cart');
     return redirect()->route('product.cart');
    }
    // use WithPagination;
    public function render()
    {
        $category = category::where('slug',$this->category_slug)->first();
        $category_id = $category->id;
        $category_name = $category->name;

        if($this->sorting == 'date'){
           $products = product::where('category_id', $category_id)->orderBy('created_at','DESC')->paginate($this->pageSize);
        }
        else if($this->sorting == 'price'){
            $products = product::where('category_id', $category_id)->orderBy('regular_price','ASC')->paginate($this->pageSize);
         }
         else if($this->sorting == 'price-desc'){
            $products = product::where('category_id', $category_id)->orderBy('regular_price','DESC')->paginate($this->pageSize);
         }
         else{
            $products = product::where('category_id', $category_id)->paginate($this->pageSize);
         }

         $categories = category::all();

        return view('livewire.category-component',['products'=>$products, 'categories'=>$categories, 'category_name'=>$category_name])->layout('layouts.home');
    }
}