<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	
	class Promotion_m extends MY_Model 
	{
		protected 	 $table = 'pr_promosi';	 	 
		protected 	 $primary_key = 'id_promosi';
	
		public function displayAll($offset=10, $limit=0, $where="")
		{
			$this->db->limit($offset, $limit);
			if( !empty($where) ):
				$this->db->where($where);
			endif;
			$this->db->order_by($this->primary_key . " desc ");
			$query = $this->db->get($this->table);
			//echo $this->db->last_query();
			return $query->result();
		}

		public function displayAllJoin($offset=10, $limit=0, $where="")
		{
			$this->db->select('a.*, b.*');
            $this->db->from($this->table.' a'); 
            $this->db->join('pr_kategori_promosi b', 'b.id_kategori_promosi=a.id_promosi_kategori', 'left');
            $this->db->order_by($this->primary_key . " desc ");    
            $this->db->limit($offset, $limit);
			if( !empty($where) ):
				$this->db->where($where);
			endif;
			$query = $this->db->get(); 			
            
            return $query->result();
		}
		
		public function displaySelectedData($data)
		{
			$this->db->where($data);
			$query = $this->db->get($this->table);
			//echo $this->db->last_query();
			return $query->result();
		}
		
		public function displayFileSelectedData($data)
		{
			$this->db->where($data);
			$query = $this->db->get("pr_promosi_berkas");
			//echo $this->db->last_query();
			return $query->result_array();
		}
		
		public function displayImageSelectedData($data)
		{
			$this->db->where($data);
			$query = $this->db->get("pr_promosi_gambar");
			//echo $this->db->last_query();
			return $query->result();
		}
		
		public function displayAllImage()
		{
			$this->db->limit('20');
			$query = $this->db->get("pr_promosi_gambar");
			//echo $this->db->last_query();
			return $query->result();
		}
		
		public function displayCategorySelectedData($data)
		{
			$this->db->where($data);
			$query = $this->db->get("pr_kategori_promosi");
			//echo $this->db->last_query();
			return $query->result();
		}
		
		public function countAllData($where="")
		{
			if( !empty($where) ):
				$this->db->where($where);
			endif;
			return $this->db->count_all_results($this->table);
		}
		
		public function display()
		{
			$this->db->order_by("id_kategori_promosi desc ");
			$query = $this->db->get("pr_kategori_promosi");
			//echo $this->db->last_query();
			return $query->result();
		}
		
	}
?>
