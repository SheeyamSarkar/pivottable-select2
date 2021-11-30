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
    <title>Recover Password Step-2</title>
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

                <div class="col-12 text-center">
                    <svg class="message-icon" xmlns="http://www.w3.org/2000/svg" width="149" height="137" fill="none"
                        viewBox="0 0 149 137">
                        <path class="bgPath" fill="#262626" fill-rule="evenodd"
                            d="M74.823.825c13.465 3.232 17.11 21.031 28.743 28.536 12.828 8.276 33.395 3.77 41.432 16.738 8.019 12.94 2.491 30.421-3.548 44.392-5.673 13.125-17.005 22.274-28.781 30.401-11.507 7.942-23.864 15.216-37.846 15.579-14.206.37-27.78-5.271-39.305-13.574-11.555-8.325-19.687-19.994-25.39-33.034C3.881 75.58-3.11 59.97 1.48 45.072c4.612-14.97 19.014-24.33 32.438-32.428C46.37 5.13 60.675-2.57 74.823.825z"
                            clip-rule="evenodd" />
                        <g clip-path="url(#clip0)">
                            <path class="frontPath" fill="#BDBDBD"
                                d="M127.285 99.286c.041-.008.081-.019.122-.03.034-.008.069-.015.103-.026.039-.012.078-.027.116-.04.034-.013.069-.024.102-.038.037-.015.072-.033.107-.05.034-.016.07-.031.103-.05.034-.018.066-.038.099-.058.034-.02.068-.039.101-.06.035-.024.067-.05.101-.075.028-.022.057-.041.085-.064.051-.042.1-.087.147-.133.009-.008.018-.015.026-.024l.025-.028c.046-.046.09-.094.132-.145.024-.03.045-.06.068-.091.023-.032.048-.062.07-.095.023-.035.044-.071.065-.107.018-.03.037-.06.054-.092.02-.036.036-.074.053-.11l.047-.1c.015-.036.027-.073.04-.11.013-.036.027-.072.038-.108.011-.037.019-.075.029-.113.009-.037.02-.074.027-.112.009-.044.014-.089.021-.134.004-.031.01-.063.013-.095a2.33 2.33 0 00.012-.236V46.348a2.368 2.368 0 00-2.368-2.368H52.232c-.021 0-.042.003-.062.003a2.413 2.413 0 00-.586.09 2.432 2.432 0 00-.525.22 2.667 2.667 0 00-.293.197 2.745 2.745 0 00-.263.243l-.045.046-.023.029a2.33 2.33 0 00-.085.106l-.06.08a2.565 2.565 0 00-.07.109c-.019.03-.038.06-.055.09-.02.036-.038.072-.056.108l-.048.1c-.015.036-.029.073-.042.11-.014.035-.028.07-.04.106l-.03.11c-.011.038-.022.076-.03.114-.008.036-.013.072-.02.108a2.754 2.754 0 00-.019.123c-.004.034-.006.07-.008.104a2.26 2.26 0 00-.007.133l-.002.038v14.604a2.368 2.368 0 104.736 0v-9.345l21.054 18.64c-.11.078-.216.163-.315.261l-20.74 20.74V75.685a2.368 2.368 0 10-4.735 0v2.894H37.628a2.368 2.368 0 100 4.736h12.235v13.649a2.368 2.368 0 002.368 2.368h74.591c.078 0 .156-.004.234-.012.036-.003.071-.01.107-.015.041-.006.082-.01.122-.019zm-2.83-8.039l-20.74-20.74c-.013-.013-.027-.023-.041-.036l15.592-13.228a2.368 2.368 0 00-3.064-3.611L89.56 76.235 58.478 48.716h65.977v42.531zm-45.767-17.39c.168-.169.305-.357.413-.557l8.856 7.841a2.364 2.364 0 003.102.033l9.026-7.658c.082.12.175.235.281.341l20.74 20.74H57.948l20.74-20.74z" />
                            <path class="frontPath" fill="#BDBDBD"
                                d="M22.368 70.949h39.993a2.368 2.368 0 100-4.736H22.368a2.368 2.368 0 100 4.736zM26.512 57.9h17.957a2.368 2.368 0 100-4.737H26.512a2.368 2.368 0 100 4.736zM39.733 88.577H22.368a2.368 2.368 0 100 4.736h17.365a2.368 2.368 0 100-4.736z" />
                        </g>
                        <defs>
                            <clipPath id="clip0">
                                <path fill="#fff" d="M0 0h109.191v109.191H0z" transform="translate(20 17.061)" />
                            </clipPath>
                        </defs>
                    </svg>

                </div>

                <div class="col-12 resendEmIconBox">
                    <p>A mail has been sent to your email address</p>
                </div>


                <div class="col-6 form-input">
                    <a href="{{ route('login') }}"><button type="submit" class="cancel-btn">Cancel</button></a>
                </div>

                <div class="col-6 form-input">
                    <a href="{{ route('resend.email', [ 'token'=> $token]) }}"><button type="submit" class="submit-btn">Resend Mail</button></a>
                </div>

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

</body>

</html>