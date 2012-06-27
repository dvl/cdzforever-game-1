@layout('base')

@section('title')
	Armaduras
@endsection

@section('content')

	<ul class="breadcrumb">
		<li  class="active">
			{{ HTML::link('armor','Minha Armadura') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('armors','Lista de Armaduras') }} 
		</li>
	</ul>

	@if (isset($armor->name))
		<div>
			{{ Form::open('armor') }}
				<table class="table table-bordered"> 
					@if ($armor->invoked == 0)
					<thead>
						<th colspan="2">Invocar Armadura</th>
					</thead>
						@if ($armor->health <= 0)
							<tbody>
									<tr>
										<td colspan="4" style="vertical-align: middle;">
											Sua armadura de <strong>{{ $armor->name }}</strong> precisa ser reparada antes de poder ser invocada.
										</td>
										<td rowspan="4" style="vertical-align: middle; text-align: center;">
											{{ Form::submit('Invocar',array('name' => 'action', 'class' => 'btn btn-primary btn-large disabled', 'disabled' => 'disabled')) }}
										</td>
									</tr>
							</tbody>							
						@else
							<tbody>
								<tr>
									<td colspan="4">
										Clique no botão ao lado para invocar sua armadura de <strong>{{ $armor->name }}</strong>, seu atributos com a armadura invoca serão:
									</td>
									<td rowspan="4" style="vertical-align: middle; text-align: center;">
										{{ Form::submit('Invocar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
									</td>
								</tr>
								<tr>
									<td>Cosmo</td>
									<td><span class="badge">{{ round($user->cosmo_base + ($user->cosmo_base * ($armor->cosmo / 100))) }}</span></td>
									<td>Vida</td>
									<td><span class="badge">{{ ($user->vitality + $armor->vitality) * 10 }}</span></td>
								</tr>
								<tr>
									<td>Força</td>
									<td><span class="badge badge-inverse">{{ $user->strong + $armor->strong }}</span></td>
									<td>Destreza</td>
									<td><span class="badge badge-success">{{ $user->dexterity + $armor->dexterity }}</span></td>
								</tr>
								<tr>
									<td>Resistencia</td>
									<td><span class="badge badge-warning">{{ $user->resistence + $armor->resistence }}</span></td>
									<td>Vitalidade</td>
									<td><span class="badge badge-important">{{ $user->vitality + $armor->vitality }}</span></td>
								</tr>
							</tbody>
						@endif
					@else
					<thead>
						<th colspan="2">Retirar Armadura</th>
					</thead>
					<tbody>
						<tr>
							<td colspan="4">
								Clique no botão ao lado para retirar sua armadura de <strong>{{ $armor->name }}</strong>, seu atributos com a armadura retirada serão:
							</td>
							<td rowspan="4" style="vertical-align: middle; text-align: center;">
								{{ Form::submit('Retirar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
							</td>
						</tr>
						<tr>
							<td>Cosmo</td>
							<td><span class="badge">{{ $user->cosmo_base }}</span></td>
							<td>Vida</td>
							<td><span class="badge">{{ ($user->vitality - $armor->vitality) * 10 }}</span></td>
						</tr>
						<tr>
							<td>Força</td>
							<td><span class="badge badge-inverse">{{ $user->strong - $armor->strong }}</span></td>
							<td>Destreza</td>
							<td><span class="badge badge-success">{{ $user->dexterity - $armor->dexterity }}</span></td>
						</tr>
						<tr>
							<td>Resistencia</td>
							<td><span class="badge badge-warning">{{ $user->resistence - $armor->resistence }}</span></td>
							<td>Vitalidade</td>
							<td><span class="badge badge-important">{{ $user->vitality - $armor->vitality }}</span></td>
						</tr>
					</tbody>
					@endif
					<thead>
						<th colspan="5">Reparar Armadura</th>
					</thead>
					<tbody>
						<tr>
							@if ($armor->health == $armor->healthmax)
								<td colspan="4" style="vertical-align: middle;">A durablidade da sua armadura de <strong>{{ $armor->name }}</strong> e de <span class="badge">{{ $armor->health }}/{{ $armor->healthmax }}</span>, ela não precisa de reparos.</td>
								<td style="vertical-align: middle; text-align: center;">
									{{ Form::submit('Reparar',array('name' => 'action', 'class' => 'btn btn-primary btn-large disabled', 'disabled' => 'disabled')) }}
								</td>
							@else 
								<td colspan="4" style="vertical-align: middle;">A durablidade da sua armadura de <strong>{{ $armor->name }}</strong> e de <span class="badge">{{ $armor->health }}/{{ $armor->healthmax }}</span>, o custo para repara-lá será de C$ {{ $armor->repair() }}</td>
								<td style="vertical-align: middle; text-align: center;">
									{{ Form::submit('Reparar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
								</td>
							@endif
						</tr>
					</tbody>
					<thead>
						<th colspan="5">Desfazer Armadura</th>
					</thead>
					<tbody>
						<tr>
							<td colspan="4" style="vertical-align: middle;">Caso você tenha aumentado seu cosmo recentemente talvez você queira uma armadura mais adequada, você pode se desfazer da sua armadura atual por C$ {{ $armor->remove }}, para isso digite sua senha no campo ao lado e clique em desfazer.</td>
							<td style="vertical-align: middle; text-align: center;">
								@if ($user->money < $armor->remove)
									{{ Form::password('confirmation',array('class' => 'input-small', 'placeholder' => 'Senha', 'disabled' => 'disabled')) }} 
									{{ Form::submit('Desfazer',array('name' => 'action', 'class' => 'btn btn-primary btn-large disabled', 'disabled' => 'disabled')) }}
								@else
									{{ Form::password('confirmation',array('class' => 'input-small', 'placeholder' => 'Senha')) }}
									{{ Form::submit('Desfazer',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
								@endif
							</td>
						</tr>
					</tbody>
				</table>
				{{ Form::token() }}
			{{ Form::close() }}
		</div>
	@else
		<div class="alert alert-error">Você não possui nenhuma armadura, vá até a {{ HTML::link('armors','Lista de Armaduras') }} para adquirir uma.</div>
		<br />
	@endif

@endsection

