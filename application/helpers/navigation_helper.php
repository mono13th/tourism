<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Navigation extends CI_Controller {
	
	
	public function __construct(){
		//function check access			
		parent::__construct();	
		$this->load->model("admin/Lokasi_wisata_kategori");
	}
	
	public function loadAll()
	{
		return $this->Lokasi_wisata_kategori->display();;
	}
	
}

?>