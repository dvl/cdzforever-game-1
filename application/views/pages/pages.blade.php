@layout('base')

@section('title')
	{{ $page->title }}
@endsection

@section('content')
	<h1>{{ $page->title }}</h1>
	<hr />
	<p>{{ $page->body }}</p>
@endsection

