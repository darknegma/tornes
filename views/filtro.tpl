<?php 

	$monedas  = $params['monedas']; unset($params['monedas']); 
	$ciudades = $params['cities']; unset($params['cities']); 
?>


<h3>(<?php echo count($params); ?>) Resultados </h3>
<?php echo (count($params) == 0) ? '<div style="margin-top:25px;" class="alert alert-danger" role="alert">No se encontraron resultados</div>' : ''; ?>

	<?php foreach($params as $v) : ?>
		<div class="uni">
		
		<i class="fa fa-university"></i>
		
		<span style="display:none"><?php echo $v['id']; ?></span>

		<div class="nombre">
			<strong>Nombre : </strong> <?php echo $v['nombre']; ?>
		</div>
		<div class="sede">
			<strong>Sede principal : </strong><?php echo $v['ciudad'] ?>
		</div>
		<div class="rector">
			<strong>Rector : </strong><?php echo $v['rector']; ?>
		</div>
		
		<div class="email">
			<strong>Email : </strong><?php echo $v['email']; ?>
		</div>

		<a href="#" onclick="see_more(this, event)">Ver en detalle<i class="fa fa-plus"></i></a>

		<div class="see_more">
			<div class="tipo">
				<strong>Tipo : </strong><span><?php echo ($v['tipo'] == '0') ? 'SIN ANIMO DE LUCRO' : 'CON ANIMO DE LUCRO'; ?></span>
			</div>
			
			<div class="div presidente">
				<strong>Presidente : </strong><?php echo $v['presidente']; ?>
			</div>

			<div class="acreditaciones">
				<?php $acreditaciones = json_decode($v['acreditaciones'], true); ?>
				<strong>Acreditaciones</strong>
				<ul>
				    <li class="acreditaciones_nacionales">
				    	<i>Nacionales</i>
				    	<span><?php echo ($acreditaciones['nacionales'] == '0') ? 'NO' : 'SI'; ?></span>
			    	</li>
				    <li class="acreditaciones_internacionales">
				    	<i>Internacionales</i>
				    	<span><?php echo ($acreditaciones['internacionales'] == '0') ? 'NO' : 'SI'; ?></span>
			    	</li>
				</ul>	
			</div>
			<div class="cobertura">
				<?php $cobertura = json_decode($v['cobertura'], true); ?>
				<strong>Cobertura</strong>
				<ul>
				    <li><i>Numero de sedes</i><?php echo $cobertura['num_sedes']; ?></li>
				    
				</ul>
			</div>
			<div class="modalidad">
				<?php $modalidad = json_decode($v['modalidad'], true); ?>
				<strong>Modalidad</strong>
				<ul>
				    <li><i>Presencial</i><?php echo $modalidad['presencial']; ?></li>
				    <li><i>Virtual</i><?php echo $modalidad['virtual']; ?></li>
				    <li><i>Distancia</i><?php echo $modalidad['distancia']; ?></li>
				</ul>
			</div>
			<div class="poblacion">
				<?php $poblacion = json_decode($v['poblacion'], true); ?>
				<strong>Poblacion</strong>
				<ul>
				    <li class="poblacion_total">
				    	<i>Total</i>
				    	<span><?php echo str_replace('.', '', $poblacion['total']); ?></span>
			    	</li>
				    <li class="poblacion_pregrado">
				    	<i>Pregrado</i>
				    	<span><?php echo str_replace('.', '', $poblacion['pregrado']); ?></span>
			    	</li>
				    <li class="poblacion_posgrado">
				    	<i>posgrado</i>
				    	<span><?php echo str_replace('.', '', $poblacion['posgrado']); ?></span>
			    	</li>
				</ul>
			</div>
			<div class="poblacion_primer_ingreso">
				<?php $poblacion_primer_ingreso = json_decode($v['poblacion_primer_ingreso'], true); ?>
				<strong>Poblacion primer ingreso</strong>
				<ul>
				    <li><i>Pregrado</i><?php echo $poblacion_primer_ingreso['pregrado']; ?></li>
				    <li><i>posgrado</i><?php echo $poblacion_primer_ingreso['posgrado']; ?></li>
				</ul>
			</div>
			<div class="desercion">
				<?php $desercion = json_decode($v['desercion'], true); ?>
				<strong>Desercion</strong>
				<ul>
				    <li><i>Acumulada</i><?php echo $desercion['acumulada']; ?></li>
				    <li><i>Por Periodo</i><?php echo $desercion['por_periodo']; ?></li>
				</ul>
			</div>
			<div class="personal">
				<?php $personal = json_decode($v['personal'], true); ?>
				<strong>Personal</strong>
				<ul>
				    <li><i>Docentes</i><?php echo str_replace('.', '', $personal['docentes']); ?></li>
				    <li><i>Adtivos</i><?php echo str_replace('.', '', $personal['adtivos']); ?></li>
				</ul>
			</div>
			<div class="ingresos">
				<?php $ingresos = json_decode($v['ingresos'], true); ?>
				<strong>Ingresos</strong>
				<ul>
				    <li class="matricula_posgrado">
				    	<i>Total ingresos</i>
				    	<span><?php echo $ingresos['total_ingresos']; ?></span>
			    	</li>
				    <li class="matricula_posgrado">
				    	<i>Matriculas pregrados</i>
				    	<span><?php echo str_replace('.', '', $ingresos['matricula_posgrado']); ?></span>
			    	</li>
				    <li class="matricula_pregrado">
				    	<i>Matriculas posgrado</i>
				    	<span><?php echo str_replace('.', '', $ingresos['matricula_pregrado']); ?></span>
			    	</li>
			    	<li>
			    		<i>Moneda</i>
			    		<?php echo array_search($ingresos['moneda'], $monedas); ?>
			    	</li>
				</ul>
			</div>
			<div class="ciudades_cobertura">
				<strong>Ciudades de cobertura</strong>
				<ul>
				   <?php 

				   	if(is_array($cobertura['ciudades'])) :

				   		foreach($cobertura['ciudades'] as $ciudad) :

				   			echo '<li>'.array_search($ciudad, $ciudades).'</li>';

			   			endforeach;

			   		else :

			   			echo '<li>'.array_search($cobertura['ciudades'], $ciudades).'</li>';

			   		endif;

				    ?>
					
				</ul>
			</div>
			<div class="observaciones">
				<strong>Observaciones : </strong><?php echo $v['observaciones']; ?>
			</div>	
		</div>
		
	</div>
	<?php endforeach; ?>
<?php //else : ?>

	<!-- <div class="alert alert-danger" role="alert">No se han encontrado universidades</div> -->

<?php //endif; ?>