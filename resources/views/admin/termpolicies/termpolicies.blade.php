@extends('layouts.master')
@section('content')

<div class="container-fluid">
    <div class="row align-items-center">
        <div class="col-6">
            <h1 class="dashboard-title">Terms Policies</h1>
        </div>

        <div class="col-6 dashboard-title text-end">
            <button data-bs-toggle="modal" data-bs-target="#termpolicyAddModal" class="btn-outline">+ Add Terms Policies</button>
        </div>
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
                                <table class="table table-borderless align-middle text-center dashboardTable customTable" id="termpolicyTable">
                                    <thead>
                                        <tr>

                                            <th scope="col">Title</th>
                                            <th scope="col">Sub Title</th>
                                            <th scope="col">Description</th>

                                            <th scope="col" class="text-center">Actions</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @if(!empty($termpolicies_list))

                                        @foreach($termpolicies_list as $termpolicies)
                                        <tr class="item{{ $termpolicies->id}}">

                                        <td>{{$termpolicies->title}}</td>
                                        <td>{{$termpolicies->subtitle}}</td>
                                        <td>{{$termpolicies->description}}</td>


                                        <td class="actionBtn text-center">
                                            <button onclick='viewTermpolicy({{ $termpolicies->id}})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill="#BDBDBD" d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" />
                                                </svg>
                                            </button>
                                            <button onclick='editTermpolicy({{  $termpolicies->id }})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill="#BDBDBD" d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" />
                                                </svg>

                                            </button> <button onclick='deleteTermpolicy({{ $termpolicies->id }})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill="#EB5757" d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" />
                                                </svg>

                                            </button>
                                        </td>


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




<div class="modal custom-modal fade" id="termpolicyAddModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <form id="termpolicyAddForm" enctype="multipart/form-data">@csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Terms Policies</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#BDBDBD" d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                        </svg>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">


                        <div class="col-12 form-input">
                            <label for="title">Title</label>
                            <input class="form-control" type="text" placeholder="Add Title" name="title">
                        </div>
                        <div class="col-12 form-input">
                            <label for="subtitle">Sub-Title</label>
                            <input class="form-control" type="text" placeholder="Add Sub-Title" name="subtitle">
                        </div>

                        <div class="col-12 form-input">
							<label for="description">Description</label>

							<textarea name="description"  placeholder="Add Description" class="form-control"></textarea>
						</div>



                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="submit_btn">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal custom-modal fade" id="termpolicyEditModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <form id="termpolicyEditForm">@csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Terms Policies</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#BDBDBD" d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                        </svg>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="hidden_id" name="hidden_id" value="">
                    <div class="row">


                        <div class="col-12 form-input">
                            <label for="title">Title</label>
                            <input class="form-control" type="text" placeholder="Add Title" id="e_title" name="title">
                        </div>

                        <div class="col-12 form-input">
                            <label for="subtitle">Sub-Tile</label>
                            <input class="form-control" type="text" placeholder="Add Sub-Title" id="e_subtitle" name="subtitle">
                        </div>

                        <div class="col-12 form-input">
							<label for="description">Description</label>

							<textarea name="description" class="form-control" id="e_description" placeholder="Add Description"></textarea>
						</div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="submit_btn">Update</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal custom-modal view-modal fade" id="termpolicyViewModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered ">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">View Terms Policies Information</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#BDBDBD" d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                    </svg>
                </button>
            </div>
            <div class="modal-body">
                <div class="row ">
                    <div class="col-12">
                        <h6>Title</h6>
                        <h5 id="v_title"></h5>
                    </div>

                    <div class="col-12">
                        <h6>Sub-Title</h6>
                        <h5 id="v_subtitle"></h5>
                    </div>

                    <div class="col-12">
                        <h6>Description</h6>
                        <h5 id="v_description"></h5>
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
            add: "{!! route('terms.store') !!}",
            edit: "{!! route('terms.edit') !!}",
            update: "{!! route('terms.update') !!}",
            delete: "{!! route('terms.destroy') !!}",
        }
    };
    $(document).ready(function() {
        // data table
        $('#termpolicyTable').DataTable({
            "ordering": false,
            scrollX: true,
        });

    });


    // add form validation
    ///Form validation client side
    // rules:fieldName
    $(document).ready(function() {
        $("#termpolicyAddForm").validate({
            rules: {
                title: {
                    required: true,
                    maxlength: 100,
                },
                subtitle: {
                    required: true,
                    maxlength: 100,
                },
                description: {
                    required: true,
                    maxlength: 2000,
                },
            },
            messages: {
               
                title: {
                    required: 'Please Insert Title',
                    maxlength: 100,
                },
                subtitle: {
                    required: 'Please Insert Sub-Title',
                    maxlength: 100,
                },
                description: {
                    required: 'Please Insert Description',
                },

            },
            errorPlacement: function(label, element) {
                label.addClass('mt-2 text-danger');
                label.insertAfter(element);
            },
        });

        $("#termpolicyEditForm").validate({
            rules: {
                title: {
                    required: true,
                    maxlength: 100,
                },
                subtitle: {
                    required: true,
                    maxlength: 100,
                },
                description: {
                    required: true,
                    maxlength: 2000,
                },
            },
            messages: {
                title: {
                    required: 'Please Insert Title',
                    maxlength: 100,
                },
                subtitle: {
                    required: 'Please Insert Sub-Title',
                    maxlength: 100,
                },
                edit_description: {
                    required: 'Please Insert Description',
                },


            },
            errorPlacement: function(label, element) {
                label.addClass('mt-2 text-danger');
                label.insertAfter(element);
            },
        });
    });
    //end
    //end

    //var path = "{{ url('/') }}" + '/backend/';
    //
    //-----------------------------Add Request----------------------//
    $(document).off('submit', '#termpolicyAddForm');
    $(document).on('submit', '#termpolicyAddForm', function(event) {
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
                    var idea_table = $('#termpolicyTable').DataTable();
                    var trDOM = idea_table.row.add([
                        "" + response.data.title + "",
                        "" + response.data.subtitle + "",
                        "" + response.data.description + "",
                        `
                                <button  onclick='viewTermpolicy(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                    height="24" fill="none" viewBox="0 0 24 24">
                                                                    <path fill="#BDBDBD"
                                                                        d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" />
                                                                </svg>
                                                            </button>
                                                                <button  onclick='editTermpolicy(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                    height="24" fill="none" viewBox="0 0 24 24">
                                                                    <path fill="#BDBDBD"
                                                                        d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" />
                                                                </svg>

                                                            </button>
                                                            <button onclick='deleteTermpolicy(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                    height="24" fill="none" viewBox="0 0 24 24">
                                                                    <path fill="#EB5757"
                                                                        d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" />
                                                                </svg>

                                                            </button>
                                `
                    ]).draw().node();
                    $(trDOM).addClass('item' + response.data.id + '');
                    $('table tr:last td:last').addClass('actionBtn text-center');
                    $('#termpolicyAddForm').trigger('reset');
                    if (response.data.message) {
                        $('#termpolicyAddModal').modal('hide');
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
        });
    });

    //request end
    function viewTermpolicy(id) {

        $.ajax({
            url: config.routes.edit,
            method: "POST",
            data: {
                id: id,
                _token: "{{ csrf_token() }}"
            },
            dataType: "json",
            success: function(response) {
                if (response.success == true) {
                    $('#v_title').text(response.data.title);
                    $('#v_subtitle').text(response.data.subtitle);
                    $('#v_description').text(response.data.description);
                    // $('#hidden_id').val(response.data.id);
                    $('#termpolicyViewModal').modal('show');

                }

            } //success end
        }); //ajax end

    }

    //-----------------------------Edit Methods----------------------//
    function editTermpolicy(id) {

        //alert('test');
        $.ajax({
            url: config.routes.edit,
            method: "POST",
            data: {
                id: id,
                _token: "{{ csrf_token() }}"
            },
            dataType: "json",
            success: function(response) {
                if (response.success == true) {
                    //alert(response.data.name);
                    $('#e_title').val(response.data.title);
                    $('#e_subtitle').val(response.data.subtitle);
                    $('#e_description').val(response.data.description);
                    $('#hidden_id').val(response.data.id);
                    $('#termpolicyEditModal').modal('show');

                }

            } //success end
        }); //ajax end

        //-----------------------------Update----------------------//
        $(document).off('submit', '#termpolicyEditForm');
        $(document).on('submit', '#termpolicyEditForm', function(event) {
            event.preventDefault();
            $.ajax({
                url: config.routes.update,
                method: "POST",
                data: new FormData(this),
                contentType: false,
                cache: false,
                processData: false,
                dataType: "json",
                success: function(response) {

                    if (response.success == true) {


                        $('.item' + response.data.id).replaceWith(`<tr class='item${response.data.id}'><td>${response.data.title}</td><td>${response.data.subtitle}</td><td>${response.data.description}</td><td class="actionBtn text-center"> <button  onclick='viewTermpolicy(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                    height="24" fill="none" viewBox="0 0 24 24">
                                                                    <path fill="#BDBDBD"
                                                                        d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" />
                                                                </svg>
                                                            </button>
                                                            <button  onclick='editTermpolicy(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                    height="24" fill="none" viewBox="0 0 24 24">
                                                                    <path fill="#BDBDBD"
                                                                        d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" />
                                                                </svg>

                                                            </button>
                                                            <button onclick='deleteTermpolicy(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                    height="24" fill="none" viewBox="0 0 24 24">
                                                                    <path fill="#EB5757"
                                                                        d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" />
                                                                </svg>

                                                            </button></td></tr>`)
                        if (response.data.message) {
                            $('#termpolicyEditModal').modal('hide');
                            toastMixin.fire({
                                icon: 'success',
                                animation: true,
                                title: response.data.message,
                                showConfirmButton: false,
                                timer: 1500
                            })
                            $('#termpolicyEditForm').trigger('reset');

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

    function deleteTermpolicy(id) {
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
                            toastMixin.fire({
                                icon: 'success',
                                animation: true,
                                title: "" + response.data.message + ""
                            });
                            // swal("Done!", response.data.message, "success");
                            $('#termpolicyTable').DataTable().row('.item' + response.data.id).remove()
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
</script>
@endsection
