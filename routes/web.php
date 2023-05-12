<?php

use App\Http\Controllers\DashboardController;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use GuzzleHttp\Middleware;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return view('home', [

        "title" => "Home"

    ]);
});

Route::get('/about', function () {
    return view('about', [

        "title" => "About"
    ]);
});


Route::get('/blog', [PostController::class, 'index']);

Route::get('posts/{post:slug}', [PostController::class, 'show']);

// Route::get('/categories', function () {
//     return view('categories', [
//         'title' => 'Post Categories ',
//         'category' => Category::all()
//     ]);
// });

// Route::get('/categories/{category:slug}', function (Category $category) {
//     return view('categories', [
//         'title' => $category->name,
//         'posts' => $category->posts,
//         'category' => $category->name
//     ]);
// });

Route::get('/login', [LoginController::class, 'index'])->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function () {
    return view('dashboard.index');
})->Middleware('auth');
