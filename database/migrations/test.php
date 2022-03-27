<?php
Schema::create('kitchen', function($table) {
     $table->integer('id', true, true);
     $table->integer('restaurant_id')->unsigned(); //or $table->integer('restaurant_id', false, true);
     $table->foreign('restaurant_id')
           ->references('id')->on('restaurants')
           ->onDelete('cascade');
     $table->string('name');
     $table->primary(array('id', 'restaurant_id'));
});
