<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <p>Sale Settings</p>
                            </div>
                            <div class="col-md-6">
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form wire:submit.prevent="updateSale" class="form-horizontal">
                          <div class="form-group">
                            <label class="col-md-4 control-label">Sale Status</label>
                            <div class="col-md-4">
                              <select class="form-control" wire:model = "status">
                                  <option value="0">Inactive</option>
                                  <option value="1">Active</option>
                              </select>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Sale Date</label>
                            <div class="col-md-4">
                              <input type="text" id="sale-date" class="form-control input-md" placeholder="YYYY/MM/DD H:M:S" wire:model="sale_date">
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4">
                             <button type="submit" class="btn btn-success">Submit</button>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@push('scripts')
    <script>
        $(function(){
            $('#sale-date').datetimepicker({
                format : 'Y-MM-DD h:m:s',
            })
            .on('dp.change',function(ev){
               var data = $('#sale-date').val();
               @this.set('sale_date',data);
            });
        });
    </script>
@endpush


