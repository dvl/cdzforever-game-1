@if ( Auth::guest() )
	{{ HTML::menulink('login','Login','lock') }}
	{{ HTML::menulink('register','Cadastro','home') }}
@else
	{{ HTML::menulink('profile','Perfil','user') }}
	{{ HTML::menulink('pratice','Treinos','book') }}
	{{ HTML::menulink_not('fight','Luta','fire',Fight::where('user_id_2', '=', Auth::user()->id)->where('status', '=', 0)->count()) }}
	{{ HTML::menulink('hospital','Hospital','heart') }}
	{{ HTML::menulink('store','Loja','shopping-cart') }}	
	{{ HTML::menulink('armor','Amadura','leaf') }}
	{{ HTML::menulink('quiz','Quiz','check') }}
	{{ HTML::menulink('merits','Méritos','gift') }}
	{{ HTML::menulink('statics','Estatísticas','list-alt') }}
	{{ HTML::menulink_not('statics','Mensagens','envelope',1) }} 
	{{ HTML::menulink_not('statics','Relatórios','briefcase',0) }}
	{{ HTML::menulink('logout','Logout','off') }}
@endif