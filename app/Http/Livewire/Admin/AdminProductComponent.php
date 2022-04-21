<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\product;
use Livewire\WithPagination;
class AdminProductComponent extends Component
{
    use WithPagination;
    public function deleteProduct($id){

        $product = product::find($id);
        if($product->image){
            unlink('assets/images/products'.'/'.$product->image);
        }
        if($product->images){
            $images = explode(",",$product->images);
            foreach($images as $image){
                if($image){
                    unlink('assets/images/products'.'/'.$image);
                }
            }
        }
        $product->delete();
        Session()->flash('message', 'Product has been deleted Successfully');
    }
    public function render()
    {
        $products = product::paginate(5);
        return view('livewire.admin.admin-product-component',['products'=>$products])->layout('layouts.home');
    }
}
