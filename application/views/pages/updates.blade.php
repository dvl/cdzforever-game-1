@layout('base')

@section('title')
	{{ $new->title }}
@endsection

@section('content')
	<h1>{{ $new->title }}</h1>
	<hr />
	<p>{{ nl2br($new->body) }}</p>
	<p>Publicado em: {{ $new->created_at }} por: {{ $new->user->username }}
@endsection

