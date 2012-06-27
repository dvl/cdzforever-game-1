@layout('base')

@section('title')
	Armaduras
@endsection

@section('content')

	<ul class="breadcrumb">
		<li>
			{{ HTML::link('armor','Minha Armadura') }} <span class="divider">|</span>
		</li>
		<li class="active">
			{{ HTML::link('armors','Lista de Armaduras') }} 
		</li>
	</ul>

	{{ Form::open('armor','GET',array('class' => 'well form-inline')) }}

	{{ Form::armors_form() }}

	{{ Form::close() }}

	<div>
		<table class="table table-bordered table-condensed">
			<thead>
				<th>Armadura</th>
				<th>Categoria</th>
				<th>Classe</th>
				<th>Dono</th>
			</thead>
			<tbody>				
				@foreach ($armors->results as $armor)
				<tr>
					<td>{{ HTML::link('armor/'.$armor->id,$armor->name) }}</td>
					<td>{{ $armor->category->name }}</td>
					<td style="text-align: center;"><span class="badge badge-info">{{ $armor->class }}</span></td>
					<td>{{ $armor->user ? HTML::profile_link($armor->user->username) : 'Ninguém' }}</td>
				</tr>
				@endforeach		
			</tbody>
		</table>
		{{ $armors->appends(array('armor' => Input::get('armor'),'category' => Input::get('category'),'class' => Input::get('class'),'category' => Input::get('owned')))->links() }}
	</div>

@endsection