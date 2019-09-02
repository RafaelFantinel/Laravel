<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Candidatos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('candidatos', function (Blueprint $table){
            $table->increments('id');
            $table->string('nome',68);
            $table->string('sobrenome',68);
            $table->string('email');
            $table->string('pais');
            $table->string('areadeinteresse');
            $table->blob('resume');
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
        Schema::drop('candidatos');
    }
}
