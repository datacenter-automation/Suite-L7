<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\NoteStoreRequest;
use App\Note;
use Illuminate\Http\Request;

class NoteController extends Controller
{
    /**
     * @param \App\Http\Requests\Api\NoteStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(NoteStoreRequest $request)
    {
        $note = Note::create($request->all());

        return response()->noContent();
    }
}
