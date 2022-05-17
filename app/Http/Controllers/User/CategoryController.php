<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Movie;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function category($slug)
    {
        $category = Category::where('status', 1)->get();
        $category_slug = Category::where('slug', $slug)->first();
        $movie = Movie::where('category_id', $category_slug->id)->get();
        return view('user.category', [
            'category' => $category,
            'category_slug' => $category_slug,
            'movie' => $movie,
        ]);
    }
}