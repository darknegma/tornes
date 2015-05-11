<?php 


	
	use App\Controller  as controller;
	
	
	Class NotebookController extends controller
	
	{


		public static function insert_call()
		{

		}


		public static function notebook_form($array)
		{

			$call = CallModel::find_by_attr(array('id' => $array['id_convocatoria']), 'id, descripcion, fecha_ini_carga, fecha_fin_carga, mockup');


			parent::dump($call);

			parent::view()->create('add_notebook:layout', $call);


		}

	}

?>