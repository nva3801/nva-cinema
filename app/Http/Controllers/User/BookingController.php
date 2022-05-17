<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\BookingDetail;
use App\Models\Category;
use App\Models\Movie;
use App\Models\MovieDate;
use App\Models\MovieTime;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    public function booking($id) {
        $category = Category::where('status', 1)->get();
        $movietime = MovieTime::where('id', $id)->first();
        $moviedate = MovieDate::where('id', $movietime->date_id)->first();
        $movie = Movie::where('id', $moviedate->movie_id)->first();
        $booking = BookingDetail::where('time_id', $movietime->id)->get();
        return view('user.booking', [
            'category' => $category,
            'movietime' => $movietime,
            'moviedate' => $moviedate,
            'movie' => $movie,
            'booking' => $booking,
        ]);
    }
}