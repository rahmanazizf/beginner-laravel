@extends('layouts.main')

@section('container')
<section class="container">
    <div class="content">
        <h1>Latest News</h1>
        @foreach($posts as $p)
        <div class="news-article">
            <h2><a href="/news/{{ $p->slug }}">{{ $p->title }}</a></h2>
            <p>{{ $p->body }}</p>
        </div>
        @endforeach
    </div>
</section>
@endsection
