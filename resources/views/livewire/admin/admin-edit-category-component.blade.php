<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <p>Edit Category</p>
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.categories')}}" class="btn btn-success pull-right">All Categories</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form wire:submit.prevent="updateCategory" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-4 control-label">Category Name</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control input-md" placeholder="Category name" wire:model="name" wire:keyup="generateSlug">
                                    @error('name')<span class="text-danger">{{$message}}</span> @enderror <br>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Slug</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control input-md" placeholder="Category Slug" wire:model="slug">
                                    @error('slug')<span class="text-danger">{{$message}}</span> @enderror <br>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Parent Category</label>
                                <div class="col-md-4">
                                    <select class="form-control input-md" wire:model="category_id">
                                        <option value="">None</option>
                                        @foreach ($categories as $category)
                                            <option value="{{$category->id}}">{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

