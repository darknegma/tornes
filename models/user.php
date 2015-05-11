<?php


	use App\model as Model;


	Class UserModel extends model {



		protected static $table_name = 'usuarios';


		public static function authenticate_user($username="", $password="")
		{	
			$query = "SELECT * FROM ".static::$table_name." WHERE email = '{$username}' AND pass_usuario = '{$password}'";

			$users_array = static::__query($query);



			if($users_array) :

				$user =  $users_array;

				unset($user['pass_usuario']);
				$_SESSION['user'] = $user;

				return $user;

				else :

				return false;

			endif;


		} 	// Fin del método authenticate_user()


		

	}

?>