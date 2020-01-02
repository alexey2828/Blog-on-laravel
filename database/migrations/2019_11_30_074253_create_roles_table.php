<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesTable extends Migration
{
      /**
     * Функция для создания таблиц
     */    
     public function up(){
        Schema::create('roles', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('display_name');
            $table->timestamps();
        });
        Schema::create('users_roles', function (Blueprint $table) {
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
            $table->integer('role_id')->unsigned();
            $table->foreign('role_id')
                ->references('id')
                ->on('roles')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }
    /**
     * Функция для удаления созданных таблиц
     */
    public function down(){
        Schema::dropIfExists('roles');
        Schema::dropIfExists('users_roles');
    }
}
