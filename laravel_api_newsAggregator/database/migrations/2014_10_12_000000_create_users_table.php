<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();

            $table->string('password');

            $table->unsignedBigInteger('preferred_source_id')->references('id')->on('sources')->onDelete('cascade')->nullable();

            $table->unsignedBigInteger('preferred_category_id')->references('id')->on('categories')->onDelete('cascade')->nullable();

            $table->unsignedBigInteger('preferred_author_id')->references('id')->on('authors')->onDelete('cascade')->nullable();

            $table->timestamp('email_verified_at')->nullable();

            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
