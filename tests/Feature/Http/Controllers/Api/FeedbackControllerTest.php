<?php

namespace Tests\Feature\Http\Controllers\Api;

use App\Feedback;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

/**
 * @see \App\Http\Controllers\Api\FeedbackController
 */
class FeedbackControllerTest extends TestCase
{

    use RefreshDatabase, WithFaker;

    /**
     * @test
     */
    public function store_saves_and_responds_with()
    {
        $ticket_id = $this->faker->randomDigitNotNull;
        $body = $this->faker->text;
        $stars = $this->faker->randomNumber();
        $owner_id = $this->faker->randomDigitNotNull;

        $response = $this->post(route('feedback.store'), [
            'ticket_id' => $ticket_id,
            'body'      => $body,
            'stars'     => $stars,
            'owner_id'  => $owner_id,
        ]);

        $feedback = Feedback::query()->where('ticket_id', $ticket_id)->where('body', $body)->where('stars', $stars)->where('owner_id', $owner_id)->get();
        $this->assertCount(1, $feedback);
        $feedback = $feedback->first();

        $response->assertNoContent();
    }
}
