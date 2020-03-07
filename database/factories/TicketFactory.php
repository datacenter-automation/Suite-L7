<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Ticket;
use Faker\Generator as Faker;

$factory->define(Ticket::class, function (Faker $faker) {
    return [
        'ticket_number' => $faker->word,
        'subject' => $faker->word,
        'body' => $faker->text,
        'owner_id' => factory(\App\Models\Roles\User::class),
    ];
});
