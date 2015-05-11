<?php require_once 'admin_head.tpl'; ?>

<aside id="sidebar" class="sidebar">

	<div data-scrollbar="true" data-height="100%">
	    <!-- begin sidebar user -->
	    <ul class="nav">
	      <li class="nav-profile">
	        <div class="image">
	          <a href="javascript:;"><img src="assets/img/user-11.jpg" alt="" /></a>
	        </div>
	        <div class="info">
	          Sean Ngu
	          <small>Front end developer</small>
	        </div>
	      </li>
	    </ul>
	    <!-- end sidebar user -->
	    <!-- begin sidebar nav -->
	    
		<?php self::add_widget('menu_admin'); ?>	
	  
	  <!-- end sidebar scrollbar -->
	</div>

</aside>


<div class="sidebar-bg"></div>


<section id="content" class="content">
	
	<?php self::add_widget('mensajes'); ?>
	
	<?php require_once $content; ?> 


</section>

	



	

<?php  require_once 'admin_footer.tpl'; ?>    