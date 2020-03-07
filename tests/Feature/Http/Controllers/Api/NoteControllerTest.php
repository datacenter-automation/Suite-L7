<?php

namespace Tests\Feature\Http\Controllers\Api;

use App\Note;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use JMac\Testing\Traits\HttpTestAssertions;
use Tests\TestCase;

/**
 * @see \App\Http\Controllers\Api\NoteController
 */
class NoteControllerTest extends TestCase
{
    use HttpTestAssertions, RefreshDatabase, WithFaker;

    /**
     * @test
     */
    public function store_uses_form_request_validation()
    {
        $this->assertActionUsesFormRequest(
            \App\Http\Controllers\Api\NoteController::class,
            'store',
            \App\Http\Requests\NoteStoreRequest::class
        );
    }

    /**
     * @test
     */
    public function store_saves_and_responds_with()
    {
        $ticket_id = $this->faker->randomDigitNotNull;
        $body = $this->faker->text;
        $owner_id = $this->faker->randomDigitNotNull;

        $response = $this->post(route('note.store'), [
            'ticket_id' => $ticket_id,
            'body' => $body,
            'owner_id' => $owner_id,
        ]);

        $notes = Note::query()
            ->where('ticket_id', $ticket_id)
            ->where('body', $body)
            ->where('owner_id', $owner_id)
            ->get();
        $this->assertCount(1, $notes);
        $note = $notes->first();

        $response->assertNoContent();
    }
}
