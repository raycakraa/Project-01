@extends('layouts.main')

@section('container')
  
<div class="row justify mt-4">
    <div class="col">
        <main class="form-signin w-100 m-auto">
            <form class="mb-4" action="/login" method="post">
              @csrf
              <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>
          
              @if (session()->has('success'))
              
              <div class="alert alert-success alert-dismissable fade show text-center" role="alert">
                {{ session('success') }}
              </div>
    
              @endif


              @if (session()->has('loginError'))
              
              <div class="alert alert-danger alert-dismissable fade show text-center" role="alert">
                {{ session('loginError') }}
              </div>
    
              @endif


              <div class="form-floating">
                <input type="email" name="email" class="form-control" @error('email') is-invalid @enderror id="email" placeholder="name@example.com" autofocus required value="{{ old('email') }}">
                <label for="email">Email address</label>

                @error('email')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                <label for="password">Password</label>
              </div>
          
              <div class="checkbox mb-3">
        
              </div>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
        
            </form>
            <small class="d-block text-center"> Don't have an account yet? <a href="/register"> Register now! </a> </small>
        </main>
    </div>
</div>



@endsection