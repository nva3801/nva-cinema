<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\BookingDetail;
use App\Models\Movie;
use Illuminate\Http\Request;

class SeatController extends Controller
{
    public function showtime() {
        $showtime = Movie::join('movie_dates', 'movies.id', '=', 'movie_dates.movie_id')
        ->join('movie_times', 'movie_times.date_id', '=', 'movie_dates.id')
        ->select('movies.name', 'movie_dates.date', 'movie_times.time', 'movie_times.id')
        ->get();
        return view('admincp.seat.time', [
            'showtime' => $showtime,
        ]);
    }
    public function seat($id) {
        $seat = BookingDetail::join('movie_times', 'movie_times.id', '=', 'booking_details.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->join('movies', 'movies.id', '=', 'movie_dates.movie_id')
        ->where('time_id', $id)
        ->select('movies.name', 'movie_dates.date', 'movie_times.time', 'booking_details.chair')
        ->get();
        $bookingcount = BookingDetail::where('time_id', $id)->count('id');
        return view('admincp.seat.showseat', [
            'seat' => $seat,
            'bookingcount' => $bookingcount,
        ]);
    }
    public function userbook($name) {
        $userbook = BookingDetail::join('bookings', 'bookings.madonhang', '=', 'booking_details.madonhang')
        ->join('movie_times', 'movie_times.id', '=', 'booking_details.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->join('movies', 'movies.id', '=', 'movie_dates.movie_id')
        ->where('booking_details.chair', $name)
        ->select('booking_details.madonhang', 'bookings.username', 'bookings.email', 'bookings.phoneNumber', 'booking_details.chair', 'booking_details.time_id')
        ->get();
        return view('admincp.seat.userbook', [
            'userbook' => $userbook,
        ]);
    }
}
