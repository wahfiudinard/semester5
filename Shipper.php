<?php
defined ('BASEPATH') OR exit ('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Shipper extends REST_Controller {
	
	function __construct ($config = 'rest'){
		parent :: __construct ($config);
		$this->load->database();
	}
	//menampilkan data kontak
	function index_get () {
		$id = $this->get('ShipperID');
		if ($id == ''){
			$kontak = $this->db->get('shippers')->result();
		}else{
				$this->db->where('ShipperID', $id);
				$kontak = $this->db->get('shippers') -> result();
			}
			$this->response($kontak, 200);
		}
	
	
	//mwngirim atau menambah data kontak baru
	function index_post(){
		$data = array(
						'CompanyName'	=> $this -> post ('companyname'),
						'Phone'		=> $this -> post ('phone'));
		$insert = $this->db->insert('shippers', $data);
		if ($insert) {
			$this->response($data, 200);
		}else {
			$this->response(array('status' => 'fail', 502));
		}
	}

	//memperbarui data kontak yang sudah ada
	function index_put(){
		$id = $this ->put('id');
		$data = array (
						'ShipperID'	=> $this -> post ('id'),
						'CompanyName'	=> $this -> post ('companyname'),
						'Phone'		=>$this -> post ('phone'));
		$this->db->where('ShipperID', $id);
		$update = $this->db->update('shippers', $data);
		if ($update) {
			$this->response($data, 200);
		} else {
			$this->response(array('status' => 'fail', 502));
		}
	}
	function index_delete (){
		$id = $this->delete ('id');
		$this->db->where('ShipperID', $id);
		$delete = $this->db->delete('shippers');
		if ($delete){
			$this->response(array('status' => 'success'), 201);
		} else {
			$this->response(array('status' => 'fail', 502));
		}
	}

}