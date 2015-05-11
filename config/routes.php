<?php



return array(

	''                       => array('view' => 'home:layout'),
	'404'                    => array('view'       => '404:no_layout'),
	'acceso_denegado'        => array('view'       => 'perm:layout'),
	'admin'                  => array(
		'view'               => 'dashboard:admin_layout',
		'perm'               => array('admin')
	),
	/******************************************************
	                     User urls
	*******************************************************/
	'login_form'      => array('view'       => 'login:no_layout'),
	'login'           => array('controller' => 'login:user'),
	'logout'          => array('controller' => 'logout:user'),
	'admin/users'     => array(
		'controller'  => 'all_users:user',
		'perm'        => array('admin')
	),
	'admin/add_user'  => array(
		'view'        => 'admin_user:admin_layout',
		'perm'        => array('admin')
	),
	'admin/insert_user'  => array(
		'controller'     => 'insert_user:user',
		'perm' => array('admin')
	),
	'admin/update_user/$1' => array(
		'controller'       => 'update_user:user',
		'get_vars'           => array('id'),
		'perm'             => array('admin')
	),
	'admin/delete_user' => array(
		'controller'    => 'delete_user:user',
		'perm'          => array('admin')
	),
	'admin/update_by_user' => array(
		'controller'       => 'update_by_user:user',
		'perm'             => array('admin')
	),
	/******************************************************
	                     Calls urls
	*******************************************************/
	'admin/calls'     => array(
		'controller'  => 'all_calls:call',
		'perm'        => array('admin')
	),
	'admin/add_call'  => array(
		'view'        => 'admin_call:admin_layout',
		'perm'        => array('admin')
	),
	'admin/insert_call'  => array(
		'controller'     => 'insert_call:call',
		'perm' => array('admin')
	),
	'admin/update_call/$1' => array(
		'controller'       => 'update_call:call',
		'get_vars'         => array('id'),
		'perm'             => array('admin')
	),
	'admin/delete_call' => array(
		'controller'    => 'delete_call:call',
		'perm'          => array('admin')
	),
	'admin/update_by_call' => array(
		'controller'       => 'update_by_call:call',
		'perm'             => array('admin')
	),
	/******************************************************
	                     Libretas urls
	*******************************************************/

	'convocatorias'  => array(
		'controller' => 'all_state_calls:call',
	),
	'agregar_libreta/$1' => array(
		'controller'     => 'notebook_form:notebook',
		'get_vars'       => array('id_convocatoria'),
		'perm'           => array('dise/comp', 'admin')

	),
	/******************************************************
	                     Front urls
	*******************************************************/
	'acerca_de_mi'     => array(
		'view'   => 'about:layout'
	), 
	'portafolio' => array(
		'view'  => 'portfolio:layout'
	),
	'servicios' => array(
		'view'  => 'servicios:layout'
	),
	'blog' => array(
		'view'  => 'blog:layout'
	)
);

?>