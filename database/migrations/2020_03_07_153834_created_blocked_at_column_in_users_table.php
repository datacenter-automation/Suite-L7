<?php

/**
 * Laravel Schematics.
 *
 * WARNING: removing @tag value will disable automated removal
 *
 * @author  Maarten Tolhuijs <mtolhuys@protonmail.com>
 * @url     https://github.com/mtolhuys/laravel-schematics
 * @tag     laravel-schematics-users-model
 */

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatedBlockedAtColumnInUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', static function (Blueprint $table) {
            $table->timestamp('blocked_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', static function (Blueprint $table) {
            $table->dropColumn('blocked_at');
        });
    }
}
