<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Models\BookingDetail;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    public function booking() {
        $booking = Booking::join('movie_times', 'movie_times.id', '=', 'bookings.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->join('movies', 'movies.id', '=', 'movie_dates.movie_id')
        ->select('movies.name', 'movie_dates.date', 'movie_times.time', 'bookings.madonhang', 'bookings.username', 'bookings.email', 'bookings.phoneNumber', 'bookings.total')
        ->get();
        return view('admincp.booking.index', [
            'booking' => $booking,
        ]);
    }
    public function bookingdetail($id) {
        $bookingdetail = BookingDetail::join('movie_times', 'movie_times.id', '=', 'booking_details.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->join('movies', 'movies.id', '=', 'movie_dates.movie_id')
        ->where('madonhang', $id)
        ->select('movies.name', 'movie_dates.date', 'movie_times.time', 'booking_details.madonhang', 'booking_details.chair')
        ->get();
        return view('admincp.booking.bookingdetail', [
            'bookingdetail' => $bookingdetail,
        ]);
    }
}
