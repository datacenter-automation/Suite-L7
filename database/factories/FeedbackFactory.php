<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Feedback;
use Faker\Generator as Faker;

$factory->define(Feedback::class, function (Faker $faker) {
    return [
        'ticket_id' => factory(\App\Ticket::class),
        'body' => $faker->text,
        'stars' => $faker->randomNumber(),
        'owner_id' => factory(\App\Models\Roles\User::class),
    ];
});
