<?php

namespace App\Http\Livewire\Admin;

use App\Models\category;
use Livewire\Component;
use illuminate\Support\Str;

class AdminAddCategoryComponent extends Component
{
    public $name;
    public $slug;
    public function generateSlug(){
        $this->slug = Str::slug($this->name);
    }
    public function storeCategory(){
        $category = new category;
        $category->name = $this->name;
        $category->slug = $this->slug;
        $category->save();

        session()->flash('message', 'One Category Added Successfully');
    }
    public function render()
    {
        return view('livewire.admin.admin-add-category-component')->layout('layouts.home');
    }
}