 @extends('layouts.master')
 @section('content')
     <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h1 class="dashboard-title">Edit Profile</h1>
                </div>
            </div>
        </div>


        <!-- Profile Html -->


        <div class="container-fluid section-padding">

            <div class="row">
                <div class="col-12">
                    <div class="card profileEdit-card">
                        <div class="card-body">
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
                            <form action="{{route('update.profile')}}" method="post" enctype="multipart/form-data">@csrf
                            

                            <div class="row">
                                <!-- profile image updated code -->
                                <div class="col-12">
                                    <div class="profile-editImgBx  position-relative">
                                        <img src="{{url('backend/'.auth()->user()->photo)}}" alt="profile_image" id="uplodedImg">
                                        <label class="file-upload-label" for="fileUpload">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                viewBox="0 0 16 16" fill="none">
                                                <path
                                                    d="M9.37333 6.01333L9.98667 6.62667L3.94667 12.6667H3.33333V12.0533L9.37333 6.01333ZM11.7733 2C11.6067 2 11.4333 2.06667 11.3067 2.19333L10.0867 3.41333L12.5867 5.91333L13.8067 4.69333C14.0667 4.43333 14.0667 4.01333 13.8067 3.75333L12.2467 2.19333C12.1133 2.06 11.9467 2 11.7733 2ZM9.37333 4.12667L2 11.5V14H4.5L11.8733 6.62667L9.37333 4.12667Z"
                                                    fill="#1A1A1A" />
                                            </svg>
                                        </label>
                                        <input type="file" id="fileUpload" accept="image/*">
                                    </div>
                                </div>

                                <div class="col-12 form-input">
                                    <label for="email">Your Name</label>
                                    <input class="form-control" type="text" placeholder="Your Name" id="name"
                                        name="name" value="{{auth()->user()->name}}">
                                </div>

                                <div class="col-12 form-input">
                                    <label for="email">Your Email</label>
                                    <input class="form-control" type="email" placeholder="Your Email Address" id="email"
                                        name="email" value="{{auth()->user()->email}}" readonly="">
                                </div>

                                <div class="col-12 form-input">
                                    <label for="phone">Your Contact Number</label>
                                    <input class="form-control" value="{{auth()->user()->contact}}" type="text" placeholder="Your Contact Number" id="phone"
                                        name="contact">
                                </div>
                            <div class="col-12 form-input">
                            <label for="gender">Gender</label>
                            <select class="form-control" name="gender" >
                                <option value="">Select Gender</option>
                                
                                <option value="Male" {{auth()->user()->gender=='Male'?'selected':''}}>Male</option>
                                <option value="Female" {{auth()->user()->gender=='Female'?'selected':''}}>Female</option>
                               
                            </select>
                            </div>

                                
                                {{-- <div class="profile-editImgBx"> --}}
                            <!-- <div class="mb-5 form-input" >
                                {{-- <img src="{{url('backend/'.auth()->user()->photo)}}" alt="{{auth()->user()->name}}"> --}}
                                
                           
                            <div style="width: 200px;  height: 200px !important;">
                                 <input type="file" name="image" class="dropify" id="profile_image" accept="image/*"/>
                            </div>

                            </div> -->
                            
                   

                                <div class="col-12 form-input">
                                    <a href="profile.html"><button type="submit" class="submit-btn">Save
                                            Profile</button></a>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection

    @section('pageScripts')
        <script>
             $('.dropify').dropify();
              var data = {!! auth()->user() !!};
        var path = "{{ url('/') }}" + '/backend/';
        // console.log(path);
        if (data.photo) {
            var img_url = path + data.photo;
            //$("#profile_image").attr("data-height", 275);
            //$("#profile_image").attr("data-min-width", 450);
            //$("#profile_image").attr("data-default-file", img_url);

            $('.dropify-wrapper').removeClass("dropify-wrapper").addClass(
                "dropify-wrapper has-preview");
            $(".dropify-preview").css('display', 'block');
            $('.dropify-render').html('').html('<img src=" ' + img_url +
                '">')
        } else {
            $(".dropify-preview .dropify-render img").attr("src", "");
        }
        $('.dropify').dropify();


             $(".loginForm").validate({
                rules: {
                    name: {
                        required: true,
                    }, 
                    contact: {
                        required: true,
                    },
                    gender: {
                        required: true,
                    },
                },
                messages: {
                    name: {
                        required: 'Plese enter your name',
                    },
                    contact: {
                        required: 'Plese enter your contact number',
                    },
                    gender: {
                        required: 'Plese choose your gender',
                    },
                }
            });
        // });



        </script>
     @endsection
