<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CheckoutController extends Controller
{
    public function checkoutget() {
        $category = Category::where('status', 1)->get();
        return view('user.checkout', [
            'category' => $category,
        ]);
    }
    public function checkoutpost(Request $request) {
        $category = Category::where('status', 1)->get();
        $data = $request->all();
        Session::put([
            'seat' => $data['seat'],
            'price' => $data['price'],
            'name' => $data['name'],
            'time' => $data['time'],
            'movietime_id' => $data['movietime_id'],
        ]);
        return view('user.checkout', [
            'category' => $category,            
        ]);
    }
}
