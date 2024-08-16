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
        Schema::create('news', function (Blueprint $table) {
            $table->id();
            $table->longText('title');

            $table->longText('description')->nullable();

            $table->longText('content')->nullable();

            $table->unsignedBigInteger('api_source_id')->references('id')->on('sources')->onDelete('cascade');

            $table->unsignedBigInteger('real_source_id')->references('id')->on('real_sources')->onDelete('cascade');

            $table->unsignedBigInteger('category_id')->references('id')->on('sources')->onDelete('cascade');

            $table->unsignedBigInteger('author_id')->references('id')->on('sources')->onDelete('cascade');

            $table->index('author_id');
            $table->foreign('author_id')->references('id')->on('authors')->onDelete('cascade');

            $table->longText('image_url')->nullable();
            $table->longText('web_url')->nullable();

            $table->dateTime('published_at')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('news');
    }
};
