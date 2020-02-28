<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShopKnowledges extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shop_knowledges', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image', 200)->nullable();
            $table->string('alias', 120)->unique();
            $table->tinyInteger('sort')->default(0);
            $table->tinyInteger('status')->default(0);
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });

        Schema::create('shop_knowledges_description', function (Blueprint $table) {
            $table->integer('shop_knowledges_id');
            $table->string('lang', 10);
            $table->string('title', 200)->nullable();
            $table->string('keyword', 200)->nullable();
            $table->string('description', 300)->nullable();
            $table->text('content')->nullable();
            $table->primary(['shop_knowledges_id', 'lang']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shop_knowledges');
        Schema::dropIfExists('shop_knowledges_description');
    }
}
