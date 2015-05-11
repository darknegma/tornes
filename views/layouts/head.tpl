<!DOCTYPE html>
<html lang="<?php echo LANG ?>">

	<head>
	
		<!-- Title -->
		
		<title><?php self::__title(); ?></title>

		<!-- Metas  -->

		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">

		
		<meta content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0" name="viewport">
		<meta content="http://cuberto.com/media/images/logo-for-social.png" property="og:image">
		<meta content="all" name="robots">
		<meta content="desarrollo4@coloralcuadrado.com " name="publisher-email">
		<meta content="es_CO" property="og:locale">
		
		<meta content="<?php echo URL; ?>" property="og:url">
		<meta content="NegmaPro" property="og:site_name">
	   	
	   	<!-- Links -->
	   	<link href="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>" rel="canonical">
	   	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
	   
	   	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	   	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
	  	<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
	  	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	  	<link href='http://fonts.googleapis.com/css?family=Covered+By+Your+Grace' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="<?php echo URL.'assets/css/negma.css'; ?>" type="text/css" />
		<!-- Scripts -->

		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

		  


	</head>	

	<body class="<?php echo (parent::$class == '') ? 'home' : parent::$class; ?>">

