<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Candidato extends Model
{
    protected $fillable = [
        'nome',
        'sobrenome',
        'email',
        'pais',
        'areadeinteresse',
        'resume'
    ];    


}
