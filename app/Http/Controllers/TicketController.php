<?php

namespace App\Http\Controllers;

use App\Http\Requests\TicketStoreRequest;
use App\Http\Requests\TicketUpdateRequest;
use App\Ticket;
use Illuminate\Http\Request;

class TicketController extends Controller
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $tickets = Ticket::all();

        return view('ticket.index', compact('tickets'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('ticket.create');
    }

    /**
     * @param \App\Http\Requests\TicketStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(TicketStoreRequest $request)
    {
        $ticket = Ticket::create($request->all());

        $request->session()->flash('ticket.id', $ticket->id);

        return redirect()->route('ticket.index');
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Ticket $ticket
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Ticket $ticket)
    {
        return view('ticket.show', compact('ticket'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Ticket $ticket
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, Ticket $ticket)
    {
        return view('ticket.edit', compact('ticket'));
    }

    /**
     * @param \App\Http\Requests\TicketUpdateRequest $request
     * @param \App\Ticket $ticket
     * @return \Illuminate\Http\Response
     */
    public function update(TicketUpdateRequest $request, Ticket $ticket)
    {
        $request->session()->flash('ticket.id', $ticket->id);

        return redirect()->route('ticket.index');
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Ticket $ticket
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Ticket $ticket)
    {
        $ticket->delete();

        return redirect()->route('ticket.index');
    }
}
