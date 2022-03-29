<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddProductType extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ec_products', function (Blueprint $table) {
            $table->enum('type', ['regular','framebuilder'])->after('id')->default('regular');
            $table->string('product_number')->nullable()->after('sku');
        });

        Schema::table('ec_product_categories', function (Blueprint $table) {
            $table->enum('type', ['regular','framebuilder'])->after('id')->default('regular');
        });

        Schema::table('ec_product_attribute_sets', function (Blueprint $table) {
            $table->enum('type', ['regular','framebuilder'])->after('id')->default('regular');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {

        Schema::table('ec_product_attribute_sets', function (Blueprint $table) {
            $table->dropColumn('type');
        });

        Schema::table('ec_product_categories', function (Blueprint $table) {
            $table->dropColumn('type');
        });

        Schema::table('ec_products', function (Blueprint $table) {
            $table->dropColumn('type');
            $table->dropColumn('product_number');
        });

    }
}
