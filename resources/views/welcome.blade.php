@extends('master')
@section('content')
		
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  <div class="carousel-inner">
			<div class="carousel-item active">
			  <img src="/images/maxresdefault.jpg" height="50%" class="d-block w-100" alt="1">
			</div>
			<div class="carousel-item">
			  <img src="/images/myhc_310375.jpg" height="50%" class="d-block w-100" alt="2">
			</div>
			<div class="carousel-item">
			  <img src="/images/university-of-south-australia-mob.jpg"  height="50%" class="d-block w-100" alt="3">
			</div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		  </button>
		</div>

		<div class="card text-center" style="background-color: #483D8B;">
		  <div class="card-header" style="color: white;font-weight: bold;font-size:40px;">
          ABOUT UNISA
		  </div>
		  <div class="card-body" style="background-color: #C0C0C0">
			<h5 class="card-title" style="font-weight: bold;font-size:20px;">Australia's University of Enterprise</h5>
			<br>
		
			<p class="card-text">The University of South Australia is Australia's University of Enterprise. Our culture of innovation is anchored around global and national links to academic, research and industry partners. </p>
			<br>
			
			<a href="https://www.unisa.edu.au/" class="btn btn-primary">Find Out More</a>
		  </div>
		  <div class="card-footer text-muted">
			© 2023 Muhd Muazzam. All Rights Reserved.
		  </div>
		</div>
	
@endsection