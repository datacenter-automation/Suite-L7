<?php

namespace App\Http\Controllers\Api;

use App\Comment;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\CommentStoreRequest;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * @param \App\Http\Requests\Api\CommentStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(CommentStoreRequest $request)
    {
        $comment = Comment::create($request->all());

        return response()->noContent();
    }
}
