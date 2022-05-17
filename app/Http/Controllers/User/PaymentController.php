<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Models\BookingDetail;
use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PaymentController extends Controller
{
    public function payment(Request $request) {
        $category = Category::where('status', 1)->get();
        $data = $request->all();
        $seat = Session::get('seat');
        $arr = explode(',', $seat);
        Session::get('price');
        Session::get('name');
        Session::get('movietime_id');
        $user = User::find($data['id']);
        $booking = new Booking;
        $booking->madonhang = rand(0, 9999);
        $booking->user_id = $user->id;
        $booking->username = $user->name;
        $booking->email = $user->email;
        $booking->phoneNumber = $user->phoneNumber;
        $booking->time_id = Session::get('movietime_id');
        $booking->total = Session::get('price');
        $booking->save();
        foreach($arr as $key => $arr) {
            // dd($arr);
            $bookingdetail = new BookingDetail;
            $bookingdetail->madonhang = $booking->madonhang;
            $bookingdetail->chair = $arr;
            $bookingdetail->time_id = Session::get('movietime_id');
            $bookingdetail->save();
        }
        Session::pull('seat');
        Session::pull('price');
        Session::pull('name');
        Session::pull('movietime_id');
        Session::pull('time');
        return view('user.checkout', [
            'category' => $category,
        ]);
    }
}