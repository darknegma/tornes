<div class="container">
	<table class="convocatorias table table-striped">
		<thead>
			<th>Nombre</th>
			<th>Estado</th>
			<th></th>
			
		</thead>

	<tbody>
	<?php foreach($params as $con) : ?>
		<tr class="conv">
			<td class="nombre"><?php echo $con['nombre']; ?></td>
			<td class="estado" ><span class="label <?php echo ($con['estado'] == 'abierta') ? 'label-primary' : 'abel-info'; ?>"><?php echo $con['estado']; ?></td>
			<td class="accion">
				<a href="<?php echo ($con['estado'] == 'abierta') ? URL.'agregar_libreta/'.$con['id'] : URL.'votar' ; ?>">
					<?php echo ($con['estado'] == 'abierta') ? 'Agregar libreta' : 'Votar' ; ?>
				</a>
			</td>
			
	</tr>	
	<?php endforeach; ?>
		</tbody>
	</table>
</div>
