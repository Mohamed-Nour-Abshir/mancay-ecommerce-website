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
                        <form wire:submit.prevent="updateCategory">
                            <label>Category Name</label>
                            <input type="text" class="form-control" placeholder="Category name" wire:model="name" wire:keyup="generateSlug">
                            <label>Slug</label>
                            <input type="text" class="form-control" placeholder="Category Slug" wire:model="slug">
                            <button type="submit" class="bnt btn-success form-control" style="width: 150px; text-align:center; margin-top:20px;">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

