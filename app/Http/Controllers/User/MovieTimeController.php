<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\MovieTime;
use Illuminate\Http\Request;

class MovieTimeController extends Controller
{
    public function time($id)
    {
        $data = MovieTime::where('date_id', $id)->get();
        return $data;
    }
}