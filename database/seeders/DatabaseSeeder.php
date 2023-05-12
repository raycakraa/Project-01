<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();

        // User::create([
        //     'name' => 'Ray',
        //     'email' => 'raycakraa@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'First Post',
        //     'category_id' => 1,
        //     'user_id' => 1,
        //     'slug' => 'first-post',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem natus saepe inventore ex quod, quo quam, magnam illo rerum quisquam nihil, omnis deleniti nam culpa repellendus molestias non asperiores!',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem natus saepe inventore ex quod, quo quam, magnam illo rerum quisquam nihil, omnis deleniti nam culpa repellendus molestias non asperiores! Maiores harum deserunt sapiente, consequuntur totam ipsa quibusdam optio eligendi ea necessitatibus laborum rerum amet tempore vero voluptatem cupiditate est saepe exercitationem ab ex, alias, pariatur quia! Minus sapiente excepturi sunt, repellendus natus saepe eveniet necessitatibus id, incidunt alias dolorem eos iure velit doloribus aliquid dolores tenetur minima repudiandae pariatur nulla, dignissimos ipsa? Nobis non delectus itaque, fugit dolores est quod animi mollitia culpa aut temporibus.</p> <p> Eaque dicta laudantium ea, enim, repudiandae earum exercitationem ex, dolorem dolore minus iste cum quod quo maxime labore culpa modi? Mollitia dolores, rerum porro beatae eos omnis pariatur possimus iste adipisci sint saepe ex quidem molestiae, laborum aliquid. Ut animi, enim laborum possimus consequuntur eius provident odit optio aut, nobis deserunt ipsam placeat nostrum! Ab iste voluptate porro maiores sint ipsum numquam nobis dolores provident magni excepturi, esse recusandae temporibus eos dicta error necessitatibus quisquam unde amet aliquam est reiciendis exercitationem? Illo, perspiciatis amet quidem veniam cumque suscipit asperiores in aut dolor est obcaecati accusamus deleniti sapiente eum veritatis. Ad obcaecati quaerat amet ab fuga sed. Delectus earum suscipit a quos impedit, pariatur tempora minus laudantium quia soluta, deleniti nulla, corporis consequuntur eius aliquid quibusdam ipsum deserunt. Praesentium itaque ratione voluptates libero deleniti minus velit quod perspiciatis sint porro, dolores suscipit nemo doloribus illo iure delectus. Distinctio totam perspiciatis quisquam recusandae magnam cum velit enim?</p>'
        // ]);

        // Post::create([
        //     'title' => 'Second Post',
        //     'category_id' => 1,
        //     'user_id' => 2,
        //     'slug' => 'second-post',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem natus saepe inventore ex quod, quo quam, magnam illo rerum quisquam nihil, omnis deleniti nam culpa repellendus molestias non asperiores!',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem natus saepe inventore ex quod, quo quam, magnam illo rerum quisquam nihil, omnis deleniti nam culpa repellendus molestias non asperiores! Maiores harum deserunt sapiente, consequuntur totam ipsa quibusdam optio eligendi ea necessitatibus laborum rerum amet tempore vero voluptatem cupiditate est saepe exercitationem ab ex, alias, pariatur quia! Minus sapiente excepturi sunt, repellendus natus saepe eveniet necessitatibus id, incidunt alias dolorem eos iure velit doloribus aliquid dolores tenetur minima repudiandae pariatur nulla, dignissimos ipsa? Nobis non delectus itaque, fugit dolores est quod animi mollitia culpa aut temporibus.</p> <p> Eaque dicta laudantium ea, enim, repudiandae earum exercitationem ex, dolorem dolore minus iste cum quod quo maxime labore culpa modi? Mollitia dolores, rerum porro beatae eos omnis pariatur possimus iste adipisci sint saepe ex quidem molestiae, laborum aliquid. Ut animi, enim laborum possimus consequuntur eius provident odit optio aut, nobis deserunt ipsam placeat nostrum! Ab iste voluptate porro maiores sint ipsum numquam nobis dolores provident magni excepturi, esse recusandae temporibus eos dicta error necessitatibus quisquam unde amet aliquam est reiciendis exercitationem? Illo, perspiciatis amet quidem veniam cumque suscipit asperiores in aut dolor est obcaecati accusamus deleniti sapiente eum veritatis. Ad obcaecati quaerat amet ab fuga sed. Delectus earum suscipit a quos impedit, pariatur tempora minus laudantium quia soluta, deleniti nulla, corporis consequuntur eius aliquid quibusdam ipsum deserunt. Praesentium itaque ratione voluptates libero deleniti minus velit quod perspiciatis sint porro, dolores suscipit nemo doloribus illo iure delectus. Distinctio totam perspiciatis quisquam recusandae magnam cum velit enim?</p>'
        // ]);

        // Post::create([
        //     'title' => 'Third Post',
        //     'category_id' => 2,
        //     'user_id' => 3,
        //     'slug' => 'third-post',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem natus saepe inventore ex quod, quo quam, magnam illo rerum quisquam nihil, omnis deleniti nam culpa repellendus molestias non asperiores!',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem natus saepe inventore ex quod, quo quam, magnam illo rerum quisquam nihil, omnis deleniti nam culpa repellendus molestias non asperiores! Maiores harum deserunt sapiente, consequuntur totam ipsa quibusdam optio eligendi ea necessitatibus laborum rerum amet tempore vero voluptatem cupiditate est saepe exercitationem ab ex, alias, pariatur quia! Minus sapiente excepturi sunt, repellendus natus saepe eveniet necessitatibus id, incidunt alias dolorem eos iure velit doloribus aliquid dolores tenetur minima repudiandae pariatur nulla, dignissimos ipsa? Nobis non delectus itaque, fugit dolores est quod animi mollitia culpa aut temporibus.</p> <p> Eaque dicta laudantium ea, enim, repudiandae earum exercitationem ex, dolorem dolore minus iste cum quod quo maxime labore culpa modi? Mollitia dolores, rerum porro beatae eos omnis pariatur possimus iste adipisci sint saepe ex quidem molestiae, laborum aliquid. Ut animi, enim laborum possimus consequuntur eius provident odit optio aut, nobis deserunt ipsam placeat nostrum! Ab iste voluptate porro maiores sint ipsum numquam nobis dolores provident magni excepturi, esse recusandae temporibus eos dicta error necessitatibus quisquam unde amet aliquam est reiciendis exercitationem? Illo, perspiciatis amet quidem veniam cumque suscipit asperiores in aut dolor est obcaecati accusamus deleniti sapiente eum veritatis. Ad obcaecati quaerat amet ab fuga sed. Delectus earum suscipit a quos impedit, pariatur tempora minus laudantium quia soluta, deleniti nulla, corporis consequuntur eius aliquid quibusdam ipsum deserunt. Praesentium itaque ratione voluptates libero deleniti minus velit quod perspiciatis sint porro, dolores suscipit nemo doloribus illo iure delectus. Distinctio totam perspiciatis quisquam recusandae magnam cum velit enim?</p>'
        // ]);
    }
}
