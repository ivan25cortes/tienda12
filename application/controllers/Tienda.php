<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tienda extends CI_Controller {

	
	 

	
	public function __construct(){
		parent::__construct();
		$this->load->model('Tienda_model');
		$this->load->helper('url');
		//$this->load->library('session');
	}

	public function index()
	{
		$this->load->view('Tienda/catalogo_view');
	}

	public function registro()
	{
		$this->load->view('Tienda/registro_view');
	}

	public function login()
	{
		$this->load->view('Tienda/login_view');
	}

	public function agregar()
	{
		$this->load->view('Tienda/agregar_view');
	}

	public function registrados()
	{
		$producto = $this->Tienda_model->getproducto();
		$data = array('producto'=>$producto);
		$this->load->view('Tienda/registrados_view', $data);
	}

}
