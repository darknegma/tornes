<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="es">

	<head>

		<!-- Title -->

		<title><?php self::__title(); ?></title>

		<!-- Metas  -->

		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<meta content=".::Color al cuadrado admin template::." name="description">
		<meta name="author" content="Color al cuadrado"/>
		<meta content="" name="keywords">
		<meta content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0" name="viewport">
		<meta content="all" name="robots">



	   	<!-- Links -->
	
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
		<link href="<?php echo URL; ?>assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
		<link href="<?php echo URL; ?>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" /> -->
		<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
		<link href="<?php echo URL; ?>assets/css/animate.min.css" rel="stylesheet" />
		<link href="<?php echo URL; ?>assets/css/style.min.css" rel="stylesheet" />
		<link href="<?php echo URL; ?>assets/css/style-responsive.min.css" rel="stylesheet" />
		<link href="<?php echo URL; ?>assets/css/theme/default.css" rel="stylesheet" id="theme" />
		<link href="<?php echo URL; ?>assets/img/favicon.ico" rel="shortcut icon">

		<link href="<?php echo URL; ?>assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
  		<link href="<?php echo URL; ?>assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
  		<link href="<?php echo URL; ?>assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
		<link href="<?php echo URL; ?>assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />  
		

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<!-- ================== BEGIN BASE JS ================== -->
		<!--<script src="<?php //echo URL; ?>assets/plugins/jquery/jquery-1.9.1.min.js"></script>-->
		  
	  <script src="<?php echo URL; ?>assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	  <script src="<?php echo URL; ?>assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	  <script src="<?php echo URL; ?>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	  <!--[if lt IE 9]>
	    <script src="<?php echo URL; ?>assets/crossbrowserjs/html5shiv.js"></script>
	    <script src="<?php echo URL; ?>assets/crossbrowserjs/respond.min.js"></script>
	    <script src="<?php echo URL; ?>assets/crossbrowserjs/excanvas.min.js"></script>
	  <![endif]-->
	  <script src="<?php echo URL; ?>assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	  <script src="<?php echo URL; ?>assets/plugins/jquery-cookie/jquery.cookie.js"></script>

	</head>

	<body>

		<header id="header" class="header navbar navbar-default navbar-fixed-top">
			
			<div class="container-fluid">
				<div class="navbar-header">
			      <a href="<?php echo URL.'admin'; ?>" class="navbar-brand">
			      <!-- <span class="navbar-logo"></span> -->
			      <img width="70" style="margin-top:-7px;" src="http://coloralcuadrado.com/wp-content/themes/coloralcuadrado/img/azul/logo_color.jpg" /></a>
			      <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			    </div>
			    <!-- end mobile sidebar expand / collapse button -->
			    
			    <!-- begin header navigation right -->
			    <ul class="nav navbar-nav navbar-right">
			      <li>
			        <form class="navbar-form full-width hidden-xs">
			          <div class="form-group">
			            <input type="text" class="form-control" placeholder="Enter keyword" />
			            <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
			          </div>
			        </form>
			      </li>
			      
					<!-- <li class="dropdown">
				        <a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
				          <i class="fa fa-bell-o"></i>
				          <span class="label">5</span>
				        </a>
				        <ul class="dropdown-menu media-list pull-right animated fadeInDown">
				          <li class="dropdown-header">Notifications (5)</li>
				          <li class="media">
				            <a href="javascript:;">
				              <div class="pull-left media-object bg-red"><i class="fa fa-bug"></i></div>
				              <div class="media-body">
				                <h6 class="media-heading">Server Error Reports</h6>
				                <div class="text-muted">3 minutes ago</div>
				              </div>
				            </a>
				          </li>
				          <li class="media">
				            <a href="javascript:;">
				              <div class="pull-left"><img src="assets/img/user-1.jpg" class="media-object" alt="" /></div>
				              <div class="media-body">
				                <h6 class="media-heading">John Smith</h6>
				                <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
				                <div class="text-muted">25 minutes ago</div>
				              </div>
				            </a>
				          </li>
				          <li class="media">
				            <a href="javascript:;">
				              <div class="pull-left"><img src="assets/img/user-2.jpg" class="media-object" alt="" /></div>
				              <div class="media-body">
				                <h6 class="media-heading">Olivia</h6>
				                <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
				                <div class="text-muted">35 minutes ago</div>
				              </div>
				            </a>
				          </li>
				          <li class="media">
				            <a href="javascript:;">
				              <div class="pull-left media-object bg-green"><i class="fa fa-plus"></i></div>
				              <div class="media-body">
				                <h6 class="media-heading"> New User Registered</h6>
				                <div class="text-muted">1 hour ago</div>
				              </div>
				            </a>
				          </li>
				          <li class="media">
				            <a href="javascript:;">
				              <div class="pull-left media-object bg-blue"><i class="fa fa-envelope"></i></div>
				              <div class="media-body">
				                <h6 class="media-heading"> New Email From John</h6>
				                <div class="text-muted">2 hour ago</div>
				              </div>
				            </a>
				          </li>
				          <li class="dropdown-footer text-center">
				            <a href="javascript:;">View more</a>
				          </li>
				        </ul>
				      </li> -->



			      <li class="dropdown navbar-user">
			        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
			          <img src="assets/img/user-11.jpg" alt="" /> 
			          <span class="hidden-xs"><?php echo $_SESSION['user']['nombre_usuario']; ?></span> <b class="caret"></b>
			        </a>
			        <ul class="dropdown-menu animated fadeInLeft">
			          <li class="arrow"></li>
			          <li><a href="<?php echo URL; ?>admin/update_user/<?php echo $_SESSION['user']['id']; ?>">Edit Profile</a></li>
			          <li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
			          <li><a href="javascript:;">Calendar</a></li>
			          <li><a href="javascript:;">Setting</a></li>
			          <li class="divider"></li>
			          <li><a href="<?php echo URL; ?>logout">Log Out</a></li>
			        </ul>
			      </li>
			    </ul>
			    <!-- end header navigation right -->				
			</div>

		</header>


		