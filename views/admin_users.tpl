<link href="assets/plugins/DataTables/css/data-table.css" rel="stylesheet" />
<script src="assets/plugins/pace/pace.min.js"></script>

<!-- begin breadcrumb -->
<ol class="breadcrumb pull-right">
	<li><a href="javascript:;">Home</a></li>
	<li><a href="javascript:;">Tables</a></li>
	<li><a href="javascript:;">Managed Tables</a></li>
	<li class="active">Responsive</li>
</ol>
<!-- end breadcrumb -->
<!-- begin page-header -->
<h1 class="page-header">Usuarios<small>todos losusuarios registrados</small></h1>
<!-- end page-header -->

<!-- begin row -->
<div class="row">
 
    <!-- begin col-10 -->
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">DataTable - Responsive</h4>
            </div>
            <!--<div class="alert alert-warning fade in">
                <button type="button" class="close" data-dismiss="alert">
                    <span aria-hidden="true">&times;</span>
                </button>
                In the modern world of responsive web design tables can often cause a particular problem for designers due to their row based layout. Responsive is an extension for DataTables that resolves that problem by optimising the table's layout for different screen sizes through the dynamic insertion and removal of columns from the table.
            </div>-->
            <div class="panel-body">
				                        
				<?php if($params) : ?>
                <table id="data-table" class="table table-striped table-bordered nowrap" width="100%">
                    <thead>
                        <tr>	
							<th>Nombre usuario</th>
							<th>Email</th>
							<th>Tipo</th>
<<<<<<< HEAD
							<th>Editar</th>
							<th>Eliminar</th>
=======
>>>>>>> 536edf24eb3c5a65b8a7d12441332d1dc2625219
                        </tr>
                    </thead>
                    <tbody>
                        <?php  $i = 1; foreach($params as $user) : ?>
						<tr class="<?php echo ($i%2 == 0) ? 'odd' : 'even'; ?>">
								
							<td><?php echo $user['nombre_usuario']; ?></td>
							<td><?php echo $user['email']; ?></td>
							<td><?php echo $user['tipo']; ?></td>
				
							<td><a class="edit" href="<?php echo URL.'admin/update_user/'.$user['id']; ?>"><i class="fa fa-pencil-square-o"></i></a></td>	
							<td><a class="delete_user delete" href="<?php echo $user['id']; ?>"><i class="fa fa-trash"></i></a></td>
						</tr>

					<?php $i++; endforeach; ?>
                    </tbody>
                <?php endif; ?>
                </table>
            </div>
        </div>
        <!-- end panel -->
    </div>
    <!-- end col-10 -->
</div>
<!-- end row -->

<script type="text/javascript">
	
	$('.delete_user').click(function(e){

		e.preventDefault();

		var id = $(this).attr('href');
		$(this).parent().parent().remove();

		$.ajax({
			
			url: "<?php echo URL.'admin/delete_user'; ?>",
			cache: false,
			type: 'POST',
			data: {id: id},		
			success: function(html){
			$(".results").fadeIn(100, 'fold').html(html);
			}
			}); 

		});
	

</script>
		








































