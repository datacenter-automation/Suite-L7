<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVendorsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vendors', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')->index();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('stripe_id')->nullable()->index();
            $table->string('card_brand')->nullable();
            $table->string('card_last_four', 4)->nullable();
            $table->string('api_token', 80)->unique()->nullable()->default(null);
            $table->rememberToken();
            $table->timestamp('email_verified_at')->nullable();
            $table->timestamp('trial_ends_at')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vendors');
    }
}
