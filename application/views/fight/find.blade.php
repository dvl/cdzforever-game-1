@layout('base')

@section('title')
	Busca
@endsection

@section('content')

<div>
	<table class="table table-bordered"> 
		<thead>
			<th>Nick</th>
			<th>Cosmo</th>
			<th>Aura</th>
			<th>Ultima atividade</th>
		</thead>
		<tbody>
			@if (count($users)) 
				@foreach ($users as $user)
					<tr>
						<td>{{ HTML::profile_link($user->username) }}</td>
						<td style="text-align: center">{{ $user->cosmo }}</td>
						<td style="text-align: center">{{ $user->aura() }}x</td>
						<td style="text-align: center">{{ $user->updated_at }}</td>
					</tr>
				@endforeach
			@else
				<tr>
					<td colspan="4" style="text-align: center">Não foram encontrados usuários no seu nivel</td>
				</tr>
			@endif
		</tbody>
	</table>
</div>


@endsection

