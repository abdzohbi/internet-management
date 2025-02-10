<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        if (!Schema::hasTable('customers')) {
            Schema::create('customers', function (Blueprint $table) {
                $table->id();
                $table->string('username')->nullable()->unique();
                $table->string('full_name');
                $table->string('phone');
                $table->string('town');
                $table->string('address')->nullable();
                $table->unsignedBigInteger('connection_point_id')->nullable();
                $table->timestamps();
                $table->foreign('connection_point_id')
                      ->references('id')
                      ->on('connection_points')
                      ->onDelete('set null');
            });
        }
    }
    

    public function down()
    {
        if (Schema::hasTable('customers')) {
            Schema::table('customers', function (Blueprint $table) {
                $table->dropForeign(['connection_point_id']);
            });

            Schema::dropIfExists('customers');
        }
    }
};
