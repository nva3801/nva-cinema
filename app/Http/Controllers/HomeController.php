<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Models\BookingDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function adminView()
    {
        $count_bill_date = BookingDetail::join('movie_times', 'movie_times.id', '=', 'booking_details.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->whereDate('booking_details.created_at', '=', Carbon::now()->toDateString())
        ->count();
        $sum_bill_date = Booking::join('movie_times', 'movie_times.id', '=', 'bookings.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->whereDate('bookings.created_at', '=', Carbon::now()->toDateString())
        ->sum('total');
        $count_bill_month = BookingDetail::join('movie_times', 'movie_times.id', '=', 'booking_details.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->whereMonth('booking_details.created_at', '=', Carbon::now()->format('m'))
        ->count();
        $sum_bill_month = Booking::join('movie_times', 'movie_times.id', '=', 'bookings.time_id')
        ->join('movie_dates', 'movie_dates.id', '=', 'movie_times.date_id')
        ->whereMonth('bookings.created_at', '=', Carbon::now()->format('m'))
        ->sum('total');
        return view('adminview', [
            'count_bill_date' => $count_bill_date,
            'sum_bill_date' => $sum_bill_date,
            'count_bill_month' => $count_bill_month,
            'sum_bill_month' => $sum_bill_month,
        ]);
        return view('adminview');
    }
}