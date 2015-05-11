<?php 


	use App\Controller  as controller;
	
	
	Class CallController extends controller
	
	{


		public static function all_calls()
		{

			$calls = CallModel::find_by_attr();
			parent::view()->create('admin_calls:admin_layout', $calls);	
		}

		public static function insert_call()
		{


			$is_exist = CallModel::find_by_attr(array('estado' => 'abierta'));

			$_POST['tags'] = (isset($_POST['tags'])) ? json_encode($_POST['tags'], JSON_UNESCAPED_UNICODE) : '';

			
			unset($_POST['_wysihtml5_mode']);
			
			
			$call = ($is_exist  == false) ? CallModel::save($_POST) : false;
		


			$tomorrow  = date('Y-m-d');
			$tomorrow2 = date('Y-m-d',strtotime(date('Y-m-d') . "+1 days"));

			// Fechas de carga son mayores a hoy
			$n1 = (strtotime($_POST['fecha_ini_carga']) >=  strtotime($tomorrow)) && (strtotime($_POST['fecha_fin_carga']) >= strtotime($tomorrow2));
			// Fechas de votacion son mayores q hoy
			$n2 = (strtotime($_POST['fecha_ini_vot']) >= strtotime($tomorrow)) && (strtotime($_POST['fecha_fin_vot']) >= strtotime($tomorrow2));
			// Fechas de carga y votacio no se cruzen
			$n3 = 	strtotime($_POST['fecha_fin_carga']) < strtotime($_POST['fecha_ini_vot']);


			$final = $n1 == true && $n2 == true && $n3 == true;


   			if($call && $final ) :

   		

				if (!file_exists(PATH . 'assets/upload/convocatorias/' . $call['db']->insert_id)) {
					mkdir(PATH . 'assets/upload/convocatorias/' . $call['db']->insert_id, 0755, true);
				}

				$mockup = parent::__upload_file(PATH.'assets/upload/convocatorias/'.$call['db']->insert_id, $_FILES['mockup'], true, PATH.'assets/upload/convocatorias/tmp/');
				if ($mockup != null): $data['mockup'] = json_encode($mockup); endif;

				CallModel::update($data, ' WHERE id = '.$call['db']->insert_id.' ');

				$_SESSION['message'] = parent::mensaje('success', '<strong>Exito</strong> al crear la convocatoria');
				$url = URL."admin/add_call";

				?> <script> window.location.href = "<?php echo $url ?>";</script> <?php
				// parent::url_redirect($url);

			elseif($is_exist) :

				$_SESSION['message'] = parent::mensaje('danger', '<strong>Error</strong> en este momento hay una convocatoria activa');
				$url = URL."admin/add_call";
				?> <script> window.location.href = "<?php echo $url ?>";</script> <?php
				// parent::url_redirect($url);

			elseif(!$final) :

				$_SESSION['message'] = parent::mensaje('danger', '<strong>Error</strong> las fechas no son aptas');
				$url = URL."admin/add_call";
				?> <script> window.location.href = "<?php echo $url ?>";</script> <?php
				// parent::url_redirect($url);

			else :

				$_SESSION['message'] = parent::mensaje('danger', '<strong>Error</strong> al crear convocatoria');
				$url = URL."admin/add_call";
				?> <script> window.location.href = "<?php echo $url ?>";</script> <?php
				// parent::url_redirect($url);

			endif;
		

		}


		public static function update_call($array)
		{

			 $call = CallModel::find_by_attr(array('id' => $array['id']));

			 if($call) :
			 	$call = $call[0];
			 	$call['action'] = URL.'admin/update_by_call';

			 	else :

			 	parent::url_redirect(URL.'admin/call');

			 endif;

			parent::view()->create('admin_call:admin_layout', $call);


		}

		public static function update_by_call ()
		{
			
			// if (!isset($_POST['img'])):
			// 	$img = parent::__upload_file(PATH.'assets/upload/', $_FILES['img']);
			// 	if ($img != null): $_POST['img'] = $img; endif;
			// endif;

			if(isset($_POST['id']) && CallModel::update($_POST, ' WHERE id = '.$_POST['id'].' ')) :

				$url = URL."admin/calls";
				parent::url_redirect($url);

			endif;


		}

		public static function delete_call()
		{

			if( isset($_POST['id']) &&  CallModel::delete_by_id($_POST['id'])) :
				$_SESSION['message'] = parent::mensaje('success', '<strong>Exito</strong> pais eliminado');
			endif;


		}
		//  Traer todas las convocatorias del front
		public static function all_state_calls()
		{
			$calls[] = CallModel::find_by_attr(array(
				array(
					'key'         => 'estado',
					'condicional' => '=',
					'operador'    => 'or',
					'value'       => 'abierta'
				),
				array(
					'key'         => 'estado',
					'condicional' => '=',
					'operador'    => ' ',	
					'value'       => 'en_votacion'
				)



				)
			);

	
			parent::view()->create('convocatorias:layout', $calls);


		}


	}

?>