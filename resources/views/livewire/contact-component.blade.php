<div>
    <main id="main" class="main-site left-sidebar">

        <div class="container">

            <div class="wrap-breadcrumb">
                <ul>
                    <li class="item-link"><a href="#" class="link">home</a></li>
                    <li class="item-link"><span>Contact us</span></li>
                </ul>
            </div>
            <div class="row">
                <div class=" main-content-area">
                    <div class="wrap-contacts ">
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="contact-box contact-form">
                                <h2 class="box-title">Leave a Message</h2>
                                @if (Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <form wire:submit.prevent="sendMessage" name="frm-contact">

                                    <label for="name">Name<span>*</span></label>
                                    <input type="text" value="" id="name" name="name" wire:model="name">
                                     @error('name') <span class="text-danger">{{$message}}</span> @enderror
                                    <label for="email">Email<span>*</span></label>
                                    <input type="text" value="" id="email" name="email" wire:model="email">
                                    @error('emai') <span class="text-danger">{{$message}}</span> @enderror
                                    <label for="phone">Number Phone</label>
                                    <input type="text" value="" id="phone" name="phone" wire:model="phone">
                                    @error('phone') <span class="text-danger">{{$message}}</span> @enderror
                                    <label for="comment">Comment</label>
                                    <textarea name="comment" id="comment" wire:model="comment"></textarea>
                                    @error('comment') <span class="text-danger">{{$message}}</span> @enderror
                                    <input type="submit" name="ok" value="Submit" >

                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="contact-box contact-info">
                                <div class="wrap-map">
                                    <iframe src="{{$settings->map}}" width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                                <h2 class="box-title">Contact Detail</h2>
                                <div class="wrap-icon-box">

                                    <div class="icon-box-item">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                        <div class="right-info">
                                            <b>Email</b>
                                            <p>{{$settings->email}}</p>
                                        </div>
                                    </div>

                                    <div class="icon-box-item">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                        <div class="right-info">
                                            <b>Phone</b>
                                            <p>{{$settings->phone}}</p>
                                        </div>
                                    </div>

                                    <div class="icon-box-item">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <div class="right-info">
                                            <b>Address</b>
                                            <p>{{$settings->address}}</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end main products area-->

            </div><!--end row-->

        </div><!--end container-->

    </main>

</div>
{{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.50707673964!2d90.42628521411216!3d23.76495098458223!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c78a4f1fe899%3A0x50df1cc3411df811!2sB%20Block%2C%20Main%20Rd%2C%20Dhaka%201212!5e0!3m2!1sen!2sbd!4v1650385490570!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> --}}
