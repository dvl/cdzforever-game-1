@layout('base')

@section('title')
	Armaduras
@endsection

@section('content')

<div>
	<table class="table table-bordered"> 
		<thead>
			<th colspan="4">Desafiar</th>
		</thead>
		{{ Form::open('fight/challenge') }}
		<tbody>
			<tr>
				<td style="vertical-align: middle;" colspan="2">
					Digite o nick do jogador a ser desafiado e clique em enviar.
				</td>
				<td style="vertical-align: middle; text-align: center;  padding-top: 16px;" colspan="2">
					{{ Form::text('target', null, array('class' => 'input-xlarge typeahead')) }}
					{{ Form::hidden('data-url',URL::to('ajax/target/')) }}
				</td>
			</tr>
			<tr>
				<td style="vertical-align: middle; text-align: center;" colspan="4">
					{{ Form::submit('Desafiar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
				</td>
			</tr>
		</tbody>
		{{ Form::token() }}
		{{ Form::close() }}	
		<thead>
			<th colspan="4">Buscar jogadores online</th>
		</thead>
		{{ Form::open('fight/find') }}
		<tbody>
			<tr>
				<td style="vertical-align: middle;" colspan="2">
					Você tambem pode buscar por jogadores online atualmente para desafiar.
				</td>
				<td style="vertical-align: middle; text-align: center;  padding-top: 16px;" colspan="2">
					{{ Form::select('nivel', array('1' => 'Mesmo nivel', '2' => 'Nivel superior')); }}
				</td>
			</tr>
			<tr>
				<td style="vertical-align: middle; text-align: center;" colspan="4">
					{{ Form::submit('Buscar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
				</td>
			</tr>
		</tbody>
		{{ Form::token() }}
		{{ Form::close() }}	
		<thead>
			<th colspan="4">Desafios recebidos</th>
		</thead>
		<tbody>
			<tr>
				<th>Nick</th>
				<th>Cosmo</th>
				<th>Aura</th>
				<th>Ação</th>
			<tr>
				<td style="vertical-align: middle;">Saber</td>
				<td style="vertical-align: middle; text-align: center;">5200</td>
				<td style="vertical-align: middle; text-align: center;">2x</td>
				<td style="vertical-align: middle; text-align: center;">
					{{ Form::open('fight/action') }}
					{{ Form::submit('Aceitar', array('class' => 'btn btn-success')) }}
					{{ Form::submit('Recusar', array('class' => 'btn btn-danger')) }}
					{{ Form::token() }}
					{{ Form::close() }}	
				</td>
			</tr>
		</tbody>
		<thead>
			<th colspan="4">Desafios Enviados</th>
		</thead>
		<tbody>
			<tr>
				<th colspan="2">Nick</th>
				<th>Expira em</th>
				<th>Ação</th>
				@foreach ($sent as $s)
					{{ Form::open('fight/action') }}
						<tr>
							<td style="vertical-align: middle;" colspan="2">{{ $s->user_id_2 }}</td>
							<td style="vertical-align: middle; text-align: center;"><span class="countdown">{{ strtotime(date('H:m:s d-m-Y', strtotime('+6 hours',strtotime($s->created_at)))) - time() }}</span></td>
							<td style="vertical-align: middle; text-align: center;">
							{{ Form::submit('Cancelar', array('class' => 'btn btn-danger')) }}
						</td>
					{{ Form::token() }}
					{{ Form::close() }}	
				@endforeach
			</tr>
		</tbody>
	</table>
</div>


@endsection

