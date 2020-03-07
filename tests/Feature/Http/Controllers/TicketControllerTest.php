<?php

namespace Tests\Feature\Http\Controllers;

use App\Ticket;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use JMac\Testing\Traits\HttpTestAssertions;
use Tests\TestCase;

/**
 * @see \App\Http\Controllers\TicketController
 */
class TicketControllerTest extends TestCase
{
    use HttpTestAssertions, RefreshDatabase, WithFaker;

    /**
     * @test
     */
    public function index_displays_view()
    {
        $tickets = factory(Ticket::class, 3)->create();

        $response = $this->get(route('ticket.index'));

        $response->assertOk();
        $response->assertViewIs('ticket.index');
        $response->assertViewHas('tickets');
    }

    /**
     * @test
     */
    public function create_displays_view()
    {
        $response = $this->get(route('ticket.create'));

        $response->assertOk();
        $response->assertViewIs('ticket.create');
    }

    /**
     * @test
     */
    public function store_uses_form_request_validation()
    {
        $this->assertActionUsesFormRequest(
            \App\Http\Controllers\TicketController::class,
            'store',
            \App\Http\Requests\TicketStoreRequest::class
        );
    }

    /**
     * @test
     */
    public function store_saves_and_redirects()
    {
        $ticket = $this->faker->word;

        $response = $this->post(route('ticket.store'), [
            'ticket' => $ticket,
        ]);

        $tickets = Ticket::query()
            ->where('ticket', $ticket)
            ->get();
        $this->assertCount(1, $tickets);
        $ticket = $tickets->first();

        $response->assertRedirect(route('ticket.index'));
        $response->assertSessionHas('ticket.id', $ticket->id);
    }

    /**
     * @test
     */
    public function show_displays_view()
    {
        $ticket = factory(Ticket::class)->create();

        $response = $this->get(route('ticket.show', $ticket));

        $response->assertOk();
        $response->assertViewIs('ticket.show');
        $response->assertViewHas('ticket');
    }

    /**
     * @test
     */
    public function edit_displays_view()
    {
        $ticket = factory(Ticket::class)->create();

        $response = $this->get(route('ticket.edit', $ticket));

        $response->assertOk();
        $response->assertViewIs('ticket.edit');
        $response->assertViewHas('ticket');
    }

    /**
     * @test
     */
    public function update_uses_form_request_validation()
    {
        $this->assertActionUsesFormRequest(
            \App\Http\Controllers\TicketController::class,
            'update',
            \App\Http\Requests\TicketUpdateRequest::class
        );
    }

    /**
     * @test
     */
    public function update_redirects()
    {
        $ticket = factory(Ticket::class)->create();
        $ticket = $this->faker->word;

        $response = $this->put(route('ticket.update', $ticket), [
            'ticket' => $ticket,
        ]);

        $response->assertRedirect(route('ticket.index'));
        $response->assertSessionHas('ticket.id', $ticket->id);
    }

    /**
     * @test
     */
    public function destroy_deletes_and_redirects()
    {
        $ticket = factory(Ticket::class)->create();
        $ticket = factory(Ticket::class)->create();

        $response = $this->get(route('ticket.destroy', $ticket));

        $response->assertRedirect(route('ticket.index'));

        $this->assertDeleted($ticket);
    }
}
