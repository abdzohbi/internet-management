<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddConnectionPointIdToCustomersTable extends Migration
{
    public function up()
    {
        if (!Schema::hasColumn('customers', 'connection_point_id')) {
            Schema::table('customers', function (Blueprint $table) {
                $table->unsignedBigInteger('connection_point_id')->nullable()->after('address');
                $table->foreign('connection_point_id')
                      ->references('id')
                      ->on('connection_points')
                      ->onDelete('set null');
            });
        }
    }
    
    public function down()
    {
        if (Schema::hasColumn('customers', 'connection_point_id')) {
            Schema::table('customers', function (Blueprint $table) {
                $table->dropForeign(['connection_point_id']);
                $table->dropColumn('connection_point_id');
            });
        }
    }
    
}
