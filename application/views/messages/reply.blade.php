@layout('base')

@section('title')
	Mensagem
@endsection

@section('content')

	<ul class="breadcrumb">
		<li>
			{{ HTML::link('message','Recebidas') }} <span class="divider">|</span>
		</li>
		<li class="active">
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
		{{ Form::open('message/write') }}
		<table class="table table-bordered table-condensed">
			<tbody>
				<tr>
					<td style="font-weight: bold; width: 25%; vertical-align: middle;">Destinatário:</td>
					<td style="padding-top: 14px">
						{{ Form::text('to', $msg->from, array('class' => 'input-large typeahead')) }}
						{{ Form::hidden('data-url',URL::to('ajax/target/')) }}
					</td>
				</tr>
				<tr>
					<td style="font-weight: bold; vertical-align: middle;">Assunto:</td>
					<td style="padding-top: 14px">{{ Form::text('subject', strstr($msg->subject, "RE: "), array('class' => 'input-xlarge')) }}</td>
				</tr>

				<tr>
					<td style="font-weight: bold; vertical-align: top; padding-top: 14px">Menssagem:</td>
					<td style="text-align: center; padding-top: 14px">
						{{ Form::textarea('body',$msg->body,array('rows' => '20', 'class' => 'input-xxlarge')) }}
					</td>
				</tr>

				<tr>
					<td colspan="2" style="text-align: center;">
						{{ Form::token() }}
						{{ Form::submit('Enviar', array('class' => 'btn btn-primary')) }}
					</td>
				</tr>
			</tbody>
		</table>
		{{ Form::close() }}
	</div>

@endsection