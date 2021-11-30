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
    <title>Login</title>
    <link rel="icon" href="{{asset('backend/'.$logo->fav_icon)}}">



    <!-- Bootstrap 5.1.0 CSS -->
    <link rel="stylesheet" href="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.css')}}">
    <!-- Custom Style -->
    <link rel="stylesheet" href="{{asset('backend/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('backend/assets/css/responsive.css')}}">



</head>

<body>
    


    <!-- Login Form -->

    <section class="container-fluid form-padding">
        <div class="form-container">
            <div class="row">
                <div class="col-12 form-header">
                    <h1><img src="{{asset('backend/'.$logo->logo)}}" alt="{{$logo->app_name}}" class='app_logo'></h1>
                    <p>
                        Log In to
                        Your Account
                    </p>
                </div>
            </div>
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
                    @if (session()->has('success'))
                        <div class="alert alert-info text-center text-dark mt-3 alert-solid alert-dismissible shadow-sm p-3 mb-5 rounded"
                            role="alert">
                            {{ session('success') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif



            <div class="row">
                <form class="loginForm" action="{{ route('auth-login') }}" method="POST">@csrf

                <div class="col-12 form-input">
                    <label for="email">Your Email</label>
                    <input class="form-control" type="email" placeholder="Your Email Address" id="email" name="email">
                </div>
                <div class="col-12 form-input">
                    <label for="password">Your Password</label>
                    <input class="form-control loginPassword" type="password" placeholder="Your Password" id="password"
                        name="password">
                    <span class="eye-btn passToggleLogin1Btn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#949494"
                                d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z" />
                        </svg>
                    </span>
                </div>

                <div class="col-12 form-input">
                    <!-- <a href="dashboard.html"> -->
                        <button type="submit" class="submit-btn">Log In</button>
                    <!-- </a> -->
                </div>
                <div class="col-12 forgotPass">
                    <a href="{{ route('forgot.password') }}">Forgot Password?</a>
                </div>
                {{-- <div class="col-12 create-account">
                    <p>Don't have any account? <a href="signup.html">Create One!</a></p>
                </div> --}}
            </form>
            </div>
        </div>
    </section>






    <!-- jquery CDNJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Bootstrap 5.1.0 JS -->
    <script src="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.js')}}"></script>
    <!-- Custom JS -->
    <script src="{{asset('backend/assets/js/style.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.15.5/sweetalert2.min.js"
integrity="sha512-+uGHdpCaEymD6EqvUR4H/PBuwqm3JTZmRh3gT0Lq52VGDAlywdXPBEiLiZUg6D1ViLonuNSUFdbL2tH9djAP8g=="
crossorigin="anonymous"></script>

        <script>
        $(document).ready(function() {
            $(".loginForm").validate({
                rules: {
                    email: {
                        required: true,
                        email: true,
                    },
                    password: {
                        required: true,
                    },
                },
                messages: {
                    email: {
                        required: 'Plese enter your email',
                        email: 'Email must be a valid email address',
                    },
                    password: {
                        required: 'Plese enter your password',
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