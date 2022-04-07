<?php

namespace App\Http\Livewire\Admin;

use App\Models\category;
use Livewire\Component;
use illuminate\Support\Str;

class AdminEditCategoryComponent extends Component
{
    public $category_id;
    public $category_slug;
    public $name;
    public $slug;

    public function mount($category_slug){
        $this->category_slug = $category_slug;
        $category = category::where('slug', $category_slug)->first();

        $this->category_id = $category->id;
        $this->name = $category->name;
        $this->slug = $category->slug;
    }
    // validation
    public function updated($fields){
        $this->validateOnly($fields,[
            'name' => 'required',
            'slug' => 'required|unique:categories'
        ]);
    }
    public function generateSlug(){
        $this->slug = Str::slug($this->name);
    }
    public function updateCategory(){
        $this->validate([
            'name' => 'required',
            'slug' => 'required|unique:categories'
        ]);

        $category = category::find($this->category_id);
        $category->name = $this->name;
        $category->slug = $this->slug;
        $category->save();

        session()->flash('message', 'One Category has been updated Successfully');
    }
    public function render()
    {
        return view('livewire.admin.admin-edit-category-component')->layout('layouts.home');
    }
}
