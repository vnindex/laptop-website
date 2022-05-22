<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWishlistsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::disableForeignKeyConstraints();
        Schema::create('SanPhamYeuThich', function (Blueprint $table) {
            $table->unsignedInteger('wish_id')->autoIncrement();
            $table->unsignedInteger('user_id');
            $table->unsignedInteger('pro_id');
            $table->foreign('user_id')->references('user_id')->on('TaiKhoan')->onDelete('cascade');
            $table->foreign('pro_id')->references('pro_id')->on('SanPham')->onDelete('cascade');
            $table->timestamps();
        });
        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('SanPhamYeuThich');
        Schema::enableForeignKeyConstraints();
    }
}
