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
            "posts" => Post::showAll(),
        ]);
    }

    public function showArticle($slug) {
        return view('article', [
            "title" => "News",
            "post" => Post::findArticle($slug)
        ]);
    }
}
