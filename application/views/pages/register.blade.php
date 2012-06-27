@layout('base')

@section('title')
Cadastro
@endsection

@section('content')
	
	@if (Session::has('errors'))
		<div class="alert alert-error">Por favor, corrija os seguintes erros antes de continuar:
			{{ HTML::ul($errors); }}
		</div>
	@endif

	@if (!Session::has('success'))

		{{ Form::open('register','POST', array('class' => 'form-horizontal')) }}
			<div class="control-group">
				{{ Form::label('username', 'Usuário', array('class' => 'control-label')) }}
				<div class="controls">
					{{ Form::text('username', Input::old('username'), array('class' => 'input-xlarge')) }}
				</div>
			</div>
			<div class="control-group">
				{{ Form::label('email', 'E-mail', array('class' => 'control-label')) }}
				<div class="controls">
					{{ Form::text('email', Input::old('email'), array('class' => 'input-xlarge')) }}
				</div>
			</div>
			<div class="control-group">
				{{ Form::label('password', 'Senha', array('class' => 'control-label')) }}
				<div class="controls">
					{{ Form::password('password',  array('class' => 'input-large')) }}
				</div>
			</div>
			<div class="control-group">
				{{ Form::label('password', 'Repita a Senha', array('class' => 'control-label')) }}
				<div class="controls">
					{{ Form::password('password-2',  array('class' => 'input-large ')) }}
				</div>
			</div>
			<div class="control-group">
				{{ Form::label('sex', 'Sexo', array('class' => 'control-label')) }}
				<div class="controls">
					{{ Form::select('sex', array('M' => 'Masculino', 'F' => 'Feminino'),Input::old('sex')); }}
				</div>
			</div>
			<div class="control-group">
				{{ Form::label('state', 'Estado', array('class' => 'control-label')) }}
				<div class="controls">
					{{ Form::states('state',Input::old('state')) }}
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<p>{{ Form::checkbox('rules') }} Li e Concordo com as {{ HTML::link('page/rules','Regras') }}</p>
					<p>{{ Form::checkbox('terms') }} Li e Concordo com os {{ HTML::link('page/terms','Termos de Uso') }}</p>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					{{ Form::submit('Efetuar Cadastro',array('class' => 'btn btn-primary')) }}
				</div>
			</div>
			{{ Form::token() }}
			
		{{ Form::close() }}

	@else

		<div class="alert alert-success">Sua conta foi criada com sucesso, siga as instruções enviadas para o seu email para ativar sua conta.</div>
		<br />
	
	@endif
@endsection


