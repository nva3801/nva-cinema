<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\Models\MovieDate;
use App\Http\Requests\StoreMovieDateRequest;
use App\Http\Requests\UpdateMovieDateRequest;
use App\Models\Movie;

class MovieDateController extends Controller
{
    public function index()
    {
        $moviedate = MovieDate::get();
        return view('admincp.movie_date.index', [
            'moviedate' => $moviedate,
        ]);
    }

    public function create()
    {
        $movie = Movie::where('status', 1)->get();
        return view('admincp.movie_date.create', [
            'movie' => $movie,
        ]);
    }

    public function store(StoreMovieDateRequest $request)
    {
        MovieDate::create($request->validated());
        return redirect()->route('admin.moviedate.index');
    }

    public function show(MovieDate $movieDate)
    {
        //
    }

    public function edit(MovieDate $moviedate)
    {
        $movie = Movie::where('status', 1)->get();
        return view('admincp.movie_date.edit', [
            'moviedate' => $moviedate,
            'movie' => $movie,
        ]);
    }

    public function update(UpdateMovieDateRequest $request, MovieDate $moviedate)
    {
        $moviedate->fill($request->validated());
        $moviedate->save();
        return redirect()->route('admin.moviedate.index');
    }

    public function destroy(MovieDate $moviedate)
    {
        $moviedate->delete();
        return redirect()->route('admin.moviedate.index');
    }
}