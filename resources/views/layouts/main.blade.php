<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $title }} | My Laravel</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}" > 
</head>
<body>
    <header>
        <nav>
            <div class="topnav">
                <a class="{{ ($title === 'Home') ? 'active' : ''}}" href="/">Home</a>
                <a class="{{ ($title === 'News') ? 'active' : ''}}" href="/news">News</a>
                <a class="{{ ($title === 'Contact') ? 'active' : ''}}" href="/contact">Contact</a>
                <a class="{{ ($title === 'About') ? 'active' : ''}}" href="/about">About</a>
            </div> 
        </nav>
    </header>
    
    @yield('container')
    
</body>
</html>