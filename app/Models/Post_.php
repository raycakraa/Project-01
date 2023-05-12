<?php

namespace App\Models;

class Post_
{

    private static $blog_posts = [
        [
            "title" => "First Post",
            "slug" => "first-post",
            "author" => "Ray",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam amet iusto, ut voluptatum sed corporis id totam porro aspernatur, quis culpa vero quod nihil laudantium officia laborum tenetur dicta aliquid. Minima, quis aperiam labore dolorum quam aspernatur modi dolore, praesentium corrupti, vel omnis nesciunt? Ea provident sequi voluptate adipisci? Illum, dicta quos ex perferendis magni debitis maxime! Blanditiis possimus quia dolor! Dolor, quos et saepe sequi vel impedit nesciunt omnis cupiditate odio! Dolorum corrupti ducimus eligendi ipsam aut aspernatur debitis dolores iste tenetur. Ipsum, placeat ea blanditiis facere magni quibusdam voluptate minima ex neque corrupti illo hic culpa debitis quidem!"
        ],
        [
            "title" => "Second Post",
            "slug" => "second-post",
            "author" => "Cakra",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Omnis accusamus impedit porro, at inventore totam aut voluptate assumenda officiis excepturi beatae libero maxime ducimus hic ex veniam magnam soluta sequi temporibus, necessitatibus unde et repudiandae quia. Excepturi temporibus, ad fuga dolor autem, ratione beatae minus itaque quam dolorum quisquam reiciendis, id cumque. Delectus sunt quo ut cupiditate id porro qui, sequi perspiciatis atque iure aut deleniti alias expedita mollitia saepe impedit voluptas nihil sapiente fugiat quaerat voluptatem magni! Porro, dignissimos."
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        // $post = [];
        // foreach ($posts as $p) {
        //     if ($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug', $slug);
    }
}
