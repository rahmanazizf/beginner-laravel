<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    //
    public function showAll() {
        return view('news', [
            "title" => "News",
            "posts" => Post::all()
        ]);
    }

    public function showArticle(Post $post) {
        return view('article', [
            "title" => "News",
            "post" => $post
        ]);
    }
}
