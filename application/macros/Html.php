<?php

HTML::macro('image_link', function($url = '', $img='img/', $alt='', $active=false, $ssl=false)
{
	$url = $ssl==true ? URL::to_secure($url) : URL::to($url);
	$img = HTML::image($img,$alt);
	$link = $active==true ? HTML::link($url, '#') : $img;
	$link = str_replace('#',$img,$link);
	return $link;
});

HTML::macro('menulink', function($url, $title, $icon, $attributes = array(), $https = null) {
	$url = URL::to($url, $https);
	return '<li><a href="'.$url.'"><i class="icon-'.$icon.'"></i> '.$title.'</a></li>';
});

Form::macro('states', function($name = "state", $selected = null) {
	
	$states = array("AC"=>"Acre", "AL"=>"Alagoas", "AM"=>"Amazonas", "AP"=>"Amapá","BA"=>"Bahia","CE"=>"Ceará","DF"=>"Distrito Federal","ES"=>"Espírito Santo","GO"=>"Goiás","MA"=>"Maranhão","MT"=>"Mato Grosso","MS"=>"Mato Grosso do Sul","MG"=>"Minas Gerais","PA"=>"Pará","PB"=>"Paraíba","PR"=>"Paraná","PE"=>"Pernambuco","PI"=>"Piauí","RJ"=>"Rio de Janeiro","RN"=>"Rio Grande do Norte","RO"=>"Rondônia","RS"=>"Rio Grande do Sul","RR"=>"Roraima","SC"=>"Santa Catarina","SE"=>"Sergipe","SP"=>"São Paulo","TO"=>"Tocantins");
	
	$select = '<select name="'.$name.'">';
	
	foreach ($states as $abbr => $state)
	{
		$select .= '<option value="'.$abbr.'"'.($selected == $abbr ? ' selected="selected"' : '').'>'.$state.'</option> ';
	}
	
	$select .= '</select>';
	
	return $select;

});

Form::macro('armors_form', function() {

	$armors = Armor::all();

	$values = ''; $i = 1;

	foreach ($armors as $armor) {
		$values .= '"'.$armor->name.'"';
		if ($i != count($armors)) {
			$values .= ',';
		}
		$i++;
	}

	$html = '<input class="input-medium" placeholder="Armadura" data-provide="typeahead" data-source=\'['.$values.']\' type="text" name="armor"> ';


	$categories = Category::all();

	$list = array();

	foreach ($categories as $category) {
		$list[] = $category->name;
	}

	$html .= Form::select('category',array(0 => 'Todas','Categoria' => $list),Input::get('categoty'),array('class' => 'input-small')).' ';

	/* $worlds = World::all();

	$list = array();

	foreach ($worlds as $world) {
		$list[] = $world->name;
	}

	$html .= Form::select('world',array(0 => 'Todas',$list),null,array('class' => 'input-small')).' '; */

	$html .= Form::select('class',array(0 => 'Todas','Classe' => array('S' => 'S', 'A' => 'A', 'B' => 'B', 'C' => 'C', 'D' => 'D')),null,array('class' => 'input-small')).' ';

	$html .= Form::select('owned',array(0 => 'Todas','Tem dono?' => array('false' => 'Não','true' => 'Sim')),null,array('class' => 'input-small')).' ';

	$html .= Form::submit('Filtrar',array('class' => 'btn'));

	return $html;
});

HTML::macro('profile_link', function($user = null) {
	return HTML::link('profile/'.$user,$user);
});