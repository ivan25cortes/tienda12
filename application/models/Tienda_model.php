<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Nuestro primer modelo
 */
class Tienda_model extends CI_Model
{




	function __construct()
	{
		parent::__construct();
		$active_group = 'default';
		$query_builder = TRUE;

		$db['default'] = array(
			'dsn'	=> '',
			'hostname' => 'localhost:3306',
			'username' => 'tienda_deportes',
			'password' => 'GQr1SbPdApjoAMaI',
			'database' => 'tienda',
			'dbdriver' => 'mysqli',
			'dbprefix' => '',
			'pconnect' => FALSE,
			'db_debug' => (ENVIRONMENT !== 'production'),
			'cache_on' => FALSE,
			'cachedir' => '',
			'char_set' => 'utf8',
			'dbcollat' => 'utf8_general_ci',
			'swap_pre' => '',
			'encrypt' => FALSE,
			'compress' => FALSE,
			'stricton' => FALSE,
			'failover' => array(),
			'save_queries' => TRUE

		);



		$this->load->database();
	}


	public function getproducto($id=0){
		if ($id>0) {
			$sql="SELECT * from 'producto' WHERE id_producto = $id";
		}else{
			$sql = "SELECT * from 'producto' ";
		}
		$resultado = $this->db->query($sql);
        if ($resultado->num_rows()>0){
        	return $resultado;
        }else{
        	return false;
        }




	}

}	