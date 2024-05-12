@extends('layouts.main')

@section('container')
<section class="container">
    <div class="content">
        <div class="news-article">
            <h1>{{ $post['title'] }}</h1>
            <p>{{ $post['body'] }}</p>
            <a href="/news">Back to the previous page</a>
        </div>
    </div>
</section>
@endsection
