<!DOCTYPE html>
<html lang="en">
@php
    use App\Http\Controllers\SettingsController;
    $logo = SettingsController::getContents();
@endphp
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recover Password Step-1</title>
    <link rel="icon" href="{{asset('backend/'.$logo->fav_icon)}}">



    <!-- Bootstrap 5.1.0 CSS -->
    <link rel="stylesheet" href="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.css')}}">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.15.5/sweetalert2.min.css"
        integrity="sha512-gX6K9e/4ewXjtn8Q/oePzgIxs2KPrksR4S2NNMYLxenvF7n7eNon9XbqQxb+5jcqYBVCcncIxqF6fXJYgQtoAg=="
        crossorigin="anonymous" />
    <!-- Custom Style -->
    <link rel="stylesheet" href="{{asset('backend/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('backend/assets/css/responsive.css')}}">



</head>

<body>
      


    <!-- Login Form -->
 
    <section class="container-fluid form-padding">
        @if ($errors->any())
                    <div class=" mt-3">
                        <div class="font-medium text-red-600 text-danger">
                            {{ __('Whoops! Something went wrong.') }}
                        </div>

                        <ul class="mt-3 list-disc list-inside text-danger text-sm text-red-600">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif   
                    {{-- <div class="alert alert-info" role="alert">
                        Enter your Email and instructions will be sent to you!
                    </div> --}}
                   
        <div class="form-container">
            <div class="row">
                <div class="col-12 form-header">
                    <h1><img src="{{asset('backend/'.$logo->logo)}}" alt="{{$logo->app_name}}" class='app_logo'></h1>
                    <p>
                        Recover Your Password
                    </p>
                </div>
            </div>

            <div class="row">
                <form action="{{ route('forget.password.post') }}" class="reset_password" method="POST">@csrf

                <div class="col-12 form-input">
                    <label for="email">Your Email</label>
                    <input class="form-control" type="email" placeholder="Your Email Address" id="email" name="email">
                </div>

                <div class="col-12 form-input">
                    <button type="submit" class="submit-btn">Proceed</button>
                </div>
                 </form>
                <div class="col-12 create-account pt-5">
                    <p>Remember your password? <a href="{{ route('login') }}">Login here!</a></p>
                </div>

            </div>
        </div>
    </section>






    <!-- jquery CDNJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.15.5/sweetalert2.min.js"
integrity="sha512-+uGHdpCaEymD6EqvUR4H/PBuwqm3JTZmRh3gT0Lq52VGDAlywdXPBEiLiZUg6D1ViLonuNSUFdbL2tH9djAP8g=="
crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
    <!-- Bootstrap 5.1.0 JS -->
    <script src="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.js')}}"></script>
    <!-- Custom JS -->
    <script src="{{asset('backend/assets/js/style.js')}}"></script>
      
    <script>
        $(document).ready(function() {
            $(".reset_password").validate({
                rules: {
                    email: {
                        required: true,
                        email: true,
                    },

                },
                messages: {
                    email: {
                        required: 'Plese enter your email',
                        email: 'Email must be a valid email address',
                    },
                }
            });
        });

        var toastMixin = Swal.mixin({
            toast: true,
            title: 'General Title',
            animation: false,
            position: 'top-right',
            showConfirmButton: false,
            timer: 5000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        });

        @if(Session::has('message'))
        // alert(Session::has('message')
    var type = "{{ Session::get('alert-type', 'info') }}";
    switch(type){
        case 'info':
        toastMixin.fire({
                                icon: 'info',
                                animation: true,
                                title: "{{ Session::get('message') }}"
                            });
            // toastr.info("{{ Session::get('message') }}");

            break;

        case 'warning':
            toastMixin.fire({
                                icon: 'warning',
                                animation: true,
                                title: "{{ Session::get('message') }}"
                            });
            break;

        case 'success':
            toastMixin.fire({
                                icon: 'success',
                                animation: true,
                                title: "{{ Session::get('message') }}"
                            });
            break;

        case 'error':
            toastMixin.fire({
                                icon: 'error',
                                animation: true,
                                title: "{{ Session::get('message') }}"
                            });
            break;
    }
    @endif

    </script>
</body>

</html>