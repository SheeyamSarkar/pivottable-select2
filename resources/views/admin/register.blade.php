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
    <title>Sign Up</title>
    <link rel="icon" href="{{asset('backend/'.$logo->fav_icon)}}">



    <!-- Bootstrap 5.1.0 CSS -->
    <link rel="stylesheet" href="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css"
        integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
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
        <div class="form-container">
            <div class="row">
                <div class="col-12 form-header">
                    <h1><img src="{{asset('backend/'.$logo->logo)}}" alt="{{$logo->app_name}}" class='app_logo'></h1>
                    <p>
                        Create Your Account
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
                <form id="register_form" action="{{ route('user.sign.up') }}" method="POST" enctype="multipart/form-data">@csrf
                <div class="col-12 form-input">
                    <label for="email">Your Name</label>
                    <input class="form-control" type="text" placeholder="Your Name" id="name" name="name" value="{{$user->name}}">
                </div>
                <div class="col-12 form-input">
                    <label for="email">Your Email</label>
                    <input class="form-control" type="email" placeholder="Your Email Address" readonly="" id="email" name="email" value="{{$user->email}}">
                </div>
                <div class="col-12 form-input">
                    <label for="email">Your Contact Number</label>
                    <input class="form-control" type="text" placeholder="Your Contact Number" id="phone" name="contact">
                </div>

                <div class="col-12 form-input">
                            <label for="gender">Gender</label>
                            <select class="form-control" name="gender" >
                                <option value="">Select Gender</option>
                                
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                               
                            </select>
                        </div>

                <div class="col-12 form-input">
                    <label for="password">Your Password</label>
                    <input class="form-control loginPassword" type="text" placeholder="Your Password" name="password" id="password"
                        name="password">
                    <span class="eye-btn passToggleLogin1Btn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#949494"
                                d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z" />
                        </svg>
                    </span>
                </div>

                <div class="col-12 form-input">
                    <label for="confirmPassword">Confirm Password</label>
                    <input class="form-control confirmPassword" type="text" placeholder="Your Password"
                        id="confirmPassword" name="password_confirmation">
                    <span class="eye-btn passToggleLogin1BtnConf">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#949494"
                                d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z" />
                        </svg>
                    </span>
                </div>

                 <div class="col-12 form-input">
                    <label for="image">Image(200*200)</label>
                    <input type="file" name="image" class="dropify" />
                </div>

                <div class="col-12 form-input pt-3">
                   <button type="submit" class="submit-btn">Create Account</button>
                </div>
                </form>

                <div class="col-12 create-account pt-5">
                    <p>Already have an account? <a href="{{route('login')}}">Log In!</a></p>
                </div>
            </div>
        </div>
    </section>






    <!-- jquery CDNJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"
        integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.15.5/sweetalert2.min.js"
integrity="sha512-+uGHdpCaEymD6EqvUR4H/PBuwqm3JTZmRh3gT0Lq52VGDAlywdXPBEiLiZUg6D1ViLonuNSUFdbL2tH9djAP8g=="
crossorigin="anonymous"></script>
    <!-- Bootstrap 5.1.0 JS -->
    <script src="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.js')}}"></script>
    <!-- Custom JS -->
    <script src="{{asset('backend/assets/js/style.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>

        <script>
        $(document).ready(function() {
            // dropify table
            $('.dropify').dropify();
            $("#register_form").validate({
               rules: {
                    name: {
                        required: true,
                    },
                    email: {
                        required: true,
                        email: true,
                    },
                    contact: {
                        required: true,
                        digits: true,
                        maxlength: 11,
                    }, 
                   
                    gender: {
                        required: true,
                    },
                    image: {
                        required: true,
                    },
                    password: {
                        minlength : 6,
                        required: true,
                    },

                    password_confirmation : {
                    required: true,
                    minlength : 6,
                    equalTo : "#password"
                }
                },
                messages: {
                    email: {
                        required: 'Plese enter your email',
                        email: 'Email must be a valid email address',
                    },
                    name: {
                        required: 'Plese enter your name',
                    },
                    phone: {
                        required: 'Plese enter your phone',
                    },
                    designation: {
                        required: 'Plese enter your designation',
                    },
                    gender: {
                        required: 'Plese choose your gender',
                    },
                    profile_image: {
                        required: 'Plese enter your image',
                    },
                    password: {
                        required: 'Plese enter your password',
                    },
                    password_confirmation: {
                        required: 'Plese enter your password again',
                    },
                }
            });
        });
    </script>

</body>

</html>