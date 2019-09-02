@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                Candidatos 
                <a cass="pull-right" href="{{ url('candidatos/novo')}}">Novo candidato</a>
                </div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    </div>
                <div class="panel-body">
                <table class="table">
                    <th>Nome</th>
                    <th>Sobrenome</th>
                    <th>Email</th>
                    <th>Pais</th>
                    <th>Area de Interesse</th>
                    <th>Resume</th>
                    <tbody>
                    @foreach($candidatos as $candidato)
                        <tr>
                            <td>{{$candidato->nome}}</td>
                            <td>{{$candidato->sobrenome}}</td>
                            <td>{{$candidato->email}}</td>
                            <td>{{$candidato->pais}}</td>
                            <td>{{$candidato->areadeinteresse}}</td>
                            <td>{{$candidato->resume}}</td>                
                        </tr>
                        @endforeach                    
                    </tbody>
                </table>
                </div>
                </div>
            </div>
        </div>
    </div>

@endsection
