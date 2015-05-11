 <ul class="nav">
      <li class="nav-header">Menu</li>
      <li>
        <a href="<?php echo URL; ?>admin"><i class="fa fa-laptop"></i> <span>Dashboard</span></a>
      </li>
      <li>
        <a href="inbox.html">
          <span class="badge pull-right">10</span>
          <i class="fa fa-inbox"></i> <span>Inbox</span>
        </a>
      </li>
      
	  <!--  Si es admin -->
      <?php if(isset($_SESSION['user']) && $_SESSION['user']['tipo'] == 'admin') : ?>

      <li class="has-sub">
        <a href="javascript:;">
          <i class="fa fa-users"></i> 
          <b class="caret pull-right"></b>
          <span>Usuarios</span> 
        </a>
        <ul class="sub-menu">
          <li><a href="<?php echo URL; ?>admin/users">General</a></li>
          <li><a href="<?php echo URL; ?>admin/add_user">Añadir usuario</a></li>
        </ul>
      </li>
	   
       <li class="has-sub">
        <a href="javascript:;">
          <i class="fa fa-puzzle-piece"></i>
          <b class="caret pull-right"></b>
          <span>Convocatorias</span> 
        </a>
        <ul class="sub-menu">
          <li><a href="<?php echo URL; ?>admin/calls">General</a></li>
          <li><a href="<?php echo URL; ?>admin/add_call">Añadir convocatoria</a></li>
        </ul>
      </li>
		
	<?php endif; ?>

      <!-- begin sidebar minify button -->
      <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
      <!-- end sidebar minify button -->
</ul>
<!-- end sidebar nav -->