@extends('layouts.main')

@section('container')
  
<div class="row justify mt-4">
    <div class="col">
        <main class="form-signin w-100 m-auto">
            
            <form class="mb-4" action="/register" method="post">
                @csrf
              <h1 class="h3 mb-3 fw-normal text-center">Register form</h1>

              <div class="form-floating">
                <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="name" requiredvalue="{{ old('name') }}">
                <label for="name">Name</label>
                
                @error('name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror

              </div>

              {{-- <div class="form-floating">
                <input type="text" name="username" class="form-control  @error('username') is-invalid @enderror" id="username" placeholder="username" required value="{{ old('username') }}">
                <label for="username">Username</label>

                @error('username')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror

              </div> --}}

              <div class="form-floating">
                <input type="email" name="email" class="form-control  @error('email') is-invalid @enderror" id="floatingInput" placeholder="name@example.com" required value="{{ old('email') }}">
                <label for="floatingInput">Email address</label>

                @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror

              </div>

              <div class="form-floating">
                <input type="password" name="password" class="form-control  @error('password') is-invalid @enderror" id="floatingPassword" placeholder="Password" required>
                <label for="floatingPassword">Password</label>

                @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror

              </div>
          
              <div class="checkbox mb-3">
        
              </div>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>
        
            </form>
            <small class="d-block text-center"> Have an account? <a href="/login"> Sign in. </a> </small>
        </main>
    </div>
</div>



@endsection