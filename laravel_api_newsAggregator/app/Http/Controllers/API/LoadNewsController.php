<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\News;
use Illuminate\Http\Request;

class LoadNewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $news = News::all();
        if ($news)
        {
            return response()->json(['data' => $news], 200);
        }
        else
        {
            return response()->json(['status' => 'error', 'message' => 'Technical error ocurred , contact administrator.'], 404);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $search = News::where('id', 'LIKE', '%' . $request->search . '%')
                        ->orWhere('title', 'LIKE', '%' . $request->search . '%')
                        ->orWhere('description', 'LIKE', '%' . $request->search . '%')
                        ->orWhere('content', 'LIKE', '%' . $request->search . '%')
                        ->orWhere('api_source_id', 'LIKE', '%' . $request->search . '%')
                        ->orWhere('image_url', 'LIKE', '%' . $request->search . '%')
                        ->orWhere('published_at', 'LIKE', '%' . $request->search . '%')
                        ->get();
        if ($search)
        {
            return response()->json(['data' => $search], 200);
        }
        else
        {
            return response()->json(['status' => 'error', 'message' => 'Technical error ocurred , contact administrator.'], 404);
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(News $news)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, News $news)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(News $news)
    {
        //
    }
}
