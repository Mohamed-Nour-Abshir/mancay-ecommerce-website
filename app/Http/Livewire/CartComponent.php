<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    // increasing cart quantity
    public function increaseQuantity($rowId){
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($rowId,$qty);
        $this->emitTo('cart-count-component','refreshComponent');
    }
      // decreasing cart quantity
    public function decreaseQuantity($rowId){
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty - 1;
        Cart::instance('cart')->update($rowId,$qty);
        $this->emitTo('cart-count-component','refreshComponent');
    }
    //deleting item form the cart
    public function destroy($rowId){
        Cart::instance('cart')->remove($rowId);
        $this->emitTo('cart-count-component','refreshComponent');
        Session()->flash('success_message', 'Item has been removed');
    }
    // deleting all items form cart
    public function destroyAll(){
        Cart::instance('cart')->destroy();
        $this->emitTo('cart-count-component','refreshComponent');
        Session()->flash('success_message', 'All Items has been removed');
    }
    // swith item to the save Later
    public function switchSaveLater($rowId){
        $item = Cart::instance('cart')->get($rowId);
        Cart::instance('cart')->remove($rowId);
        Cart::instance('saveForLater')->add($item->id,$item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component','refreshComponent');
        Session()->flash('success_message', 'item added to Save For Later');
    }
    // move item from save later to cart
    public function moveToCart($rowId){
        $item = Cart::instance('saveForLater')->get($rowId);
        Cart::instance('saveForLater')->remove($rowId);
        Cart::instance('cart')->add($item->id,$item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component','refreshComponent');
        Session()->flash('s_success_message', 'item added to the Cart');
    }
    // delete item from save later
    public function deleteFromSaveLater($rowId){
        Cart::instance('saveForLater')->remove($rowId);
        Session()->flash('s_success_message', 'item Deleted From Saved Later');
    }
    public function render()
    {
        return view('livewire.cart-component')->layout('layouts.home');
    }
}
