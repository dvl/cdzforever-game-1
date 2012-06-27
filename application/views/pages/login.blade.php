@layout('base')

@section('title')
Login
@endsection

@section('content')
	@if (Session::has('login_errors'))
		<div class="alert alert-error">{{ Session::get('login_errors') }}</div>
	@endif

	{{ Form::open('login','POST', array('class' => 'form-horizontal')) }}
		<div class="control-group">
			{{ Form::label('username', 'Usuário', array('class' => 'control-label')) }}
			<div class="controls">
				<p>{{ Form::text('username', Input::old('username'), array('class' => 'input-large')) }}</p>
			</div>
			{{ Form::label('password', 'Senha', array('class' => 'control-label')) }}
			<div class="controls">
				<p>{{ Form::password('password',  array('class' => 'input-large')) }}</p>
				<p>Para recuperar seu nome de usuário e/ou senha {{ HTML::link('login/recover','clique aqui') }}.</p>
			</div>
			<div class="controls">
				{{ Form::submit('Login',array('class' => 'btn btn-primary')) }}
			</div>
		</div>
		{{ Form::token() }}
		
	{{ Form::close() }}
@endsection