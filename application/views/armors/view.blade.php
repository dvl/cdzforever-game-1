@layout('base')

@section('title')
	Armaduras
@endsection

@section('content')

	<ul class="breadcrumb">
		<li>
			{{ HTML::link('armor','Minha Armadura') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('armors','Lista de Armaduras') }} 
		</li>
	</ul>

	<div>
		{{ Form::open() }}
			<table class="table table-bordered">
				<thead>
					<th colspan="4">Armadura de {{ $armor->name }}</th>
				</thead>
				<tbody>
					<tr>
						<td width="25%">Dono:</td>
						<td width="25%">{{ $armor->user ? HTML::profile_link($armor->user->username) : 'Ninguém' }}</td>
						<td width="25%">Categoria:</td>
						<td width="25%">{{ $armor->category->name }}</td>
					</tr>
					<tr>
						<td>Custo:</td>
						<td>C$ {{ $armor->cost }}</td>
						<td>Aura Necessária:</td>
						<td>{{ $armor->needed() }}x</td>
					</tr>
					<tr>
						<td>Mundo:</td>
						<td>{{ $armor->world }}</td>
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
				<thead>
					<th colspan="4">Golpes</th>
				</thead>
				<tbody>
					<tr>
						<td colspan="4">{{ $armor->technics }}</td>
					</tr>
					@if (($armor->user_id == 0) && (Auth::user()->armor_id == 0))
						<tr>
							<td colspan="4" style="text-align: center">{{ Form::submit('Solicitar Armadura', array('class' => 'btn btn-primary btn-large')) }}</td>
						</tr>
					@endif
				</tbody>
			</table>
			{{ Form::token() }}
		{{ Form::close() }}
	</div>

@endsection