@layout('base')

@section('title')
	Mensagens Recebidas
@endsection

@section('content')

	<ul class="breadcrumb">
		<li class="active">
			{{ HTML::link('message','Recebidas') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('message/write','Escrever') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('message/sent','Enviadas') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('message/archive','Arquivo') }}
		</li>
	</ul>

	<div>
		<table class="table table-bordered table-condensed">
			<thead>
				<th style="width: 2%;">{{ Form::checkbox('all', 'true') }}</th>
				<th style="width: 60%;">Assunto</th>
				<th>Enviada Por</th>
				<th>Data</th>
			</thead>
			<tbody>
				<?php $i = 0; ?>				
				@foreach ($msgs->results as $msg)
				<tr>
					<?php $user = User::find($msg->from); $i++; ?>
					<td>{{ Form::checkbox('msg_id[]',$msg->id) }}</td>
					<td {{ $msg->readed == 0 ? "style='font-weight: bold;'": ""; }}>{{ HTML::link('message/read/'.$msg->id,$msg->subject) }}</td>
					<td style="text-align: center;">{{ HTML::profile_link($user->username) }}</td>
					<td style="text-align: center;">{{ HTML::date($msg->created_at) }}</td>
				</tr>
				@endforeach	
				<tr>
					<td colspan="4">
						{{ Form::submit('Arquivar', array('class' => 'btn btn-primary')) }}
						{{ Form::submit('Deletar', array('class' => 'btn btn-danger')) }}
					</td>	
			</tbody>
		</table>
		{{ $msgs->appends(array('order' => Input::get('order')))->links() }}
	</div>

@endsection