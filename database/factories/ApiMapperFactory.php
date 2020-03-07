<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\ApiMapper;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(ApiMapper::class, function (Faker $faker) {
    return [
        'uuid'        => $faker->uuid,
        'api_code'    => $faker->unique()->randomDigit,
        'status_code' => $faker->randomElement([
            400,
            401,
            403,
            404,
            405,
            406,
            409,
            411,
            412,
            415,
            422,
            428,
            500,
            501,
        ]),
        'reason'      => Str::before($faker->sentence, '.'),
    ];
});
