<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function news($id) {
        $news = News::where('id', $id)->first();
        $category = Category::where('status', 1)->get();
        return view('user.news', [
            'category' => $category,
            'news' => $news,
        ]);
    }
}