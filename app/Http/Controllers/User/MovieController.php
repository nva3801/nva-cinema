<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Movie;
use App\Models\MovieDate;
use Carbon\Carbon;
use Illuminate\Http\Request;

class MovieController extends Controller
{
    public function movie($slug)
    {
        $category = Category::where('status', 1)->get();
        $movie_slug = Movie::where('slug', $slug)->first();
        $category_slug = Category::where('id', $movie_slug->category_id)->first();
        $movie = Movie::where('slug', $slug)->get();
        $date = MovieDate::where('movie_id', $movie_slug->id)->whereDate('date', '>=', Carbon::now()->toDateString())->orderBy('date', 'ASC')->get();
        return view('user.movie', [
            'category' => $category,
            'movie' => $movie,
            'movie_slug' => $movie_slug,
            'category_slug' => $category_slug,
            'date' => $date,
        ]);
    }
}