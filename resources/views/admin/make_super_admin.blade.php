<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make Super Admin</title>


    <!-- Bootstrap 5.1.0 CSS -->
    <link rel="stylesheet" href="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.css')}}">

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css"
        integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
     <link rel="stylesheet" href="https://cdn.datatables.net/1.11.2/css/jquery.dataTables.min.css" />
     
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.15.5/sweetalert2.min.css"
        integrity="sha512-gX6K9e/4ewXjtn8Q/oePzgIxs2KPrksR4S2NNMYLxenvF7n7eNon9XbqQxb+5jcqYBVCcncIxqF6fXJYgQtoAg=="
        crossorigin="anonymous" />
    <!-- Custom Style -->
    <link rel="stylesheet" href="{{asset('backend/assets/css/style.css')}}">


</head>

<body>


    <!-- Login Form -->

    <section class="container-fluid form-padding">
       
<!-- <div class="container-fluid">
            <div class="row">
                <div class="col-6">
                    <h1 class="dashboard-title">Users</h1>
                </div>
                
            </div>
        </div> -->

        <div class="container-fluid section-padding">

            <div class="row mb-5 g-4">


                <div class="col-12">
               



                    <div class="card summary-card" style="width: 100%">
                        <div class="card-body">

                            <div class="row">
                                <div class="col-12">
                                    <div class=" ">
                                        <table
                                            class="table table-borderless align-middle text-center dashboardTable customTable" id="userTable">
                                            <thead>
                                                <tr >
                                                   
                                                    <th scope="col">Image</th>
                                                    <th scope="col">Name</th>
                                                    <th scope="col">Contact Number</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Is Super Admin</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                @if(!empty($users))

                                                @foreach($users as $user)

                                                 <tr class="item{{ $user->id }}">
                                                   


                                                   
                                                    <td><img class="img-fluid" src="{{asset('backend/'.$user->photo)}}" style="width: 60px; height: 55px;"></td>
                                                    <td>{{$user->name}}</td>
                                                    <td>{{$user->contact}}</td>
                                                    <td>{{$user->email}}</td>
                                                    

                                                    <td><div
                                                            class="form-check form-switch d-flex justify-content-center">
                                                            <input class="form-check-input is_admin status{{ $user->id }}"  type="checkbox"  {{ $user->is_super_admin==1 ? 'checked' : '' }} {{ Auth::user()->id==$user->id ? 'disabled' : '' }} data-id="{{$user->id}}">
                                                        </div></td>
                                                   
                                                   
                                                </tr>
                                                @endforeach
                                                @endif
                                            </tbody>
                                          
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>


   
   

   


    </section>





<!-- jquery CDNJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Bootstrap 5.1.0 JS -->
    <script src="{{asset('backend/assets/bootstrap-5.1.0/bootstrap.min.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"
        integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.15.5/sweetalert2.min.js"
integrity="sha512-+uGHdpCaEymD6EqvUR4H/PBuwqm3JTZmRh3gT0Lq52VGDAlywdXPBEiLiZUg6D1ViLonuNSUFdbL2tH9djAP8g=="
crossorigin="anonymous"></script>

    <!-- Custom JS -->
    
    <script src="{{asset('backend/assets/js/style.js')}}"></script>

        <script>
      var config = {
            routes: {
                
                make_superadmin: "{!! route('is.superadmin') !!}",
            }
        };
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
         $(document).ready(function() {
            // data table
            $('#userTable').DataTable({
                "ordering": false,
                scrollX: true,
            });
            // dropify table
            $('.dropify').dropify();
        });


          // check if admin status change
 $(document.body).on('click','.is_admin',function(){
              var id=$(this).attr('data-id');
                if($(this).is(":checked")){


                      Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Change this status!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type: "POST",
                    url: config.routes.make_superadmin,
                    data: {
                      value:1,
                        id: id,
                        _token: "{{ csrf_token() }}"
                    },
                    dataType: 'JSON',
                    success: function(response) {

                         if (response.success === true) {
                            Swal.fire(
                                'Status Changed!',
                                "" + response.data.message + "",
                                'success'
                            )
                            // swal("Done!", response.data.message, "success");
                              // $('.change_role'+response.data.id).text(response.data.role)
                        } else {
                            Swal.fire("Error!", "Can't change status", "error");
                        }
                    }
                });
                }
                else if (
                      /* Read more about handling dismissals below */
                      result.dismiss === Swal.DismissReason.cancel
                    ) {
                  // alert('hi');
                      if ($('.status' + id + "").prop("checked") == true) {
                            // alert('hello')
                            $('.status' + id + "").prop('checked', false);
                        } 
                        else if ($('.status' + id + "").prop("checked") == false) {
                            // alert('sds')
                            $('.status' + id + "").prop('checked', true);
                        }
                    }

                


        })


            }
                 


                else if($(this).is(":not(:checked)")){



                      Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Change this status!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type: "POST",
                    url: config.routes.make_superadmin,
                    data: {
                      value:0,
                        id: id,
                        _token: "{{ csrf_token() }}"
                    },
                    dataType: 'JSON',
                    success: function(response) {

                         if (response.success === true) {
                            Swal.fire(
                                'Status Changed!',
                                "" + response.data.message + "",
                                'success'
                            )
                            // swal("Done!", response.data.message, "success");
                           // $('.change_role'+response.data.id).text(response.data.role)
                        } else {
                            Swal.fire("Error!", "Can't change status", "error");
                        }
                    }
                });
                }
                else if (
                      /* Read more about handling dismissals below */
                      result.dismiss === Swal.DismissReason.cancel
                    ) {
                  // alert('hi');
                      if ($('.status' + id + "").prop("checked") == true) {
                            // alert('hello')
                            $('.status' + id + "").prop('checked', false);
                        } 
                        else if ($('.status' + id + "").prop("checked") == false) {
                            // alert('sds')
                            $('.status' + id + "").prop('checked', true);
                        }
                    }

               


        })



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