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
        $product->delete();
        Session()->flash('message', 'Product has been deleted Successfully');
    }
    public function render()
    {
        $products = product::paginate(5);
        return view('livewire.admin.admin-product-component',['products'=>$products])->layout('layouts.home');
    }
}
