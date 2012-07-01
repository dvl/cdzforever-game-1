@layout('base')

@section('title')
Quiz
@endsection

@section('content')
	
	<h1>Quiz</h1>
	<hr />

	<div style="text-align:center;">
		<h3>Tempo para resposta</h3>
		<h1><div class="countdown">20</div></h1>
		<hr />
		{{ Form::open() }}
			<table class="table">
				<thead>
					<th>{{ $question->question }}</th>
				</head>
				<tbody>
					@foreach ($question->awnsers as $q => $v)  
						<tr>
							<td>{{ Form::radio('reply',$q) }} {{ $v }} @if ($question->correct == $q) * @endif</td>
						</tr>
					@endforeach
						<tr>
							<td>{{ Form::submit('Responder', array('class' => 'btn btn-primary')) }}</td>
						</tr>
				</tbody>
			</table>
		{{ Form::hidden('question_id',$question->id) }}
		{{ Form::token() }}
		{{ Form::close() }}
	</div>

@endsection