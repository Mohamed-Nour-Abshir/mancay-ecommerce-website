<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\product;
use Livewire\WithPagination;
class AdminProductComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $products = product::paginate(5);
        return view('livewire.admin.admin-product-component',['products'=>$products])->layout('layouts.home');
    }
}
