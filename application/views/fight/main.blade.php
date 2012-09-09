@layout('base')

@section('title')
	Luta
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
				<td style="vertical-align: middle;" colspan="5">
					Você tambem pode buscar por jogadores do seu nível baseado na ultima ativadade deles, jogadores com atividade recente possuem mais chances de aceitar seu desafio mais rapidamente.
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
				<?php $i = 0; ?>
				@foreach ($sent as $s)
					{{ Form::open('fight/reject') }}
						@if ($s->user_id_2 == Auth::user()->id)
						<?php $user = User::find($s->user_id_1); $i++; ?>
							<tr>
								<td style="vertical-align: middle;">{{ HTML::profile_link($user->username) }}</td>
								<td style="vertical-align: middle; text-align: center;">{{ $user->cosmo }}</td>
								<td style="vertical-align: middle; text-align: center;">{{ $user->aura() }}x</td>
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
				@if ($i == 0) 
					<tr>
						<td colspan="5" style="text-align: center;">Não existem desafios</td>
					</tr>
				@endif
		</tbody>
		<thead>
			<th colspan="5">Desafios Enviados</th>
		</thead>
		<tbody>
			<tr>
				<th>Nick</th>
				<th>Cosmo</th>
				<th>Aura</th>
				<th>Expira em</th>
				<th>Ação</th>
				<?php $i = 0; ?>
				@foreach ($sent as $s)
					{{ Form::open('fight/cancel') }}
						@if ($s->user_id_2 != Auth::user()->id)
						<?php $user = User::find($s->user_id_2); $i++; ?>
							<tr>
								<td style="vertical-align: middle;">{{ HTML::profile_link($user->username) }}</td>
								<td style="vertical-align: middle; text-align: center;">{{ $user->cosmo }}</td>
								<td style="vertical-align: middle; text-align: center;">{{ $user->aura() }}x</td>
								<td style="vertical-align: middle; text-align: center;"><span class="countdown">{{ strtotime('+6 hours',strtotime($s->created_at)) - time() }}</span></td>
								<td style="vertical-align: middle; text-align: center;">
								{{ Form::submit('Cancelar', array('class' => 'btn btn-danger')) }}
							</td>
						@endif
					{{ Form::hidden('fight_id', $s->id) }}
					{{ Form::token() }}
					{{ Form::close() }}	
				@endforeach
				@if ($i == 0) 
					<tr>
						<td colspan="5" style="text-align: center;">Não existem desafios</td>
					</tr>
				@endif
			</tr>
		</tbody>
	</table>
</div>


@endsection

