@extends('layouts.master')
@section('pagecss')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
<style>
    .select2-container {
        width: 100% !important;
    }
    .select2-dropdown {
        z-index:99999;
    }
</style>
@endsection

@section('content')

<div class="container-fluid">
    <div class="row align-items-center">
        <div class="col-6">
            <h1 class="dashboard-title">Item</h1>
        </div>

        <div class="col-6 dashboard-title text-end">
            <button data-bs-toggle="modal" data-bs-target="#itemAddModal" class="btn-outline">+ Add Item</button>
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
                            <div class="">
                                <table class="table table-borderless align-middle text-center dashboardTable customTable" id="itemTable">
                                    <thead>
                                        <tr>
                                            <th scope="col">Item Name</th>
                                            <th scope="col">Category Name</th>
                                            <!-- <th scope="col">Description</th> -->
                                            <th scope="col" class="text-center">Actions</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @if(!empty($items))

                                        @foreach($items as $item)
                                        <tr class="item{{ $item->id}}">

                                        <td>{{$item->name}}</td>
                                        <!-- <td>{{$item->name}}</td> -->
                                        
                                        
                                        <!-- <td>{{$item->description}}</td> -->


                                        <td class="actionBtn text-center">
                                            <button onclick='viewItem({{ $item->id}})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill="#BDBDBD" d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" />
                                                </svg>
                                            </button>
                                            <button onclick='editItem({{  $item->id }})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill="#BDBDBD" d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" />
                                                </svg>

                                            </button>
                                            <button onclick='deleteItem({{ $item->id }})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
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




<div class="modal custom-modal fade" id="itemAddModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <form id="itemAddForm" enctype="multipart/form-data">@csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Item</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#BDBDBD" d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                        </svg>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12 form-input">
                            <label for="name">Item Name</label>
                            <input class="form-control" type="text" placeholder="Add Name" name="name">
                        </div>

                        <div class="col-12 form-input">
                            <label for="category_id">Categories</label>
                            <select multiple="multiple" name="category_id[]" id="category_id" class="form-control sheeyam">

                                @if(!empty($categories))
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                @endforeach
                                @endif
                            </select>
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

<div class="modal custom-modal fade" id="itemEditModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <form id="itemEditForm">@csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Item</h5>
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
                            <label for="name">Item Name</label>
                            <input class="form-control" type="text" placeholder="Add Name" id="name" name="name">
                        </div>

                        <div class="col-12 form-input">
                            <label for="category_id">Categories</label>
                            <select multiple="multiple" name="category_id[]" id="e_category_id" class="form-control sheeyam">

                                @if(!empty($categories))
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                @endforeach
                                @endif
                            </select>
                            <label id="category_id[]-error" class="error mt-2 text-danger" for="category_id[]"></label>
                        </div>

                        <div class="col-12 form-input">
							<label for="description">Description</label>

							<textarea name="description" class="form-control" id="description" placeholder="Add Description"></textarea>
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

<div class="modal custom-modal view-modal fade" id="itemViewModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered ">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">View Item Information</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#BDBDBD" d="M13.41 12l6.3-6.29a1.004 1.004 0 10-1.42-1.42L12 10.59l-6.29-6.3a1.004 1.004 0 00-1.42 1.42l6.3 6.29-6.3 6.29a1 1 0 000 1.42.998.998 0 001.42 0l6.29-6.3 6.29 6.3a.999.999 0 001.42 0 1 1 0 000-1.42L13.41 12z" />
                    </svg>
                </button>
            </div>
            <div class="modal-body">
                <div class="row ">
                    <div class="col-12">
                        <h6>Item Name</h6>
                        <h5 id="v_name"></h5>
                    </div>

                    <div class="col-12">
                        <h6>Categories</h6>
                        <h5 name="v_category" id="v_category"></h5>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js" ></script>
<script>
    var toastMixin = Swal.mixin({
        toast: true,
        title: 'General Title',
        animation: false,
        position: 'top-end',
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
            add: "{!! route('item.store') !!}",
            edit: "{!! route('item.edit') !!}",
            update: "{!! route('item.update') !!}",
            delete: "{!! route('item.destroy') !!}",
        }
    };
    $(document).ready(function() {
        // data table
        $('#itemTable').DataTable({
            "ordering": false,
            scrollX: true,
        });
        $(".sheeyam").select2();

    });


    // add form validation
    ///Form validation client side
    // rules:fieldName
    $(document).ready(function() {
        $("#itemAddForm").validate({
            rules: {
                name: {
                    required: true,
                    maxlength: 100,
                },
                
            },
            messages: {
                name: {
                    required: 'Please Insert Name',
                },
               

            },
            errorPlacement: function(label, element) {
                label.addClass('mt-2 text-danger');
                label.insertAfter(element);
            },
        });

        $("#itemEditForm").validate({
            rules: {
                name: {
                    required: true,
                    maxlength: 100,
                },
                
            },
            messages: {
                name: {
                    required: 'Please Insert Name',
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
    $(document).off('submit', '#itemAddForm');
    $(document).on('submit', '#itemAddForm', function(event) {
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
                    var idea_table = $('#itemTable').DataTable();
                    var trDOM = idea_table.row.add([
                        "" + response.data.name + "",
                        "" + response.data.name + "",
                        `
							<button  onclick='viewItem(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
							    <path fill="#BDBDBD" d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" /></svg>
							</button>
							<button  onclick='editItem(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
							    <path fill="#BDBDBD" d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" /></svg>
							</button>
							<button onclick='deleteItem(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24"><path fill="#EB5757" d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" /></svg>
							</button>
                                `
                    ]).draw().node();
                    $(trDOM).addClass('item' + response.data.id + '');
                    $('table tr:last td:last').addClass('actionBtn text-center');
                    $('#itemAddForm').trigger('reset');
                    if (response.data.message) {
                        $('#itemAddModal').modal('hide');
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
    function viewItem(id) {

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
                    $('#v_name').text(response.data.name);
                    $('#v_description').text(response.data.description);
                    $('#v_category').empty();
                     $.each(response.data.get_category, function (key, value) {
                            $('#v_category').append(`<span>${value.name}</span>,&nbsp;&nbsp;`);
                            //console.log(value);
                        })
                    $('#itemViewModal').modal('show');

                }

            } //success end
        }); //ajax end

    }

    //-----------------------------Edit Methods----------------------//
    function editItem(id) {

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
                    $('#name').val(response.data.name);
                    $('#description').val(response.data.description);

                    $('#e_category_id').select2();
                        var category_update=[];
                         $.each(response.data.get_category, function(key,value){
                                  category_update.push(value.id)
                          }); 
                        $('#e_category_id').val(category_update);
                        $('#e_category_id').trigger('change');

                    $('#hidden_id').val(response.data.id);
                    $('#itemEditModal').modal('show');

                }
            } 
        });

        //-----------------------------Update----------------------//
        $(document).off('submit', '#itemEditForm');
        $(document).on('submit', '#itemEditForm', function(event) {
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
                        $('.item' + response.data.id).replaceWith(`<tr class='item${response.data.id}'>
                            <td>${response.data.name}</td>
                            <td>${response.data.name}</td>
                            <td class="actionBtn text-center">
								<button  onclick='viewItem(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24"><path fill="#BDBDBD" d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z" /></svg>
								</button>
								<button  onclick='editItem(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24"><path fill="#BDBDBD" d="M5 18h4.24a1 1 0 00.71-.29l6.92-6.93L19.71 8a1 1 0 000-1.42l-4.24-4.29a1 1 0 00-1.42 0l-2.82 2.83-6.94 6.93a.999.999 0 00-.29.71V17a1 1 0 001 1zm9.76-13.59l2.83 2.83-1.42 1.42-2.83-2.83 1.42-1.42zM6 13.17l5.93-5.93 2.83 2.83L8.83 16H6v-2.83zM21 20H3a1 1 0 100 2h18a1 1 0 000-2z" /></svg>
								</button>
								<button onclick='deleteItem(${response.data.id})'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24"><path fill="#EB5757" d="M10 16.8a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1zm10-12h-4v-1a3 3 0 00-3-3h-2a3 3 0 00-3 3v1H4a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3v-11h1a1 1 0 100-2zm-10-1a1 1 0 011-1h2a1 1 0 011 1v1h-4v-1zm7 14a1 1 0 01-1 1H8a1 1 0 01-1-1v-11h10v11zm-3-1a1 1 0 001-1v-6a1 1 0 00-2 0v6a1 1 0 001 1z" /></svg>
								</button>
								</td></tr>`)
                        if (response.data.message) {
                            $('#itemEditModal').modal('hide');
                            toastMixin.fire({
                                icon: 'success',
                                animation: true,
                                title: response.data.message,
                                showConfirmButton: false,
                                timer: 1500
                            })
                            $('#itemEditForm').trigger('reset');
                        }

                    }else {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'warning',
                            title: response.data.error,
                            showConfirmButton: false,
                            timer: 1500
                        })

                    }
                }, 
            });
        });
    }

    // // delete

    function deleteItem(id) {
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
                            $('#itemTable').DataTable().row('.item' + response.data.id).remove()
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
