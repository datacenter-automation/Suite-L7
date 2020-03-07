<?php

namespace App\Http\Controllers\Api;

use App\Feedback;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\FeedbackStoreRequest;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    /**
     * @param \App\Http\Requests\Api\FeedbackStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(FeedbackStoreRequest $request)
    {
        $feedback = Feedback::create($request->all());

        return response()->noContent();
    }
}
