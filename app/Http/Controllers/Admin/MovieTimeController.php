<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\Models\MovieTime;
use App\Http\Requests\StoreMovieTimeRequest;
use App\Http\Requests\UpdateMovieTimeRequest;
use App\Models\Movie;
use App\Models\MovieDate;

class MovieTimeController extends Controller
{
    public function index()
    {
        $movietime = MovieTime::get();
        return view('admincp.movie_time.index', [
            'movietime' => $movietime,
        ]);
    }

    public function create()
    {
        $movie_date = MovieDate::join('movies', 'movies.id', '=', 'movie_dates.movie_id')
            ->select('movie_dates.id', 'movies.name', 'movie_dates.date')
            ->get();
        return view('admincp.movie_time.create', [
            'movie_date' => $movie_date,
        ]);
    }

    public function store(StoreMovieTimeRequest $request)
    {
        MovieTime::create($request->validated());
        return redirect()->route('admin.movietime.index');
    }

    public function show(MovieTime $movietime)
    {
        //
    }

    public function edit(MovieTime $movietime)
    {
        $movie_date = MovieDate::join('movies', 'movies.id', '=', 'movie_dates.movie_id')
            ->select('movie_dates.id', 'movies.name', 'movie_dates.date')
            ->get();
        return view('admincp.movie_time.edit', [
            'movie_date' => $movie_date,
            'movietime' => $movietime,
        ]);
    }

    public function update(UpdateMovieTimeRequest $request, MovieTime $movietime)
    {
        $movietime->fill($request->validated());
        $movietime->save();
        return redirect()->route('admin.movietime.index');
    }

    public function destroy(MovieTime $movietime)
    {
        $movietime->delete();
        return redirect()->route('admin.movietime.index');
    }
}