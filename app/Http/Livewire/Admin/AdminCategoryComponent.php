<?php

namespace App\Http\Livewire\Admin;

use App\Models\category;
use Livewire\Component;
use Livewire\WithPagination;

class AdminCategoryComponent extends Component
{
    use WithPagination;
    public function deleteCategory($id){
        $category = category::find($id);
        $category->delete();
        session()->flash('message','One category has been deleted Successfully!');
    }
    public function render()
    {
        $categoires = category::paginate(5);
        return view('livewire.admin.admin-category-component',['categories'=>$categoires])->layout('layouts.home');
    }
}
