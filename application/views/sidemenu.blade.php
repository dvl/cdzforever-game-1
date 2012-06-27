@if ( Auth::guest() )
	{{ HTML::menulink('login','Login','lock') }}
	{{ HTML::menulink('register','Cadastro','home') }}
@else
	{{ HTML::menulink('profile','Perfil','user') }}
	{{ HTML::menulink('pratice','Treinos','book') }}
	{{ HTML::menulink('fight','Luta','fire') }}
	{{ HTML::menulink('hospital','Hospital','heart') }}
	{{ HTML::menulink('store','Loja','shopping-cart') }}	
	{{ HTML::menulink('armor','Amadura','leaf') }}
	{{ HTML::menulink('quiz','Quiz','check') }}
	{{ HTML::menulink('merits','Méritos','gift') }}
	{{ HTML::menulink('statics','Estatísticas','list-alt') }}
	{{ HTML::menulink('logout','Logout','off') }}
@endif