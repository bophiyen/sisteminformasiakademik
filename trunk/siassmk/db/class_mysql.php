<?php
class DB {	
	function __construct(){
		require_once("inc.db.php");
		$host = $server;
		$userdb = $dbuser;
		$passdb = $dbpass;
		$database = "db_siassmk";
		
		$db = mysql_connect($host,$userdb,$passdb) or die ('Tidak dapat terhubung ke server basis data');
		$pilihdb = mysql_select_db($database,$db);
		if(!$pilihdb){
			echo "<script>document.location='install.php';</script>";		
		}
	}
	
	function unkonek(){
		mysql_close();
	}	
	function eksekusi($query){
		$this -> query = $query;
		$this -> result = mysql_query($query);
	}
	function get_jum(){		
		$this->jumrow=mysql_num_rows($this->result);
		return $this->jumrow;
	}
	function get_array(){
		$this->row=mysql_fetch_array($this->result);
		return $this->row;
	}
}
?>