@layout('base')

@section('title')

@endsection

@section('content')
<div class="hero-unit">
	<h2>Bem vindo(a),</h2>
	<p>Seja um Cavaleiro, lute por seu Deus, faça parte do CDZForever!</p>
	<p>{{ HTML::link('register', 'Cadastro', array('class' => 'btn btn-primary btn-large')) }} {{ HTML::link('login', 'Login', array('class' => 'btn btn-success btn-large')) }}</p>
</div>
<hr />
<div class="row">
	@foreach ($news as $new)
		<div class="span4">
			<h2>{{ $new->title }}</h2>
			<p>{{ Str::words($new->body, 20) }}</p>
			<p>{{ HTML::link('news/'.$new->id, 'Ler tudo &raquo;', array('class' => 'btn')) }}</p>
		</div>
	@endforeach
</div>
@endsection