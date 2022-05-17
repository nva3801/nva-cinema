<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\Models\Movie;
use App\Http\Requests\StoreMovieRequest;
use App\Http\Requests\UpdateMovieRequest;
use App\Models\Category;
use Illuminate\Support\Facades\Storage;

class MovieController extends Controller
{

    public function index()
    {
        $movie = Movie::get();
        return view('admincp.movie.index', [
            'movie' => $movie,
        ]);
    }

    public function create()
    {
        $category = Category::where('status', 1)->get();
        return view('admincp.movie.create', [
            'category' => $category,
        ]);
    }

    public function store(StoreMovieRequest $request)
    {
        $path = Storage::disk('public')->put('movie', $request->file('image'));
        $arr = $request->validated();
        $arr['image'] = $path;
        Movie::create($arr);
        return redirect()->route('admin.movie.index');
    }

    public function show(Movie $movie)
    {
        //
    }

    public function edit(Movie $movie)
    {
        $category = Category::where('status', 1)->get();
        return view('admincp.movie.edit', [
            'movie' => $movie,
            'category' => $category,
        ]);
    }

    public function update(UpdateMovieRequest $request, Movie $movie)
    {
        if ($request->hasFile('image')) {
            $path = Storage::disk('public')->put('movie', $request->file('image'));
            $arr = $movie->fill($request->validated());
            $arr['image'] = $path;
        } else {
            $movie->fill($request->validated());
        }
        $movie->save();
        return redirect()->route('admin.movie.index');
    }

    public function destroy(Movie $movie)
    {
        $movie->delete();
        return redirect()->route('admin.movie.index');
    }
}