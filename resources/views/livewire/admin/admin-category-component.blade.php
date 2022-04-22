<div>
    <style>
        .sclist{
            list-style: none;
        }
        .sclist li{
            line-height: 33px;
            border-bottom: 1px solid #ccc;
        }
        .slink i{
            font-size: 16px;
            margin-left: 12px;
        }
    </style>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <p class="pull-left">All Categories</p>
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.Add')}}" class="btn btn-success pull-right">Add Category</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                           <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category Name</th>
                                    <th>Slug</th>
                                    <th>Sub Category</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($categories as $category)
                                    <tr>
                                        <td>{{$category->id}}</td>
                                        <td>{{$category->name}}</td>
                                        <td>{{$category->slug}}</td>
                                        <td>
                                            <ul class="sclist">
                                                @foreach ($category->subcategories as $scategory)
                                                    <li><i class="fa fa-caret-right"></i> {{$scategory->name}}
                                                        <a href="{{route('admin.Edit',['category_slug'=>$category->slug,'scategory_slug'=>$scategory->slug])}}" class="slink"><i class="fa fa-edit"></i></a>
                                                        <a href="#" onclick="confirm('Are you sure to Delete this Subcategory?') || event.stopImmediatePropagation()" wire:click.prevent="deleteSubcategory({{$scategory->id}})" class="slink"><i class="fa fa-times text-danger"></i></a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </td>
                                        <td>
                                            <a href="{{route('admin.Edit',['category_slug'=>$category->slug])}}"><i class="fa fa-edit fa-2x"></i></a>
                                            <a href="#" onclick="confirm('Are you sure to Delete this Category?') || event.stopImmediatePropagation()" wire:click.prevent="deleteCategory({{$category->id}})"><i class="fa fa-times fa-2x text-danger" style="margin-left: 10px;"></i></a>
                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>
                        <div class="wrap-pagination-info">
                            {{$categories->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
