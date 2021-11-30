@extends('layouts.master')
@section('content')

<div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-6">
                    <h1 class="dashboard-title">Users</h1>
                </div>
                @if(Auth::user()->is_super_admin==1 )
                <div class="col-6 dashboard-title text-end">
                    <button data-bs-toggle="modal" data-bs-target="#userAddModal" class="btn-outline">+ Add User</button>
                </div>
                @endif
            </div>
        </div>

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
                                                    <th scope="col">Role</th>
                                                    <th scope="col">Name</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Registered</th>
                                                    <th scope="col">Is Admin</th>
                                                    <th scope="col" class="text-center">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                @if(!empty($users))

                                                @foreach($users as $user)

                                                 <tr class="item{{ $user->id }}">
                                                    @if($user->is_admin==1)
                                                 <td class="change_role{{$user->id}}">Admin</td>
                                                 
                                                     @else
                                                     <td class="change_role{{$user->id}}">User</td>
                                                     @endif


                                                   
                                                    <td>{{$user->name}}</td>
                                                    <td>{{$user->email}}</td>
                                                     @if($user->is_verified==1)
                                                     <td class="verified_status{{$user->id}}"><span class="acceptStatus"><svg
                                                                xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="none" viewBox="0 0 16 16">
                                                                <path fill="#6FCF97" fill-rule="evenodd"
                                                                    d="M13.805 4.329c.26.26.26.682 0 .942L6.47 12.605a.667.667 0 01-.942 0L2.195 9.27a.667.667 0 11.943-.942L6 11.19l6.862-6.861c.26-.26.682-.26.943 0z"
                                                                    clip-rule="evenodd" />
                                                            </svg>
                                                            Registered</span></td>
                                                     @else
                                                     <td class="verified_status{{$user->id}}"> <span class="pendingStatus">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="none" viewBox="0 0 16 16">
                                                                <path fill="#F2C94C" fill-rule="evenodd"
                                                                    d="M8 2a6 6 0 100 12A6 6 0 008 2zM.667 8a7.333 7.333 0 1114.666 0A7.333 7.333 0 01.667 8z"
                                                                    clip-rule="evenodd" />
                                                                <path fill="#F2C94C" fill-rule="evenodd"
                                                                    d="M8 3.333c.368 0 .667.299.667.667v3.588l2.298 1.149a.667.667 0 11-.597 1.193L7.702 8.596A.667.667 0 017.333 8V4c0-.368.299-.667.667-.667z"
                                                                    clip-rule="evenodd" />
                                                            </svg>
                                                            PENDING</span></td>
                                                    @endif

                                                    <td><div
                                                            class="form-check form-switch d-flex justify-content-center">
                                                            <input class="form-check-input is_admin status{{ $user->id }}"  type="checkbox" {{ Auth::user()->is_super_admin!==1 ? 'disabled' : '' }} {{ $user->is_admin==1 ? 'checked' : '' }} {{ Auth::user()->id==$user->id ? 'disabled' : '' }} data-id="{{$user->id}}">
                                                        </div></td>
                                                   
                                                    <td class="actionBtn text-center">
                                                        <button 
                                                         @if($user->is_verified==1) onclick='viewUser({{ $user->id }})' @else disabled @endif><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#BDBDBD"
                                                                    d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" />
                                                            </svg>
                                                        </button>
                                                        @if(Auth::user()->is_super_admin==1 )
                                                        <button  @if($user->is_verified==1)  onclick='editUser({{ $user->id }})' @else disabled @endif><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#BDBDBD"
                                                                    d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" />
                                                            </svg>

                                                        </button>
                                                        <button  onclick='deletePerson({{ $user->id }})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#EB5757"
                                                                    d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" />
                                                            </svg>

                                                        </button>
                                                        @endif
                                                    </td>
                                                </tr>
                                                @endforeach
                                                @endif
                                            </tbody>
                                          {{--   <tfoot>
                                                <tr>
                                                    <th></th>
                                                </tr>
                                            </tfoot> --}}
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>


   

     <div class="modal custom-modal fade" id="userAddModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <form id="userAddForm" enctype="multipart/form-data">@csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#BDBDBD"
                                d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                        </svg>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                       

                        <div class="col-12 form-input">
                            <label for="name">Name</label>
                            <input class="form-control" type="text" placeholder="User Name"  name="name">
                        </div>
                        
                        <div class="col-12 form-input">
                            <label for="email">Email</label>
                            <input class="form-control" type="email" placeholder="User Email"  name="email">
                        </div>
                       <div class="col-6">
                            <div class="form-check form-check-inline form-input">
                                <input class="form-check-input" type="checkbox" id="Admin" name="admin" value="1">
                                <label class="form-check-label" for="Admin">Admin</label>
                            </div>
                        </div>



                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit">Submit</button>
                </div>
            </div>
            </form>
        </div>
    </div>
   <div class="modal custom-modal fade" id="userEditModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <form id="userEditForm">@csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#BDBDBD"
                                d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                        </svg>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="hidden_id" name="hidden_id" value="">
                    <div class="row">
                        

                        <div class="col-12 form-input">
                            <label for="name">Name</label>
                            <input class="form-control" type="text" placeholder="Person Name" id="edit_name"  name="name">
                        </div>
                        
                        <div class="col-12 form-input">
                            <label for="email">Email</label>
                            <input class="form-control" readonly="" type="email" id="edit_email" placeholder="Person Email"  name="email">
                        </div>
                        <div class="col-12 form-input">
                            <label for="contact">Contact</label>
                            <input class="form-control" type="text" id="edit_contact" placeholder="Person Contact"  name="contact">
                        </div>
                        <div class="col-12 form-input">
                            <label for="gender">Gender</label>
                            <select class="form-control" name="gender" id="edit_gender">
                                <option value="">Select Gender</option>
                                
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                               
                            </select>
                        </div>
                        <div class="col-6">
                            <div class="form-check form-check-inline form-input">
                                <input class="form-check-input admin_checkbox" type="checkbox" id="Admin_edit" name="admin" value="1">
                                <label class="form-check-label " for="Admin_edit">Admin</label>
                            </div>
                        </div>
                     
                          <div class="col-12 form-input">
                             <label for="image">Image(200x200)</label>
                           
                            <div style="width: 200px;  height: 200px !important;">
                                 <input type="file" name="image" class="dropify" id="edit_image" accept="image/*"/>
                            </div>
                        </div>



                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit">Update</button>
                </div>
            </div>
            </form>
        </div>
    </div>



     <div class="modal custom-modal view-modal fade" id="userViewModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">User Information</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#BDBDBD"
                                d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                        </svg>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row ">
                        <div class="col-12">
                            <img src="" id="view_image" alt="user image">
                        </div>
                        <div class="col-12">
                            <h6>User Name</h6>
                            <h5 id="view_name"></h5>
                        </div>
                        <div class="col-lg-6">
                            <h6>Phone Number</h6>
                            <h5 id="view_contact"></h5>
                        </div>
                        <div class="col-lg-6">
                            <h6>Email Address</h6>
                            <h5 id="view_email"></h5>
                        </div>
                        <div class="col-lg-6">
                            <h6>Gender</h6>
                            <h5 id="view_gender"></h5>
                        </div>
                        <div class="col-lg-6">
                            <h6>Role</h6>
                            <h5 id="view_role"></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection

@section('pageScripts')
<script>
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
        var config = {
            routes: {
                add: "{!! route('user.store') !!}",
                edit: "{!! route('user.edit') !!}",
                update: "{!! route('user.update') !!}",
                delete: "{!! route('user.delete') !!}",                
                is_admin: "{!! route('is.admin') !!}",
            }
        };
    $(document).ready(function() {
            // data table
            $('#userTable').DataTable({
                "ordering": false,
                scrollX: true,
            });
            // dropify table
            $('.dropify').dropify();
        });
    // $(document).ready(function() {
    //         $('#userTable').DataTable({
    //             "ordering": false,
    //             initComplete: function() {
    //                 this.api().columns().every(function() {
    //                     var column = this;
    //                     // alert(column);
    //                     var select = $(
    //                             '<select class="form-control filter_by_role"><option value="">Filter by Role</option></select>'
    //                             )
    //                         .appendTo($(column.footer()).empty())
    //                         .on('change', function() {
    //                             var val = $.fn.dataTable.util.escapeRegex(
    //                                 $(this).val()
    //                             );

    //                             column
    //                                 .search(val ? '^' + val + '$' : '', true, false)
    //                                 .draw();
    //                         });

    //                     column.data().unique().sort().each(function(d, j) {
    //                         select.append('<option value="' + d + '">' + d +
    //                             '</option>')
    //                     });
    //                 });
    //             }
    //         });

    //         $('#userTable tfoot tr').prependTo('#userTable thead');

    //     });

      var imagesUrl = '{!! URL::asset('/backend/') !!}';


        // add form validation
        $(document).ready(function() {
            $("#userAddForm").validate({
                rules: {
                    
                    name: {
                        required: true,
                        maxlength: 50,
                    },
                    email: {
                        required: true,
                        maxlength: 50,
                    }
                },
                messages: {
                    
                    name: {
                        required: 'Please insert  name',
                    },
                    email: {
                        required: 'Please insert email',
                    }
                    
                },
                errorPlacement: function(label, element) {
                    label.addClass('mt-2 text-danger');
                    label.insertAfter(element);
                },
            });

            $("#userEditForm").validate({
                rules: {
                    
                    name: {
                        required: true,
                        maxlength: 50,
                    },
                    email: {
                        required: true,
                        maxlength: 50,
                    }
                },
                messages: {
                    
                    name: {
                        required: 'Please insert  name',
                    },
                    email: {
                        required: 'Please insert email',
                    }
                    
                },
                errorPlacement: function(label, element) {
                    label.addClass('mt-2 text-danger');
                    label.insertAfter(element);
                },
            });
        });
        //end
        //end

        // add  request

        $(document).off('submit', '#userAddForm');
        $(document).on('submit', '#userAddForm', function(event) {
            event.preventDefault();
            $.ajax({
                url: config.routes.add,
                method: "POST",
                data: new FormData(this),
                contentType: false,
                cache: false,
                processData: false,
                dataType: "json",
                success: function(response) {

                    if (response.success == true) {
                        var userTable = $('#userTable').DataTable();
                        var trDOM = userTable.row.add([
                            "" + response.data.role + "",
                            "" + response.data.name + "",
                            "" + response.data.email + "",
                           `<td class="verified_status${response.data.id}"> <span class="pendingStatus">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="none" viewBox="0 0 16 16">
                                                                <path fill="#F2C94C" fill-rule="evenodd"
                                                                    d="M8 2a6 6 0 100 12A6 6 0 008 2zM.667 8a7.333 7.333 0 1114.666 0A7.333 7.333 0 01.667 8z"
                                                                    clip-rule="evenodd" />
                                                                <path fill="#F2C94C" fill-rule="evenodd"
                                                                    d="M8 3.333c.368 0 .667.299.667.667v3.588l2.298 1.149a.667.667 0 11-.597 1.193L7.702 8.596A.667.667 0 017.333 8V4c0-.368.299-.667.667-.667z"
                                                                    clip-rule="evenodd" />
                                                            </svg>
                                                            PENDING</span></td>`,
                                                            `<div
                                                            class="form-check form-switch d-flex justify-content-center">
                                                            <input class="form-check-input is_admin status${response.data.id}" ${response.data.role=='Admin'?'checked':''} ${response.data.is_super_admin!==1?'disabled':''} type="checkbox" data-id="${response.data.id}">
                                                        </div>`,
                            `
                            <button  onclick='viewUser(${response.data.id})' disabled><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#BDBDBD"
                                                                    d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" />
                                                            </svg>
                                                        </button>
                                                        <button disabled onclick='editUser(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#BDBDBD"
                                                                    d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" />
                                                            </svg>

                                                        </button>
                                                        <button onclick='deletePerson(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#EB5757"
                                                                    d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" />
                                                            </svg>

                                                        </button>
                            `
                        ]).draw().node();
                        $(trDOM).addClass('item' + response.data.id + '');
                        $('table tr:last td:last').addClass('actionBtn text-center');
                        $('#userAddForm').trigger('reset');
                        if (response.data.message) {
                            $('#userAddModal').modal('hide');
                            toastMixin.fire({
                                icon: 'success',
                                animation: true,
                                title: "" + response.data.message + ""
                            });

                        }


                    } else {
                         Swal.fire({
                                          position: 'top-end',
                                          icon: 'warning',
                                          title: response.data.error,
                                          showConfirmButton: false,
                                          timer: 1500
                                        })
                    }
                }, //success end

                // beforeSend: function() {
                //     $('#add').modal('hide');
                //     $('.preloader').empty();
                //     $('.preloader').addClass('ajax_loader').append(
                //         `<div class='preloader'>
                //             <div id="status">
                //                 <div class="spinner"></div>
                //             </div>
                //         </div>`
                //     );
                // },
                // complete: function() {
                //     $('.preloader').removeClass('ajax_loader').empty();
                // }
            });
        });

        //request end
         function viewUser(id){

            $.ajax({
              url:config.routes.edit,
              method:"POST",
              data:{
                id:id,
                _token:  "{{ csrf_token() }}"
              },
             dataType:"json",
             success:function(response){
               if (response.success==true) {

                $('#view_name').text(response.data.name);
                if (response.data.is_admin==1) {
                     $('#view_role').text("Admin");
                }else{
                     $('#view_role').text('User');
                }
               
                // $('#view_person').text(response.data.family_name);
                $('#view_email').text(response.data.email);
                $('#view_contact').text(response.data.contact);
                $('#view_gender').text(response.data.gender);
                // $('#view_image').text(response.data.name);
                 var img_url = imagesUrl+'/'+response.data.photo;
                $("#view_image").attr("src",img_url);  
                
                
                // $('#hidden_id').val(response.data.id);
                  
                $('#userViewModal').modal('show');

                }

               }//success end
            });//ajax end

        }

        // edit category methods
          function editUser(id){

            $.ajax({
              url:config.routes.edit,
              method:"POST",
              data:{
                id:id,
                _token:  "{{ csrf_token() }}"
              },
             dataType:"json",
             success:function(response){
                console.log(response)
               if (response.success==true) {

                $('#edit_name').val(response.data.name);
                $('#edit_contact').val(response.data.contact);
                $('#edit_email').val(response.data.email);
                $('#edit_gender').val(response.data.gender);
                $('#hidden_id').val(response.data.id);
                if (response.data.is_admin == 1) {
                    $('.admin_checkbox').prop('checked', true);
                } else {
                    $('.admin_checkbox').prop('checked', false);
                } 


                       if(response.data.photo){
                          var img_url = imagesUrl+'/'+response.data.photo;

                       $("#edit_image").attr("data-height", 100);
                       $("#edit_image").attr("data-default-file",img_url);

                       $(".dropify-wrapper").removeClass("dropify-wrapper").addClass("dropify-wrapper has-preview");
                       $(".dropify-preview").css('display','block');
                       $('.dropify-render').html('').html('<img src=" '+img_url+'" style="max-height: 100px;">')
                      }else{
                       $(".dropify-preview .dropify-render img").attr("src","");
                      }

                     

                      $('#edit_image').dropify();
                  
                $('#userEditModal').modal('show');

                }

               }//success end
            });//ajax end

            $(document).off('submit', '#userEditForm');
                         $(document).on('submit', '#userEditForm', function(event){
                          event.preventDefault();
                           $.ajax({
                            url:config.routes.update,
                            method:"POST",
                            data: new FormData(this),
                            contentType: false,
                            cache:false,
                            processData: false,
                            dataType:"json",
                            success:function(response)
                            {

                              if(response.success==true){
                              
                                   
                                $('.item'+response.data.id).replaceWith(`<tr class='item${response.data.id}'><td>${response.data.role}</td><td>${response.data.name}</td><td>${response.data.email}</td><td class="verified_status${response.data.id}"><span class="acceptStatus"><svg
                                                                xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="none" viewBox="0 0 16 16">
                                                                <path fill="#6FCF97" fill-rule="evenodd"
                                                                    d="M13.805 4.329c.26.26.26.682 0 .942L6.47 12.605a.667.667 0 01-.942 0L2.195 9.27a.667.667 0 11.943-.942L6 11.19l6.862-6.861c.26-.26.682-.26.943 0z"
                                                                    clip-rule="evenodd" />
                                                            </svg>
                                                            Registered</span></td><td><div
                                                            class="form-check form-switch d-flex justify-content-center">
                                                            <input class="form-check-input is_admin status${response.data.id}" ${response.data.role=='Admin'?'checked':''} ${response.data.is_super_admin!==1?'disabled':''} type="checkbox" data-id="${response.data.id}">
                                                        </div></td><td class="actionBtn text-center"> <button  onclick='viewUser(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#BDBDBD"
                                                                    d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" />
                                                            </svg>
                                                        </button>
                                                        <button  onclick='editUser(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#BDBDBD"
                                                                    d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" />
                                                            </svg>

                                                        </button>
                                                        <button onclick='deletePerson(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" fill="none" viewBox="0 0 24 24">
                                                                <path fill="#EB5757"
                                                                    d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" />
                                                            </svg>

                                                        </button></td></tr>`)
                                 if(response.data.message)
                                  {
                                     $('#userEditModal').modal('hide');
                                     Swal.fire({
                                      position: 'top-end',
                                      icon: 'success',
                                      title: response.data.message,
                                      showConfirmButton: false,
                                      timer: 1500
                                    })
                                      $('#userEditForm').trigger('reset');
                                   
                                  }
                                 
                              }
                              else{
                                  Swal.fire({
                                          position: 'top-end',
                                          icon: 'warning',
                                          title: response.data.error,
                                          showConfirmButton: false,
                                          timer: 1500
                                        })

                              }

                            },//success end

                            // beforeSend: function() {
                            //     $('#updateEducationInfo').modal('hide');
                            //     $('.ajax_loader').show()
                            // },
                            // complete: function() {
                            //     $('.ajax_loader').hide();
                            // }
                          });
                        });


          }

      

       
  // // delete 

    function deletePerson(id) {
        // alert(id)
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type: "POST",
                    url: config.routes.delete,
                    data: {
                        id: id,
                        _token: "{{ csrf_token() }}"
                    },
                    dataType: 'JSON',
                    success: function(response) {

                         if (response.success === true) {
                            Swal.fire(
                                'Deleted!',
                                "" + response.data.message + "",
                                'success'
                            )
                            // swal("Done!", response.data.message, "success");
                            $('#userTable').DataTable().row('.item' + response.data.id).remove()
                                .draw();
                        } else {
                            Swal.fire("Error!", "Can't delete item", "error");
                        }
                    }
                });

            }
        })


    }


    //end
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
                    url: config.routes.is_admin,
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
                              $('.change_role'+response.data.id).text(response.data.role)
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
                    url: config.routes.is_admin,
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
                           $('.change_role'+response.data.id).text(response.data.role)
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


</script>


@endsection