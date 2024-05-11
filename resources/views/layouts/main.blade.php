<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Laravel Home Page</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}" > 
</head>
<body>
    <header>
        <nav>
            <div class="topnav">
                <a class="active" href="/">Home</a>
                <a href="/news">News</a>
                <a href="/contact">Contact</a>
                <a href="/about">About</a>
            </div> 
        </nav>
    </header>
    
    @yield('container')
    
    <!-- <footer>
        <p>&copy; 2024 My Laravel Website. All rights reserved.</p>
    </footer> -->
</body>
</html>