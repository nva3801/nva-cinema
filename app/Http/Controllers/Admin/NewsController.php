<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\Models\News;
use App\Http\Requests\StoreNewsRequest;
use App\Http\Requests\UpdateNewsRequest;
use Illuminate\Support\Facades\Storage;

class NewsController extends Controller
{

    public function index()
    {
        $news = News::get();
        return view('admincp.news.index', [
            'news' => $news,
        ]);
    }

    public function create()
    {
        return view('admincp.news.create');
    }

    public function store(StoreNewsRequest $request)
    {
        $path = Storage::disk('public')->put('news', $request->file('image'));
        $arr = $request->validated();
        $arr['image'] = $path;
        News::create($arr);
        return redirect()->route('admin.news.index');
    }

    public function show(News $news)
    {
        //
    }

    public function edit(News $news)
    {
        return view('admincp.news.edit', [
            'news' => $news,
        ]);
    }

    public function update(UpdateNewsRequest $request, News $news)
    {
        if ($request->hasFile('image')) {
            $path = Storage::disk('public')->put('news', $request->file('image'));
            $arr = $news->fill($request->validated());
            $arr['image'] = $path;
        } else {
            $news->fill($request->validated());
        }
        $news->save();
        return redirect()->route('admin.news.index');
    }

    public function destroy(News $news)
    {
        $news->delete();
        return redirect()->route('admin.news.index');
    }
}