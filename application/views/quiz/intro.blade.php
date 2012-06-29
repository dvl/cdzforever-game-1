@layout('base')

@section('title')
Quiz
@endsection

@section('content')

	<h1>Quiz</h1>
	<hr />

	<p>Responda diariamente a uma pergunta sobre Os Cavaleiros do Zodíaco e tenha a chance de ganhar 20 méritos.</p>
	<p>As perguntas serão múltipla-escolha e cada usuário poderá responder UMA por dia, sendo que terá somente 20 segundos para selecionar e confirmar a resposta correta.</p>
	<p>As perguntas serão aleatórias e não se repetirão no futuro mesmo se você erra-la, portanto seja rápido e atencioso!</p>

	<p style="text-align: center">
		@if (date('Y-m-d',strtotime(Auth::user()->quiz_date)) != date('Y-m-d'))
			{{ HTML::link('question', 'Ir para Pergunta', array('class' => 'btn btn-primary btn-large')) }}
		@else
			{{ Form::button('Você já respondeu ao Quiz hoje', array('class' => 'btn btn-primary btn-large disabled', 'disabled' => 'disabled')) }}
		@endif
	</p>
	<br />

@endsection