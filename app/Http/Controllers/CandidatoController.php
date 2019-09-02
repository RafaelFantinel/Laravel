<?php
namespace App\Http\Controllers;

use App\Candidato;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Redirect;
 
class CandidatoController extends Controller
{
    
    public function index(){
        $candidatos = Candidato::get();// Fazendo o select
        return view('candidatos.lista', ['candidatos'=> $candidatos]);
    }
    public function novo(){
        return view('candidatos.formulario');
    }
    public function salvar(Request $request){
        $candidato = new Candidato();
        $candidato->create($request->all());
        \Session::flash('mensagem_sucesso','Candidato cadastrado com sucesso');
        return Redirect::to('candidatos/novo');
    
        

        
}
}
?>