<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    private static $blog_posts = [
        [
            "title" => "First Article",
            "slug" => "first-article",
            "writer" => "John Doe",
            "body" => "
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nulla veritatis nesciunt voluptas totam corporis aliquid culpa sapiente nihil temporibus, non commodi ea nam consequuntur sunt dolores libero aspernatur quae quidem adipisci possimus vero fuga. Consequatur placeat earum sapiente inventore ea quaerat. Porro accusantium corporis iusto ipsa adipisci consectetur quas, dignissimos ut non fuga in esse perspiciatis excepturi eaque saepe tempore voluptatibus. Ipsam expedita inventore id doloremque? Libero eligendi saepe aspernatur rem accusamus iure cupiditate vitae totam recusandae est autem, aut sapiente, accusantium facilis eum odio quas asperiores reprehenderit voluptatem numquam deleniti neque maiores. Debitis facere quod, sint deleniti veniam rem.
            "
        ],
        [
            "title" => "Second Article",
            "slug" => "second-article",
            "writer" => "Foo Bar",
            "body" => "
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nulla veritatis nesciunt voluptas totam corporis aliquid culpa sapiente nihil temporibus, non commodi ea nam consequuntur sunt dolores libero aspernatur quae quidem adipisci possimus vero fuga. Consequatur placeat earum sapiente inventore ea quaerat. Porro accusantium corporis iusto ipsa adipisci consectetur quas, dignissimos ut non fuga in esse perspiciatis excepturi eaque saepe tempore voluptatibus. Ipsam expedita inventore id doloremque? Libero eligendi saepe aspernatur rem accusamus iure cupiditate vitae totam recusandae est autem, aut sapiente, accusantium facilis eum odio quas asperiores reprehenderit voluptatem numquam deleniti neque maiores. Debitis facere quod, sint deleniti veniam rem.
            "
        ],
        [
            "title" => "Third Article",
            "slug" => "third-article",
            "writer" => "Charles Goodenough",
            "body" => "
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nulla veritatis nesciunt voluptas totam corporis aliquid culpa sapiente nihil temporibus, non commodi ea nam consequuntur sunt dolores libero aspernatur quae quidem adipisci possimus vero fuga. Consequatur placeat earum sapiente inventore ea quaerat. Porro accusantium corporis iusto ipsa adipisci consectetur quas, dignissimos ut non fuga in esse perspiciatis excepturi eaque saepe tempore voluptatibus. Ipsam expedita inventore id doloremque? Libero eligendi saepe aspernatur rem accusamus iure cupiditate vitae totam recusandae est autem, aut sapiente, accusantium facilis eum odio quas asperiores reprehenderit voluptatem numquam deleniti neque maiores. Debitis facere quod, sint deleniti veniam rem.
            "
        ],
    ];

    public static function showAll() 
    {
        return collect(self::$blog_posts);
    }

    public static function findArticle($slug) 
    {
        $posts = self::showAll();
        return $posts->where('slug', $slug)->first();
    }
}
