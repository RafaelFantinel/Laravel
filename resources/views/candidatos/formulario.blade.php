@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                Formulario de cadastro 
                
                </div>
                <p class="h2">Listagem de candidatos</p>

                <div class="panel-body">
                @if(Session::has('mensagem_sucesso'));
                    <div class="alert alert-success">{{Session::get('mensagem_sucesso')}}</div>
                @endif
                {{ Form::open(['url'=>'candidatos/salvar']) }}
                {{ Form::label('nome', 'Nome')}}
                {{ Form::input('text','nome','',['class'=> 'form-control','autofocus','placeholder'=>'Nome'])}}
                {{ FOrm::label('sobrenome', 'Sobrenome')}}
                {{ Form::input('text','sobrenome','',['class'=> 'form-control','placeholder'=>'Sobrenome'])}}
                {{ Form::label('email', 'Email')}}
                {{ Form::input('text','email','',['class'=> 'form-control','placeholder'=>'Email'])}}
                {{ Form::label('pais', 'Pais')}}            
                {{ Form::input('text','pais','',['class'=> 'form-control','placeholder'=>'Pais'])}}
                {{ Form::label('areadeinteresse', 'Area de Interesse')}}
                {{ Form::input('select','areadeinteresse','',['class'=> 'form-control','placeholder'=>'Area de interesse'])}}
                {{ Form::label('resume', 'Resume')}}
                {{ Form::input('file','resume','',['class'=> 'form-control','placeholder'=>'Resume'])}}
                {{Form::submit('Salvar',['class'=>'btn btn-primary'])}}
                    {{ Form::close() }}
                </div>
                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                            <input type="select"></input>
                        </div>
                    @endif

                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
