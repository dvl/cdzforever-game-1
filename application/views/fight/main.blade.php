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
		<tbody>
			<tr>
				<td style="vertical-align: middle;" colspan="2">
					Digite o nick do jogador a ser desafiado e clique em enviar.
				</td>
				<td style="vertical-align: middle; text-align: center;  padding-top: 16px;" colspan="2">
					{{ Form::text('target', null, array('class' => 'input-xlarge')) }}
				</td>
			</tr>
			<tr>
				<td style="vertical-align: middle; text-align: center;" colspan="4">
					{{ Form::submit('Desafiar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
				</td>
			</tr>
		</tbody>	
		<thead>
			<th colspan="4">Buscar jogadores online</th>
		</thead>
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
					{{ Form::button('Aceitar', array('class' => 'btn btn-success')) }}
					{{ Form::button('Recusar', array('class' => 'btn btn-danger')) }}
				</td>
			</tr>
		</tbody>
		<thead>
			<th colspan="4">Desafios Enviados</th>
		</thead>
		<tbody>
			<tr>
				<th colspan="3">Nick</th>
				<th>Ação</th>
			<tr>
				<td style="vertical-align: middle;" colspan="3">Saber</td>
				<td style="vertical-align: middle; text-align: center;">
					{{ Form::button('Cancelar', array('class' => 'btn btn-danger')) }}
				</td>
			</tr>
		</tbody>
	</table>
</div>


@endsection

