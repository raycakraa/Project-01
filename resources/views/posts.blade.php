
@extends('layouts.main')


@section('container')

<h1 class="mb-4">All Posts</h1>

@if ($posts->count())
    
<div class="card mb-3">
    <img src="https://source.unsplash.com/1200x400/?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name }}">
    <div class="card-body text-center">
      <h3 class="card-title"> <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none"> {{ $posts[0]->title }} </a></h3>
      <p> <small> By {{ $posts[0]->user->name }} in {{ $posts[0]->category->name }} {{ $posts[0]->created_at->diffForHumans() }}</small>  </p>
      <p class="card-text">{{ $posts[0]->excerpt }}</p>
      
      <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-primary"> Read more </a>

    </div>
</div> 

@else

<p class="text-center fs-4"> No post found. </p>

@endif


 



<div class="container mb-4 pb-4">
    <div class="row">
        @foreach ($posts->skip(1) as $post)
            <div class="col md-4 mb-4">

                <div class="card" style="width: 25rem;">
                    <img src="https://source.unsplash.com/300x200/?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $post->title }}</h5>
                        <p> <small> By {{ $post->user->name }} in {{ $post->category->name }} </small> </p>
                        <p class="card-text"> {{ $post->excerpt }} </p>
                        <a href="/posts/{{ $post->slug }}" class="text-decoration-none"> Read more.. </a>
                    </div>
                </div>

            </div>
        @endforeach
    </div>
</div>

{{-- <article class="mb-5 border-bottom pb-4"> --}}
    {{-- <h2> 
        <a href="/posts/{{ $post->slug }}" class="text-decoration-none"> {{ $post->title }} </a>
    </h2> --}}

    {{-- <p> By in {{ $post->category->name }} </p> --}}
    {{-- <p> By {{ $post->user->name }} in {{ $post->category->name }}</p>

    <p> {{ $post->excerpt }}</p> --}}

    {{-- <a href="/posts/{{ $post->slug }}" class="text-decoration-none"> Read more.. </a> --}}
{{-- </article> --}}




@endsection