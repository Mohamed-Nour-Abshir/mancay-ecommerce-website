<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    // increasing cart quantity
    public function increaseQuantity($rowId){
        $product = Cart::get($rowId);
        $qty = $product->qty + 1;
        Cart::update($rowId,$qty);
    }
      // decreasing cart quantity
    public function decreaseQuantity($rowId){
        $product = Cart::get($rowId);
        $qty = $product->qty - 1;
        Cart::update($rowId,$qty);
    }
    //deleting item form the cart
    public function destroy($rowId){
        Cart::remove($rowId);
        Session()->flash('success_message', 'Item has been removed');
    }
    // deleting all items form cart
    public function destroyAll(){
        Cart::destroy();
        Session()->flash('success_message', 'All Items has been removed');
    }
    public function render()
    {
        return view('livewire.cart-component')->layout('layouts.home');
    }
}
