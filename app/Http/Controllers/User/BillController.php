<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Models\BookingDetail;
use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BillController extends Controller
{
    public function bill() {
        $category = Category::where('status', 1)->get();
        $user_id = Auth::id();
        $user = User::where('id', $user_id)->get();
        $booking = Booking::join('movie_times', 'bookings.time_id', '=', 'movie_times.id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->join('movies', 'movies.id', '=', 'movie_dates.movie_id')
        ->where('user_id', $user_id)
        ->select('movies.name', 'movie_times.time', 'movie_dates.date', 'bookings.madonhang', 'bookings.username', 'bookings.email', 'bookings.phoneNumber', 'bookings.total')
        ->get();
        return view('user.bill', [
            'user' => $user,
            'booking' => $booking,
            'category' => $category,
        ]);
    }
    public function billdetail($madonhang) {
        $category = Category::where('status', 1)->get();
        $bookingdetail = BookingDetail::join('movie_times', 'booking_details.time_id', '=', 'movie_times.id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->join('movies', 'movies.id', '=', 'movie_dates.movie_id')
        ->where('madonhang', $madonhang)
        ->select('booking_details.madonhang', 'booking_details.chair', 'movie_times.time', 'movie_dates.date', 'movies.name')
        ->get();
        $bookingdetail_id = BookingDetail::where('madonhang', $madonhang)->first();
        return view('user.billdetail', [
            'category' => $category,
            'bookingdetail' => $bookingdetail,
            'bookingdetail_id' => $bookingdetail_id,
        ]);
    }
}