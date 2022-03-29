<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class EcommerceCreateSizesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

      Schema::dropIfExists('ec_product_sizes');

      Schema::create('ec_product_sizes', function (Blueprint $table) {
          $table->id();
          $table->string('name');
          $table->string('number')->nullable();
          $table->timestamps();
      });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ec_product_sizes');
    }
}
