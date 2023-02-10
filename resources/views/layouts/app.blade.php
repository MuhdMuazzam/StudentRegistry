<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
        <title>Student Registery</title>
		
		<style>
		body {
		  background-image: url('https://img.freepik.com/free-vector/abstract-desktop-background-white-geometric-design-vector_53876-140225.jpg?w=360');
		  background-repeat: no-repeat;
 			background-attachment: fixed;
 			background-size: cover;
			
		}
			.dropbtn {
			  background-color: #FFFACD;
			  color: black;
			  font-weight: bold;
			  padding: 10px;
			  padding-left: 25px;
			  padding-right: 25px;
			  font-size: 15px;
			  border-style: 2px outset;
			  cursor: pointer;
			}

			.dropdown {
			  position: relative;
			  display: inline-block;
			}

			.dropdown-content {
			  display: none;
			  position: absolute;
			  right: 0;
			  background-color: #f9f9f9;
			  min-width: 160px;
			  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			  z-index: 1;
			}

			.dropdown-content a {
			  color: black;
			  background-color: #FFF8DC;
			  padding: 10px 16px;
			  text-decoration: none;
			  border: 1px solid black;
			  display: block;
			}

			.dropdown-content a:hover {background-color: #f1f1f1;}

			.dropdown:hover .dropdown-content {
			  display: block;
			}

			.dropdown:hover .dropbtn {
			  background-color: #F5DEB3;
			}
		</style>

		<!-- CSRF Token -->
		<meta name="csrf-token" content="{{ csrf_token() }}">

		<!-- Fonts -->
		<link rel="dns-prefetch" href="//fonts.gstatic.com">
		<link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

		<!-- Scripts -->
		@viteReactRefresh
		@vite(['resources/sass/app.scss', 'resources/js/app.js'])


    </head>
<body>
    <div id="app">
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #00008B;">
		  <div class="container-fluid" >
			<a class="navbar-brand" href="/home">
			  <img src="/images/logo-unisa.webp" alt="" width="85" height="60" class="d-inline-block align-text-top">
			</a>
				<a class="navbar-brand" style="color: white;font-style: oblique;font-weight: bold;font-size:25px;" href="/home">UniSA</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			  <div class="navbar-nav">
			  @if (Route::has('login'))
					@auth
						<a class="nav-link active" aria-current="page" style="color:white;font-size:17px;" href="{{ url('/home') }}">Home</a>
						<a class="nav-link" style="color:white;font-size:17px;" href="/student">Student Info</a>
						<a class="nav-link" style="color:white;font-size:17px;" href="Display">Profile</a>
				@else
						<a class="nav-link" style="color:white;font-size:17px;" href="{{ route('login') }}">Login</a>

						@if (Route::has('register'))
							<a class="nav-link" style="color:white;font-size:17px;" href="{{ route('register') }}">Register</a>
							@endif
                    @endauth
            @endif

			</div>
       
			  
			</div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto" >
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown" >
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre style="color: white;font-weight: bold;">
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
			<span class="navbar-text" style="color: white;font-style: oblique;margin-left:5%">
			Pro Gentibus Sapientia
			</span>
		  </div>
		</nav>
        
        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
