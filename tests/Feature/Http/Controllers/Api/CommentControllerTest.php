<?php

namespace Tests\Feature\Http\Controllers\Api;

use App\Comment;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use JMac\Testing\Traits\HttpTestAssertions;
use Tests\TestCase;

/**
 * @see \App\Http\Controllers\Api\CommentController
 */
class CommentControllerTest extends TestCase
{
    use HttpTestAssertions, RefreshDatabase, WithFaker;

    /**
     * @test
     */
    public function store_uses_form_request_validation()
    {
        $this->assertActionUsesFormRequest(
            \App\Http\Controllers\Api\CommentController::class,
            'store',
            \App\Http\Requests\CommentStoreRequest::class
        );
    }

    /**
     * @test
     */
    public function store_saves_and_responds_with()
    {
        $ticket_id = $this->faker->randomDigitNotNull;
        $body = $this->faker->text;

        $response = $this->post(route('comment.store'), [
            'ticket_id' => $ticket_id,
            'body' => $body,
        ]);

        $comments = Comment::query()
            ->where('ticket_id', $ticket_id)
            ->where('body', $body)
            ->get();
        $this->assertCount(1, $comments);
        $comment = $comments->first();

        $response->assertNoContent();
    }
}
