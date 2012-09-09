@layout('base')

@section('title')
	Mensagem
@endsection

@section('content')

	<ul class="breadcrumb">
		<li>
			{{ HTML::link('message','Recebidas') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('message/write','Escrever') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('message/sent','Enviadas') }} <span class="divider">|</span>
		</li>
		<li>
			{{ HTML::link('message?archive=1','Arquivo') }}
		</li>
	</ul>

	<div>
		<table class="table table-bordered table-condensed">
			<tbody>
				<tr>
					<td style="font-weight: bold; width: 25%;">Enviada Por:</td>
					<td>{{ $msg->from }}</td>
				</tr>
				<tr>
					<td style="font-weight: bold;">Enviada Em:</td>
					<td>{{ HTML::date($msg->created_at) }}</td>
				</tr>
				<tr>
					<td style="font-weight: bold;">Assunto:</td>
					<td>{{ $msg->subject }}</td>
				</tr>

				<tr>
					<td colspan="2">
						{{ nl2br($msg->body) }}
					</td>
				</tr>

				<tr>
					<td colspan="2" style="text-align: center;">
						{{ HTML::link('message/reply/'.$msg->id, 'Responder', array('class' => 'btn btn-primary')) }}
					</td>
				</tr>
			</tbody>
		</table>
	</div>

@endsection