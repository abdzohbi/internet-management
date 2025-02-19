<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('cash_transactions', function (Blueprint $table) {
            $table->id();
            $table->enum('type', ['income', 'expense']); // نوع الحركة (إيراد أو مصروف)
            $table->decimal('amount', 10, 2); // المبلغ
            $table->string('description')->nullable(); // وصف الحركة
            $table->date('transaction_date')->default(now()); // تاريخ العملية
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('cash_transactions');
    }
};

