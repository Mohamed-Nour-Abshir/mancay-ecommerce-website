<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <p>Edit Product</p>
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.products')}}" class="btn btn-success pull-right">All Products</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form wire:submit.prevent="updateProduct" class="form-horizontal" enctype="multipart/form-data">
                          <div class="form-group">
                              <label class="col-md-4 control-label">Product Name</label>
                              <div class="col-md-4">
                                <input type="text" class="form-control input-md" placeholder="Product Name" wire:model="name" wire:keyup="generateSlug">
                                @error('name')<span class="text-danger">{{$message}}</span> @enderror <br>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-md-4 control-label">Product Slug</label>
                              <div class="col-md-4">
                                <input type="text" class="form-control input-md" placeholder="Product Slug" wire:model="slug">
                                @error('slug')<span class="text-danger">{{$message}}</span> @enderror <br>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-md-4 control-label">Short Description</label>
                              <div class="col-md-4">
                                <textarea type="text" class="form-control input-md" placeholder="Short Description" wire:model="short_description"></textarea>
                                @error('short_description')<span class="text-danger">{{$message}}</span> @enderror <br>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-md-4 control-label">Description</label>
                              <div class="col-md-4">
                                <textarea type="text" class="form-control input-md" placeholder="Description" wire:model="description"></textarea>
                                @error('description')<span class="text-danger">{{$message}}</span> @enderror <br>
                              </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Regular Price</label>
                            <div class="col-md-4">
                              <input type="text" class="form-control input-md" placeholder="Regular Price" wire:model="regular_price">
                              @error('regular_price')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Sale Price</label>
                            <div class="col-md-4">
                              <input type="text" class="form-control input-md" placeholder="Sale Price" wire:model="sale_price">
                              @error('sale_price')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">SKU</label>
                            <div class="col-md-4">
                              <input type="text" class="form-control input-md" placeholder="SKU" wire:model="SKU">
                              @error('SKU')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Stock</label>
                            <div class="col-md-4">
                              <select name="" id="" class="form-control">
                                  <option value="instock">InStock</option>
                                  <option value="outofstock">out Of Stock</option>
                              </select>
                              @error('stock_status')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Featured</label>
                            <div class="col-md-4">
                              <select name="" id="" class="form-control">
                                  <option value="0">No</option>
                                  <option value="1">Yes</option>
                              </select>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Quantity</label>
                            <div class="col-md-4">
                              <input type="text" class="form-control input-md" placeholder="Quantity" wire:model="quantity">
                              @error('quantity')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Product Image</label>
                            <div class="col-md-4">
                              <input type="file" class="form-control input-file" wire:model="newimage">
                                @if ($newimage)
                                    <img src="{{ $newimage->temporaryUrl() }}" width="120">
                                @else
                                    <img src="{{asset('assets/images/products')}}/{{$image}}" width="120">
                                @endif
                                @error('newimage')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>

                          <div class="form-group">
                            <label class="col-md-4 control-label">Product Gallery</label>
                            <div class="col-md-4">
                              <input type="file" class="form-control input-file" wire:model="newimages" multiple>
                                @if ($newimages)
                                    @foreach ($newimages as $newimage)
                                        @if ($newimage)
                                            <img src="{{ $newimage->temporaryUrl() }}" width="120">
                                        @endif
                                    @endforeach
                                @else
                                    @foreach ($images as $image)
                                        @if ($image)
                                            <img src="{{asset('assets/images/products')}}/{{$image}}" width="120">
                                        @endif
                                    @endforeach
                                @endif

                            </div>
                          </div>

                          <div class="form-group">
                            <label class="col-md-4 control-label">Category</label>
                            <div class="col-md-4">
                              <select name="" id="" class="form-control" wire:model="category_id" wire:change="changeSubcategory">
                                  <option value="">Select Category</option>
                                  @foreach ($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                  @endforeach
                              </select>
                              @error('category_id')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>

                          <div class="form-group">
                            <label class="col-md-4 control-label">SubCategory</label>
                            <div class="col-md-4">
                              <select name="" id="" class="form-control" wire:model="scategory_id">
                                  <option value="0">Select SubCategory</option>
                                  @foreach ($scategories as $scategory)
                                    <option value="{{$scategory->id}}">{{$scategory->name}}</option>
                                  @endforeach
                              </select>
                              @error('scategory_id')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>

                          <div class="form-group">
                            <label class="col-md-4 control-label">Product Attribute</label>
                            <div class="col-md-3">
                              <select name="" id="" class="form-control" wire:model="attr">
                                  <option value="0">Select Attribute</option>
                                  @foreach ($pattributes as $pattribute)
                                    <option value="{{$pattribute->id}}">{{$pattribute->name}}</option>
                                  @endforeach
                              </select>
                            </div>
                            <div class="col-md-1">
                                <button type="button" class="btn btn-info" wire:click.prevent="add">Add</button>
                            </div>
                          </div>

                          @foreach ($inputs as $key => $value)
                            <div class="form-group">
                                <label class="col-md-4 control-label">{{$pattributes->where('id',$attribute_arr[$key])->first()->name}}</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control input-md" placeholder="{{$pattributes->where('id',$attribute_arr[$key])->first()->name}}" wire:model="attribute_values.{{$value}}">
                                </div>
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-danger btn-sm" wire:click.prevent="remove({{$key}})">Remove</button>
                                </div>
                            </div>
                          @endforeach

                          <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4">
                             <button type="submit" class="btn btn-success">Update</button>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


