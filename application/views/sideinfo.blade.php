@if (Auth::guest())
	<div class="span1" id="quicklogin">
		{{ Form::open('login') }}
			<p>
				{{ Form::text('username',null,array('placeholder' => 'Usuário')) }}

				{{ Form::password('password',array('placeholder' => 'Senha')) }}

				{{ form::token() }}
				{{ Form::submit('Login',array('class' => 'btn btn-primary')) }}
			</p>
		{{ Form::close() }}
	</div>
@else
	<div class="span1">
		<img src="http://www.gravatar.com/avatar/{{ md5(Auth::user()->email) }}?s=60" alt="" id="avatar" />
	</div>
	<div class="span2 smalltext">
		Bem vindo(a): {{ Auth::user()->username }}, <br />
		Atividade: <br />
		Vigor: {{ Auth::user()->stamina }}%<br />
		Armadura: {{ Auth::user()->armor_id ? Armor::find(Auth::user()->armor_id)->name : 'Nenhuma' }}
	</div>
@endif
