@layout('base')

@section('title')
	Armaduras
@endsection

@section('content')

<div>
	<table class="table table-bordered"> 
		<thead>
			<th colspan="5">Desafiar</th>
		</thead>
		{{ Form::open('fight/challenge') }}
		<tbody>
			<tr>
				<td style="vertical-align: middle;" colspan="3">
					Digite o nick do jogador a ser desafiado e clique em enviar.
				</td>
				<td style="vertical-align: middle; text-align: center;  padding-top: 16px;" colspan="2">
					{{ Form::text('target', null, array('class' => 'input-xlarge typeahead')) }}
					{{ Form::hidden('data-url',URL::to('ajax/target/')) }}
				</td>
			</tr>
			<tr>
				<td style="vertical-align: middle; text-align: center;" colspan="5">
					{{ Form::submit('Desafiar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
				</td>
			</tr>
		</tbody>
		{{ Form::token() }}
		{{ Form::close() }}	
		<thead>
			<th colspan="5">Buscar jogadores online</th>
		</thead>
		{{ Form::open('fight/find') }}
		<tbody>
			<tr>
				<td style="vertical-align: middle;" colspan="3">
					Você tambem pode buscar por jogadores online atualmente para desafiar.
				</td>
				<td style="vertical-align: middle; text-align: center;  padding-top: 16px;" colspan="2">
					{{ Form::select('nivel', array('1' => 'Mesmo nivel', '2' => 'Nivel superior')); }}
				</td>
			</tr>
			<tr>
				<td style="vertical-align: middle; text-align: center;" colspan="5">
					{{ Form::submit('Buscar',array('name' => 'action', 'class' => 'btn btn-primary btn-large')) }}
				</td>
			</tr>
		</tbody>
		{{ Form::token() }}
		{{ Form::close() }}	
		<thead>
			<th colspan="5">Desafios recebidos</th>
		</thead>
		<tbody>
			<tr>
				<th>Nick</th>
				<th>Cosmo</th>
				<th>Aura</th>
				<th>Expira em</th>
				<th>Ação</th>
			{{ Form::open('fight/action') }}
				@foreach ($sent as $s)
					{{ Form::open('fight/action') }}
						@if ($s->user_id_2 == Auth::user()->id)
							<tr>
								<td style="vertical-align: middle;">{{ $s->user_id_1 }}</td>
								<td style="vertical-align: middle; text-align: center;"></td>
								<td style="vertical-align: middle; text-align: center;"></td>
								<td style="vertical-align: middle; text-align: center;"><span class="countdown">{{ strtotime('+6 hours',strtotime($s->created_at)) - time() }}</span></td>
								<td style="vertical-align: middle; text-align: center;">
								{{ Form::submit('Aceitar', array('class' => 'btn btn-success')) }}
								{{ Form::submit('Recusar', array('class' => 'btn btn-danger')) }}
							</td>
						@endif
					{{ Form::hidden('fight_id', $s->id) }}
					{{ Form::token() }}
					{{ Form::close() }}	
				@endforeach
			{{ Form::token() }}
			{{ Form::close() }}	
		</tbody>
		<thead>
			<th colspan="5">Desafios Enviados</th>
		</thead>
		<tbody>
			<tr>
				@if (!count($sent))
					<th colspan="5">
						Não existem desafios
					</th>
				@else
					<th colspan="3">Nick</th>
					<th>Expira em</th>
					<th>Ação</th>
				@endif
				@foreach ($sent as $s)
					{{ Form::open('fight/action') }}
						@if ($s->user_id_2 != Auth::user()->id)
							<tr>
								<td style="vertical-align: middle;" colspan="3">{{ $s->user_id_2 }}</td>
								<td style="vertical-align: middle; text-align: center;"><span class="countdown">{{ strtotime('+6 hours',strtotime($s->created_at)) - time() }}</span></td>
								<td style="vertical-align: middle; text-align: center;">
								{{ Form::submit('Cancelar', array('class' => 'btn btn-danger')) }}
							</td>
						@endif
					{{ Form::hidden('fight_id', $s->id) }}
					{{ Form::token() }}
					{{ Form::close() }}	
				@endforeach
			</tr>
		</tbody>
	</table>
</div>


@endsection

