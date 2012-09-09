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
	<?php $armor = Armor::find(Auth::user()->armor_id); ?>
	<div class="span1">
		<img src="http://www.gravatar.com/avatar/{{ md5(Auth::user()->email) }}?s=60" alt="" id="avatar" />
	</div>
	<div class="span2 smalltext">
		Atividade: Nenhuma<br />
		Armadura: {{ Auth::user()->armor_id ? Armor::find(Auth::user()->armor_id)->name : 'Nenhuma' }} {{ $armor->invoked ? '(Invocada)' : '' }}
	</div>
	<div class="span3">
		<table class="table table-condensed smalltext">
			<tr>
				<td style="text-align: center; width: 25%"><span class="badge badge-inverse" rel="tooltip" title="Força">{{ Auth::user()->strong }}</span></td>
				<td style="text-align: center; width: 25%"><span class="badge badge-success" rel="tooltip" title="Destreza">{{ Auth::user()->dexterity }}</span></td>
				<td style="text-align: center; width: 25%"><span class="badge badge-warning" rel="tooltip" title="Resistencia">{{ Auth::user()->resistence }}</span></td>
				<td style="text-align: center; width: 25%"><span class="badge badge-important" rel="tooltip" title="Vitalidade">{{ Auth::user()->vitality }}</span></td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center;">
					<div class="progress" style="margin: 0" rel="tooltip" title="Vigor: {{ Auth::user()->stamina }}%"><div class="bar" style="width: {{ Auth::user()->stamina }}%;"></div></div>
				</td>
				<!-- <td colspan="2" style="text-align: center;">
					<div class="progress progress-success" style="margin: 0" rel="tooltip" title="Armadura: {{ $armor->health }}/{{ $armor->healthmax }}"><div class="bar" style="width: 100%;"></div></div>
				</td> -->
			</tr>
			<tr>
				<td style="text-align: center;">Cosmo<br />{{ Auth::user()->cosmo }}</td>
				<td style="text-align: center;">Aura<br />{{ User::find(Auth::user()->id)->aura() }}x</td>
				<td style="text-align: center;">Meritos<br />{{ Auth::user()->merits }}</td>
				<td style="text-align: center;">Dinheiro<br />C$ {{ Auth::user()->money }}</td>
			</tr>
		</table>
	</div>

@endif
