{{-- @dd($post); --}}
@extends('layouts.main')

@section('container')
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col md-8">

                <h1 class="mb-3"> {{ $post->title }}</h1>

                <p> By {{ $post->user->name }} in {{ $post->category->name }}</p>

                <img src="https://source.unsplash.com/1200x400/?{{ $post->category->name }}" class="img-fluid" alt="{{ $post->category->name }}">

                <article class="my-3 fs-5">
                    {!! $post->body !!}
                </article> 

                <a href="/blog">Back to All Posts</a>

            </div>
        </div>
    </div>

    
     
    {{-- <p> By in <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a> </p> --}}
    {{-- <p> By in {{ $post->category->name }} </p> --}}
     
    
@endsection