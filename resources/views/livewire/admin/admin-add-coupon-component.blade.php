<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <p>Add New Coupon</p>
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.coupons')}}" class="btn btn-success pull-right">All Coupons</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form wire:submit.prevent="storeCoupon" class="form-horizontal">
                          <div class="form-group">
                              <label class="col-md-4 control-label">Coupon Code</label>
                              <div class="col-md-4">
                                <input type="text" class="form-control input-md" placeholder="Coupon Code" wire:model="code">
                                @error('code')<span class="text-danger">{{$message}}</span> @enderror <br>
                              </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Coupon Type</label>
                            <div class="col-md-4">
                              <select class="form-control" wire:model="type">
                                  <option value="">Select</option>
                                  <option value="percent">Percent</option>
                                  <option value="fixed">Fixed</option>
                              </select>
                              @error('type')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Coupon Value</label>
                            <div class="col-md-4">
                              <input type="text" class="form-control input-md" placeholder="Coupon Value" wire:model="value">
                              @error('value')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Cart Value</label>
                            <div class="col-md-4">
                              <input type="text" class="form-control input-md" placeholder="Cart Value" wire:model="cart_value">
                              @error('cart_value')<span class="text-danger">{{$message}}</span> @enderror <br>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-4 control-label">Expiry Date</label>
                            <div class="col-md-4" wire:ignore>
                              <input type="text" id="expiry_date" class="form-control input-md" placeholder="Expiry Date" wire:model="expiry_date">
                              @error('expiry_date')<span class="text-danger">{{$message}}</span> @enderror <br>
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
            $('#expiry_date').datetimepicker({
                format: 'Y-MM-DD'
            })
            .on('dp.change', function(ev){
                var data = $('#expiry_date').val();
                @this.set('expiry_date',data);
            })
        })
    </script>
@endpush

