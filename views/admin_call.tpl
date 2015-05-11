<!-- begin breadcrumb -->
<ol class="breadcrumb pull-right">
	<li><a href="javascript:;">Home</a></li>
	<li><a href="javascript:;">Tables</a></li>
	<li><a href="javascript:;">Managed Tables</a></li>
	<li class="active">Responsive</li>
</ol>

<h1 class="page-header"><?php echo isset($params['id']) ? 'Actualizar' : 'Crear'; ?> convocatoria <small><?php echo isset($params['id']) ? 'Formulario para crear convocatoria' : 'Formulario actualizar convocatoria'; ?></small></h1>

<link href="<?php echo URL; ?>assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet" />
<link href="<?php echo URL; ?>assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
<link href="<?php echo URL; ?>assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
<link href="<?php echo URL; ?>assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
<link href="<?php echo URL; ?>assets/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" />

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-inverse">
			<div class="panel-heading">
                <div class="panel-heading-btn">
                    <a data-click="panel-expand" class="btn btn-xs btn-icon btn-circle btn-default" href="javascript:;"><i class="fa fa-expand"></i></a>
                    <a data-click="panel-reload" class="btn btn-xs btn-icon btn-circle btn-success" href="javascript:;"><i class="fa fa-repeat"></i></a>
                    <a data-click="panel-collapse" class="btn btn-xs btn-icon btn-circle btn-warning" href="javascript:;"><i class="fa fa-minus"></i></a>
                    <a data-click="panel-remove" class="btn btn-xs btn-icon btn-circle btn-danger" href="javascript:;"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">Datos convocatoria</h4>
            </div>
            <div class="panel-body">
            	<form id="user" enctype="multipart/form-data" class="form-horizontal form-bordered" action="<?php  if(isset($params['action'])) :  echo $params['action']; unset($params['action']); else : echo URL.'admin/insert_call'; endif; ?>" method="POST">

					<?php echo isset($params['id']) ? '<input type="hidden" name="id" value="'.$params['id'].'"/>'  : ''; ?>

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4">Nombre convocatoria</label>
								<div class="col-md-8">
									<input class="form-control" value="<?php echo isset($params['nombre']) ? $params['nombre'] : ''; ?>" type="text" placeholder="Nombre Usuario" name="nombre" required />	
								</div>
								
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="estado">Estado</label>
								<div class="col-md-8">
									<select name="estado" class="form-control" required>
										<?php  
											if (isset($params['estado'])) : 
												$value = $params['estado'];
											else :
												$value = '';
												echo '<option value="" disbaled selected>Selecciona un estado</option>';
											endif;
										 ?>
										
										<option <?php echo ($value == 'abierta') ? 'selected' : ''; ?> value="abierta">Abierta</option>
										<option <?php echo ($value == 'en_votacion') ? 'selected' : ''; ?> value="en_votacion">En votacion</option>
										<option <?php echo ($value == 'publicada') ? 'selected' : ''; ?> value="publicada">Publicada</option>
										<option <?php echo ($value == 'despublicada') ? 'selected' : ''; ?> value="despublicada">Despublicada</option>
									</select>
								</div>
							</div>
						</div>
					
					</div>

					<div class="row">
						
						<div class="col-md-12">
							<div class="form-group">
								<label style="border: medium none;margin-right: -5px;" class="control-label col-md-2" for="password">Descripcion</label>
								<div class="col-md-10">
									<textarea id="wysihtml5" placeholder="Descripcion" name="descripcion" rows="12" class="form-control"><?php echo isset($params['descripcion']) ? $params['descripcion'] : ''; ?></textarea>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							
								
						</div>
						
					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="fecha_ini_carga">Fecha carga</label>
								<div class="col-md-8">
									
									 <div class="input-group input-daterange">
                                            <input type="text" class="form-control" data-date-start-date="Date.default" name="fecha_ini_carga" placeholder="Inicio" value="<?php echo isset($params['fecha_ini_carga']) ? $params['fecha_ini_carga'] : ''; ?>" required />
                                            <span class="input-group-addon">a</span>
                                            <input type="text" class="form-control" data-date-start-date="Date.default" name="fecha_fin_carga" placeholder="Fin" value="<?php echo isset($params['fecha_fin_carga']) ? $params['fecha_fin_carga'] : ''; ?>" required />
                                        </div>



								</div>
								
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="fecha_ini_carga">Fecha votacion</label>
								<div class="col-md-8">
									
									 <div class="input-group input-daterange">
                                            <input type="text" class="form-control" name="fecha_ini_vot" placeholder="Inicio" data-date-start-date="Date.default" value="<?php echo isset($params['fecha_ini_vot']) ? $params['fecha_ini_vot'] : ''; ?>" required />
                                            <span class="input-group-addon">a</span>
                                            <input type="text" class="form-control" name="fecha_fin_vot"  data-date-start-date="Date.default" placeholder="Fin" value="<?php echo isset($params['fecha_fin_vot']) ? $params['fecha_fin_vot'] : ''; ?>" required />
                                        </div>



								</div>
								
							</div>
						</div>
					</div>					

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="fecha_ini_carga">Mockup</label>
								<div class="col-md-8">
									<input type="file" accept="image/x-png, image/gif, image/jpeg" onchange="handleFileSelect(this.files, this)" name="mockup[]" multiple   class="file" />	
									<output class="list"></output>
								</div>
							</div>	
								
						</div>
						
						<div class="col-md-6">
							<div class="form_group">
								<button style="position:absolute;right:23px;margin-top:20px;" class="btn btn-sm btn-primary m-r-5" type="submit">
									Enviar
								</button>
							</div>
						</div>

	
		
					</div>


		

					<!--<div class="row fileupload-buttonbar">
						<div class="col-md-7">
                                <span class="btn btn-success fileinput-button">
                                    <i class="fa fa-plus"></i>
                                    <span>Add files...</span>
                                    <input type="file" multiple="" name="files[]">
                                </span>
                               
                                <!-- The global file processing state -->
                                <!--<span class="fileupload-process"></span>
                            </div>
                            <div class="col-md-5 fileupload-progress fade">
                                <!-- The global progress bar -->
                                <!--<div aria-valuemax="100" aria-valuemin="0" role="progressbar" class="progress progress-striped active">
                                    <div style="width:0%;" class="progress-bar progress-bar-success"></div>
                                </div>
                                <!-- The extended global progress state -->
                                <!--<div class="progress-extended">&nbsp;</div>
                            </div>-->

					<!--</div>-->
		</form>


<script src="<?php echo URL; ?>assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="<?php echo URL; ?>assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
<script src="<?php echo URL; ?>assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
<script src="<?php echo URL; ?>assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="<?php echo URL; ?>assets/js/form-wysiwyg.demo.min.js"></script>
<script src="<?php echo URL; ?>assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script src="<?php echo URL; ?>assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
<script src="<?php echo URL; ?>assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>

					
<script>
	
	function readURL(input, rut) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            console.log(rut);
            reader.onload = function (e) {
                	

                $(rut)
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
	}

	function handleFileSelect(files, lo) {
	    // var files = evt.target.files; // FileList object
	    // console.log(files);
	    // Loop through the FileList and render image files as thumbnails.
	    	
	    $('.list').empty();

	    for (var i = 0, f; f = files[i]; i++) {

	      // Only process image files.
	      if (!f.type.match('image.*')) {
	        continue;
	      }

	      var reader = new FileReader();

	      // Closure to capture the file information.


	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var span = document.createElement('span');
	          span.innerHTML = ['<img height="85" class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          // document.getElementById('list').insertBefore(span, null);

	          $('.list').append(span);
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	    }
	  }


	$(document).ready(function() {
		


	    $('.input-daterange').datepicker({
	        todayHighlight: true,
	        format: 'yyyy/mm/dd',
	    });

	     $('#jquery-tagIt-primary').tagit({
	     	fieldName: "tags[]"
	     });
		FormWysihtml5.init();
	});
</script>

            </div>
		</div>
	</div>
</div>



