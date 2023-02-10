@extends('master')
@section('content')

<link rel="stylesheet" href="<?php echo asset('updateprofile.css')?>" type="text/css"> 

<div class="container">



<div class="container-xl px-4 mt-4">

    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-xl-4">
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Profile Picture</div>
                <div class="card-body text-center">
                    <!-- Profile picture image-->
                    <img class="img-account-profile rounded-circle mb-2" src="http://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                    <!-- Profile picture help block-->
                    <div class="small font-italic text-muted mb-2">JPG or PNG no larger than 5 MB</div>
                    <div class="small font-italic text-muted mb-4">Just Example, dummy image</div>
                    <!-- Profile picture upload button-->
                    <button class="btn btn-primary" type="button">Upload new image</button>
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Student Details</div>
                <div class="card-body">
                <form action="/student/{{$mydata->id}}/update" method="POST">
                    {{csrf_field()}}
                        <!-- Form Group-->
                        <div class="mb-3">
                            <label class="small mb-1" for="name">Student Full Name</label>
                            <input class="form-control" id="name" name="name" type="text" placeholder="Enter your username" value="{{$mydata -> name}}">
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (Course name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="studycourse">Study Course</label>
                                <select name="studycourse" class="form-select" id="studycourse" aria-label="Default select example">
                                    <option selected>Select Course</option>
                                    <option value="Software Engineering" @if($mydata->studycourse=='Software Engineering') selected @endif>Software Engineering</option>
                                    <option value="Network & Security" @if($mydata->studycourse=='Network & Security') selected @endif>Network & Security</option>
                                    <option value="Graphic & Multimedia" @if($mydata->studycourse=='Graphic & Multimedia') selected @endif>Graphic & Multimedia</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label class="small mb-1" for="campus">Campus</label>
                                <input class="form-control" id="campus" type="text"  value="South of Australia University" readonly>
                            </div>
                        </div>
                        <!-- Form Group (email address)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="email">Email address</label>
                            <input class="form-control" id="email" name="email" type="email" placeholder="Enter your email address" value="{{$mydata -> email}}">
                        </div>
                        <!-- Form Group (address)-->
                        <div class="mb-3">
                                <label class="small mb-1" for="address">Permanent Address</label>
                                <input class="form-control" id="address" name="address" type="text" placeholder="Enter your location" value="{{$mydata -> address}}">
                        </div>
                        <!-- Save changes button-->
                        <button class="btn btn-primary" type="submit">Save changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>





</div>

@endsection