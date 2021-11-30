 @extends('layouts.master')
 @section('content')
 <!-- <section class="main-section"> -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h1 class="dashboard-title">My Profile</h1>
                </div>
            </div>
        </div>


        <!-- Profile Html -->


        <div class="container-fluid section-padding">
            <div class="row">
                <div class="col-12">
                    <div class="card profile-card">
                        <div class="card-body">
                            <div class="profile-header">
                                <div class="row">
                                    <div class="col-7 col-lg-6 profName">
                                        <div class="profile-img">
                                            <img src="{{asset('backend/'.Auth()->user()->photo)}}" alt="User Image">
                                        </div>
                                        <h1>{{Auth()->user()->name}}</h1>
                                        @if(Auth()->user()->is_super_admin==1)
                                        <p>Super Admin</p>
                                        @elseif(Auth()->user()->is_admin==1)
                                        <p>Admin</p>
                                        @else
                                        <p>User</p>
                                        @endif
                                    </div>
                                    <div class="col-5 col-lg-6 text-end">
                                        <a class="editProfleLink" href="{{route('edit.profile')}}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="none"
                                                viewBox="0 0 32 32">
                                                <path fill="#828282"
                                                    d="M6.667 24h5.653a1.333 1.333 0 00.947-.387l9.226-9.24 3.787-3.706a1.333 1.333 0 000-1.894l-5.653-5.72a1.335 1.335 0 00-1.894 0l-3.76 3.774-9.253 9.24a1.333 1.333 0 00-.387.946v5.654A1.333 1.333 0 006.667 24zM19.68 5.88l3.773 3.773-1.893 1.894-3.773-3.774L19.68 5.88zM8 17.56l7.907-7.907 3.773 3.774-7.907 7.906H8V17.56zm20 9.107H4a1.333 1.333 0 100 2.666h24a1.333 1.333 0 100-2.666z" />
                                            </svg>
                                            Edit Profile</a>
                                    </div>
                                </div>
                            </div>
                            <div class="profile-footer">
                                <div class="row">
                                    <div class="col-6 col-lg-4">
                                        <p>Phone</p>
                                        <h3>{{Auth()->user()->contact}}</h3>
                                    </div>
                                    <div class="col-6 col-lg-4">
                                        <p>Email</p>
                                        <h3>{{Auth()->user()->email}}</h3>
                                    </div>
                                    <div class="col-6 col-lg-4">
                                        <p>Gender</p>
                                        <h3>{{Auth()->user()->gender}}</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <!-- </section> -->
    @endsection

   @section('pageScripts')

    <script>
        $(document).ready(function() {
       

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
    // console.log
    switch(type){
        case 'info':
        toastMixin.fire({
                                icon: 'info',
                                animation: true,
                                title: "{{ Session::get('message') }}"
                            });
           

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

    });
    </script>
    @endsection
