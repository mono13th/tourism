<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Profile extends CI_Controller 
{
	public $modul="Profile";
	
	public function __construct() {        
		parent::__construct();
		$this->load->model("Pr_saranaprasarana");		
		$this->load->model("Pr_kategorisarana");
		$this->load->model("Pr_profile");	
	}

	public function index()
	{
		$data['title'] 			= "Profile";
		$data['small_title']	= "Profile mengenai tujuan wisata";
		$data["modul"]			= $this->modul;
		$data["query"]			= $this->Pr_profile->get_all();
		$this->load->view('profile', $data);
	}
	
	public function form()
	{
		$data['title'] 			= "Profile";
		$data['small_title']	= "Profile mengenai tujuan wisata";		
		$data['modul']			= $this->modul;
		$data['action']		    = "insert";	
		$data['query']			= $this->Pr_profile->get_all();
		if(isset($_GET['id'])){
			$data['id'] 			= $_GET['id'];
			$data['value']		= $this->Pr_profile->get_by_id($_GET['id']);
			$data['action']		= "Update";
		}
		$this->load->view('profileForm', $data);
	}		
	
	public function addimage()
	{
		$data['title'] 			= "Profile";
		$data['small_title']	= "Profile mengenai tujuan wisata";		
		$data['modul']			= $this->modul;
		$this->load->view('profileImage', $data);
	}
	
	public function insert()
	{
		$parent_id = $this->input->post('cbo_parent');
        $title_eng = $this->input->post('title_eng');			
        $title_ind = $this->input->post('title_ind');			
        $desc_eng = $this->input->post('description_eng');	
        $desc_ind = $this->input->post('description_ind');
		$id_map = $this->input->post('cbo_map');
			
        $data = array(				
                'parent_id'=>$parent_id,
                'nama_lokasi_wisata_ina'=>$title_ind,
                'nama_lokasi_wisata_eng'=>$title_eng,
			    'deskripsi_ina'=>$desc_ind,
				'deskripsi_eng'=>$desc_eng,
				'id_peta'=>$id_map                   
               );
		
		//$this->Pr_profile->validate($data);		
		$this->Pr_profile->insert($data);		
					
		redirect('Profile');
	}
	
}

?>