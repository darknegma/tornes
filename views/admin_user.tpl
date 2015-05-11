<!-- begin breadcrumb -->
<ol class="breadcrumb pull-right">
	<li><a href="javascript:;">Home</a></li>
	<li><a href="javascript:;">Tables</a></li>
	<li><a href="javascript:;">Managed Tables</a></li>
	<li class="active">Responsive</li>
</ol>

<h1 class="page-header"><?php echo isset($params['id']) ? 'Actualizar' : 'Crear'; ?> usuario <small><?php echo isset($params['id']) ? 'Formulario para crear usuario' : 'Formulario actualizar usuario'; ?></small></h1>

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
                <h4 class="panel-title">Datos usuario</h4>
            </div>
            <div class="panel-body">
            	<form id="user" enctype="multipart/form-data" class="form-horizontal form-bordered" action="<?php  if(isset($params['action'])) :  echo $params['action']; unset($params['action']); else : echo URL.'admin/insert_user'; endif; ?>" method="POST">

					<?php echo isset($params['id']) ? '<input type="hidden" name="id" value="'.$params['id'].'"/>'  : ''; ?>

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4">Nombre completo</label>
								<div class="col-md-8">
									<input class="form-control" value="<?php echo isset($params['nombre_usuario']) ? $params['nombre_usuario'] : ''; ?>" type="text" placeholder="Nombre Usuario" name="nombre_usuario" required />	
								</div>
								
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="email">Email</label>
								<div class="col-md-8">
									<input class="form-control" value="<?php echo isset($params['email']) ? $params['email'] : ''; ?>" type="email" placeholder="Email" name="email" required />
								</div>
							</div>
						</div>
					
					</div>

					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="password">Password</label>
								<div class="col-md-8">
									<input id="password" class="form-control m-b-5" type="password"  name="pass_usuario" <?php echo isset($params['pass_usuario']) ? '' : 'required'; ?> />
								</div>
								
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="password">Verificar Password</label>
								<div class="col-md-8">
									<input id="confirm_password" class="form-control verify_pass"  type="password"   <?php echo isset($params['pass_usuario']) ? '' : 'required'; ?> />
								</div>
								
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="telefono">Telefono</label>
								<div class="col-md-8">
									<input class="form-control" type="tel" placeholder="Telefono" name="telefono" value="<?php echo isset($params['telefono']) ? $params['telefono'] : ''; ?>" required />
								</div>
								
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="direccion">Direccion</label>
								<div class="col-md-8">
									<input class="form-control" type="tel" placeholder="Direccion" name="direccion" value="<?php echo isset($params['direccion']) ? $params['direccion'] : ''; ?>" required />
								</div>
								
							</div>
						</div>
					</div>					




					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label col-md-4" for="tipo">Tipo de usuario</label>
								<div class="col-md-8">
									<select name="tipo" class="form-control" required>
										<?php $value = (isset($params['tipo'])) ? $params['tipo'] : ''; ?>
										<option <?php echo ($value == 'admin') ? 'selected' : ''; ?> value="admin">Administrador</option>
										<option <?php echo ($value == 'dise/comp') ? 'selected' : ''; ?> value="editor">Diseñador / Comprador</option>
										
									</select>
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

				<script type="text/javascript">
					$('#user').submit(function(event){

						var confirm = $('#confirm_password').val();
						var pass    = $('#password').val();

						
						 if ( confirm == pass ) {
							// $( "span" ).text( "Validated..." ).show();
							return;
						}
							alert('las contraseñas no coinciden');
							event.preventDefault();


					});
				</script>
				
            </div>
		</div>
	</div>
</div>



