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
	{{ HTML::menulink('#','Méritos','gift') }}
	{{ HTML::menulink('rank','Estatísticas','list-alt') }}
	{{ HTML::menulink_not('message','Mensagens','envelope', Message::where('to', '=', Auth::user()->id)->where('readed', '=', 0)->count()) }} 
	{{ HTML::menulink_not('report','Relatórios','briefcase',0) }}
	{{ HTML::menulink('logout','Logout','off') }}
@endif