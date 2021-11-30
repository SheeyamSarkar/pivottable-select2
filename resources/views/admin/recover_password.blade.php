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
    <title>Recover Password Final Step</title>
    <link rel="icon" href="{{asset('backend/'.$logo->fav_icon)}}">


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
                <form class="form-horizontal m-t-30 loginForm" action="{{route('reset.password.post')}}" method="POST">@csrf
                        <input type="hidden" name="token" value="{{ $token }}">
                <div class="col-12 form-input">
                    <label for="newPassword">New Password</label>
                    <input class="form-control newPassword" type="text" placeholder="Your Password" id="newPassword"       name="password">
                    <span class="eye-btn passToggleLogin1BtnNew">
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


                <div class="col-12 form-input mb-5">
                    <button type="submit" class="submit-btn">Save Password</button>
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
            $(".loginForm").validate({
                rules: {
                    password: {
                        required: true,
                        minlength: 6,
                        maxlength:20,
                    },
                    password_confirmation: {
                        equalTo: '[name="password"]'
                    },
                },
                messages: {
                     password: {
                        required: 'Plese enter your password',
                        minlength: 'Password must atleast 6 charecters long',
                    },
                }
            });
        });
    </script>
</body>

</html>