@extends('master')
@section('content')

<link rel="stylesheet" href="<?php echo asset('profile.css')?>" type="text/css"> 

<div class="container">
    <div class="main-body">
    {{csrf_field()}}
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4>{{$mydata->name}}</h4>
                      <p class="text-secondary mb-1">Just an Example Image</p>
                      <p class="text-muted font-size-sm">But I follow the requirement that no image</p>
                    </div>
                  </div>
                </div>
              </div>
              
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    {{$mydata->name}}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    {{$mydata->email}}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Study Course</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      {{$mydata->studycourse}}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    {{$mydata->address}}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                      <!-- <a class="btn btn-info " target="__blank" href="">Edit</a> -->
                    </div>
                  </div>
                </div>
              </div>

            
            </div>
          </div>

        </div>
    </div>








@endsection