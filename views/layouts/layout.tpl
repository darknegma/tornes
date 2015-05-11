<?php require_once 'head.tpl'; ?>

<header id="header">
	
</header>
<section id="mensajes">
	<?php if(isset($_SESSION['message'])) : echo $_SESSION['message']; unset($_SESSION['message']); endif; ?>
</section>
<section id="maincontent"><?php require_once $content; ?></section>	


	

<?php  require_once 'footer.tpl'; ?>    