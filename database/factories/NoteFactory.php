<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Note;
use Faker\Generator as Faker;

$factory->define(Note::class, function (Faker $faker) {
    return [
        'ticket_id' => factory(\App\Ticket::class),
        'body' => $faker->text,
        'owner_id' => factory(\App\Models\Roles\Internal::class),
    ];
});
