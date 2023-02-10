@extends('master')
@section('content')


<link rel="stylesheet" href="<?php echo asset('list.css')?>" type="text/css"> 

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog"  >
		<div class="modal-content">
		  <div class="modal-header">
			<h5 class="modal-title"  id="exampleModalLabel">Add Student Info</h5>
			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		  </div>
		<div class="modal-body">
		<form action="/student/create" method="POST">
			{{csrf_field()}}
			<div class="mb-3">
				<label for="name" class="form-label">Student Name:</label>
				<input name="name" type="text" class="form-control" id="name" placeholder="Enter Student Name">
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Student Email:</label>
				<input name="email" type="email" class="form-control" id="email" placeholder="Enter Student Email">
			</div>
			<div class="mb-3">
				<label for="address" class="form-label">Student Address:</label>
				<input name="address" type="text" class="form-control" id="address" placeholder="Enter Student Address">
			</div>
            <div class="mb-3">
				<label for="studycourse" class="form-label">Student Course:</label>
				<select name="studycourse" class="form-select" id="studycourse" aria-label="Default select example">
					<option selected>Select Course</option>
					<option value="Software Engineering">Software Engineering</option>
					<option value="Network & Security">Network & Security</option>
					<option value="Graphic & Multimedia">Graphic & Multimedia</option>
				</select>
			</div>
			</div>
		  	<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save</button>
			</form>
		  	</div>
		</div>
	</div>
</div>

<body>
<div class="container">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css" integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />

<div class="container">
    <div class="row align-items-center">
        <div class="col-md-6">
            <div class="mb-3">
                <h5 class="card-title">Student List</h5>
				<br>

			<form action="{{route('search')}}" method="get">
				<input type="text" name="name" placeholder="Name">
				<input type="text" name="email" placeholder="Email">
				<button type="submit">Search</button>
			</form> 
			<hr>

            </div>
        </div>
        <div class="col-md-6">
            <div class="d-flex flex-wrap align-items-center justify-content-end gap-2 mb-3">
                <div>
                    <a data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary"><i class="bx bx-plus me-1"></i> Add New</a>
                </div>
                <div class="dropdown">
                    <a class="btn btn-link text-muted py-1 font-size-16 shadow-none dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-horizontal-rounded"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a class="dropdown-item" href="{{ route('excel.export') }}">Excel</a></li>
                        <li><a class="dropdown-item" href="{{ route('excel.export') }}">Import</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="">
                <div class="table-responsive">
                    <table class="table project-list-table table-nowrap align-middle table-borderless">
                        <thead>
                           
                                <th scope="col">Name</th>
                                <th scope="col">Course</th>
                                <th scope="col">Email</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
						@if(!empty($mydata))
						@foreach($mydata as $stud)
                            <tr>
                                <td>{{$stud ->name}}</td>
                                <td><span class="badge badge-soft-success mb-0">{{$stud -> studycourse}}</span></td>
                                <td>{{$stud -> email}}</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="student/{{$stud -> id}}/studentEdit" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary" ><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="student/{{$stud -> id}}/delete" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger" onClick="return confirm('Confirm Delete?')"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item dropdown">
                                            <a class="text-muted dropdown-toggle font-size-18 px-2" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true"><i class="bx bx-dots-vertical-rounded"></i></a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <a class="dropdown-item" href="student/{{$stud -> id}}/studentDetail">View</a>
                                            </div>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
							@endforeach
							@else
								<p>No data found</p>
							@endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <div class="row g-0 align-items-center pb-4">
        <div class="col-sm-6">
            Showing {{$mydata->firstItem()}} - {{$mydata->lastItem()}} of {{$mydata->total()}}
        </div>
        <div class="col-sm-6">
            <div class="float-sm-end">
            {{$mydata->onEachSide(1)->links()}}
            </div>
        </div>
    </div>
</div>

</div>
</body>
@endsection