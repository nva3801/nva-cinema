<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Movie;
use App\Models\News;
use App\Models\User;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        $category = Category::where('status', 1)->get();
        $movie = Movie::where('status', 1)->get();
        $news = News::where('status', 1)->get();
        return view('user.index', [
            'category' => $category,
            'movie' => $movie,
            'news' => $news,
        ]);
    }
}