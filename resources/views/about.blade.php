@extends('layouts.main')
@section('container')
<section class="container">
        <div class="content">
            <div class="about-section">
                <h2>About Us</h2>
                <p>{{ $about }}</p>
            </div>
            <div class="contact-section">
                <h2>Contact Us</h2>
                <p>Email: {{ $email }}</p>
                <p>Phone: {{ $phone }}</p>
            </div>
        </div>
</section>
@endsection