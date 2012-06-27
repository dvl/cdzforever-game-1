<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<title>CDZForever - @yield('title')</title>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	{{ HTML::style('css/bootstrap.css') }}
	{{ HTML::style('css/style.css') }}
</head>

<body>
	<div class="container" id="wrapper">
		<div class="row">
			<div class="span12" id="banner">
				{{ HTML::image_link('/','/img/banner.jpg','Banner', true) }}
			</div>
			<div class="row span3">
				<div class="span3" id="info">
					<div class="row">
						@include('sideinfo')
					</div>
				</div>
				<div class="span3" id="menu">
					<ul class="nav nav-tabs nav-stacked">
						<br style="clear: both" />
						@include('sidemenu')
					</ul>
				</div>
			</div>
			<div class="row span9">
				<div class="span9" id="conteudo">
					@if (Session::has('info'))
						<div class="alert alert-info">{{ Session::get('info') }}</div>
						{{ Session::forget('info') }}
					@endif
					@yield('content')
				</div>
			</div>
		</div>
	</div>
	<div class="container" id="wrapper">
		<div class="row">
			<div class="span12" id="footer">
				&copy; CDZForever 2003-{{ date('Y') }}<br />Imagens e Personagens copyright &copy; Masami Kurumada / Shueisha, Toei Animation. Todos os direitos reservados.
			</div>
		</div>
	</div>

	{{ HTML::script('js/jquery.js') }}
	{{ HTML::script('js/bootstrap-tab.js')}}
	{{ HTML::script('js/bootstrap-typeahead.js') }}
	{{ HTML::script('js/bootstrap-tooltip.js') }}
	{{ HTML::script('js/bootstrap-popover.js') }}
</body>

</html>