@layout('base')

@section('title')
	Perfil de {{ $user->username }}
@endsection

@section('content')
	<div>
		<table class="table table-bordered">
			<thead>
				<th colspan="4">Perfil de {{ $user->username }}</th>
			</thead>
			<tbody>
				<tr>
					<td>Cadastrado em:</td>
					<td>{{ $user->created_at }}</td>
					<td>Ultimo login em:</td>
					<td>{{ $user->updated_at }}</td>
				</tr>
				<tr>
					<td>Sexo:</td>
					<td>{{ $user->sex }}</td>
					<td>Estado:</td>
					<td>{{ $user->state }}</td>
				</tr>
			</tbody>
		</table>

		<table class="table table-bordered">
			<thead>
				<th colspan="4">Atributos</th>
			</thead>
			<tbody>
				<tr>
					<td>Cosmo:</td>
					<td>{{ $user->cosmo }}</td>
					<td>Aura:</td>
					<td>{{ $user->aura() }}x</td>
				</tr>
				<tr>
					<td>Vigor:</td>
					<td colspan="2"><div class="progress" style="margin: 0"><div class="bar" style="width: {{ $user->stamina }}%;"></div></div></td>
					<td>{{ $user->stamina }}%</td>
				</tr>				
				<tr>
					<td>Força:</td>
					<td><span class="badge badge-inverse">{{ $user->strong }}</span></td>
					<td>Destreza:</td>
					<td><span class="badge badge-success">{{ $user->dexterity }}</span></td>
				</tr>
				<tr>
					<td>Resistencia:</td>
					<td><span class="badge badge-warning">{{ $user->resistence }}</span></td>
					<td>Vitalidade:</td>
					<td><span class="badge badge-important">{{ $user->vitality }}</span></td>
				</tr>
				<tr>
					<td>Dinheiro:</td>
					<td>C$ {{ $user->money }},00</td>
					<td>Meritos:</td>
					<td>{{ $user->merits }}</td>
				</tr>
			</tbody>
		</table>

		@if ($user->armor_id != 0)

		<table class="table table-bordered">
			<thead>
				<th colspan="4">Armadura</th>
			</thead>
			<tbody>
				<tr>
					<td>Nome:</td>
					<td>{{ $armor->name }}</td>
					<td>Categoria:</td>
					<td>{{ $armor->category->name }}</td>
				</tr>
				<tr>
					<td>Invocada:</td>
					<td>{{ $armor->invoked }}</td>
					<td>Classe:</td>
					<td><span class="badge badge-info">{{ $armor->class }}</span></td>
				</tr>
				<tr>
					<td>Força:</td>
					<td><span class="badge badge-inverse">+{{ $armor->strong }}</span></td>
					<td>Destreza:</td>
					<td><span class="badge badge-success">+{{ $armor->dexterity }}</span></td>
				</tr>
				<tr>
					<td>Resistencia:</td>
					<td><span class="badge badge-warning">+{{ $armor->resistence }}</span></td>
					<td>Vitalidade:</td>
					<td><span class="badge badge-important">+{{ $armor->vitality }}</span></td>
				</tr>
				<tr>
					<td>Cosmo:</td>
					<td><span class="badge">+{{ $armor->cosmo }}%</span></td>
					<td>Durabilidade:</td>
					<td><span class="badge">{{ $armor->health }}/{{ $armor->healthmax }}</span></td>
				</tr>
			</tbody>
		</table>

		@endif

		@if (Session::has('itens'))

		<table class="table table-bordered">
			<thead>
				<th colspan="3">Itens</th>
			</thead>
			<tbody>
				<tr>
					<th width="50%">Descrição</th>
					<th>Tipo</th>
					<th>Atributos</th>
					<th>Durabilidade</th>
					<th>Equipado</th>
				</tr>
				<tr>
					<td>Espada</td>
					<td>Equipamento</td>
					<td nowrap="nowrap"><span class="badge badge-inverse">+10</span> <span class="badge badge-success">-3</span> <span class="badge badge-warning">0</span> <span class="badge badge-important">0</span></td>
					<td style="text-align: center"><span class="badge">60/60</span></td>
					<td style="text-align: center">Não</td>
				</tr>
			</tbody>
		</table>

		@endif

		<table class="table table-bordered">
			<thead>
				<th colspan="3">Combates</th>
			</thead>
			<tbody>
				<tr>
					<td width="15%">Vitórias:</td>
					<td><div class="progress progress-success" style="margin: 0"><div class="bar" style="width: {{ $user->winsp }}%;"></div></div></td>
					<td width="10%" style="text-align: center">{{ $user->wins }}</td>
				</tr>
				<tr>
					<td>Derrotas:</td>
					<td><div class="progress progress-danger" style="margin: 0"><div class="bar" style="width: {{ $user->losesp }}%;"></div></div></td>
					<td style="text-align: center">{{ $user->loses }}</td>
				</tr>
				<tr style="font-weight: bold;">
					<td>Total:</td>
					<td><!-- <div class="progress" style="margin: 0"><div class="bar" style="width: {{ $user->winsp + $user->losesp }}%;"></div></div> --></td>
					<td style="text-align: center">{{ $user->wins + $user->loses }}</td>
				</tr>
			</tbody>
		</table>	

		<table class="table table-bordered">
			<thead>
				<th colspan="3">Quiz</th>
			</thead>
			<tbody>
				<tr>
					<td width="15%">Acertos:</td>
					<td><div class="progress progress-success" style="margin: 0"><div class="bar" style="width: {{ $user->winsp }}%;"></div></div></td>
					<td width="10%" style="text-align: center">{{ $user->wins }}</td>
				</tr>
				<tr>
					<td>Erros:</td>
					<td><div class="progress progress-danger" style="margin: 0"><div class="bar" style="width: {{ $user->losesp }}%;"></div></div></td>
					<td style="text-align: center">{{ $user->loses }}</td>
				</tr>
				<tr style="font-weight: bold;">
					<td>Total:</td>
					<td><!-- <div class="progress" style="margin: 0"><div class="bar" style="width: {{ $user->winsp + $user->losesp }}%;"></div></div> --></td>
					<td style="text-align: center">{{ $user->wins + $user->loses }}</td>
				</tr>
			</tbody>
		</table>
		@if (Auth::user()->username != $user->username)
		<p style="text-align: center">{{ HTML::link('fight', 'Desafiar', array('class' => 'btn btn-primary btn-large')) }} {{ HTML::link('message', 'Mensagem', array('class' => 'btn btn-success btn-large')) }}</p>
		@endif
	</div>
@endsection

