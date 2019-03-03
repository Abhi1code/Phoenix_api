<?php
/**
 * user transaction like input and output to database
 */
class Usertrans
{
	
	private $mconn;
	private $sensor_count;

    public function getsensor_count(){ return $this->sensor_count; }
    public function getconn(){ return $this->mconn; }


	function __construct()
	{
		require_once('db_connect.php');
		$conn = new Dbconnect;
		$this->mconn = $conn->establish_conn();
		$this->total_sensors();
			
	}

	public function total_sensors(){
		$sql = "SELECT `id` FROM `sensors_mime` ORDER BY ID DESC LIMIT 1";
		$bind = $this->mconn->prepare($sql);
    	
    	try {
    		if ($bind->execute()) {
				$user = $bind->fetch(PDO::FETCH_ASSOC);
				$this->sensor_count = $user['id'];
    		} else {
				echo $this->error_response();
			}
    	} catch (Exception $e) {
    		echo $this->error_response();
    	}
	}

	public function sensor_location($sensor_id){
		$sql = "SELECT `sensor_location` FROM `sensors_mime` WHERE `sensor_id` = :sensor_id";
    	$bind = $this->mconn->prepare($sql);
    	$bind->bindParam(":sensor_id", $sensor_id);
    	try {
    		if ($bind->execute()) {
				$user = $bind->fetch(PDO::FETCH_ASSOC);
				return $user['sensor_location'];
    		} else {
				echo $this->error_response();
			}
    	} catch (Exception $e) {
    		echo $this->error_response();
		}
	}

	public function validate_token($token){

    	$sql = "SELECT * FROM `user_token` WHERE `token` = :token";
    	$bind = $this->mconn->prepare($sql);
    	$bind->bindParam(":token", $token);
    	try {
    		if ($bind->execute()) {
				$user = $bind->fetch(PDO::FETCH_ASSOC);
				if(isset($user) && !empty($user)){
					return true;
				} else {
					return false;
				}
    		}
    	} catch (Exception $e) {
    		echo $this->error_response();
    	}
    }

    public function savedata($sensor_id, $sensor_data){
		$sensor_table = "sensor".$sensor_id;
		$time = time();

    	$sql = "INSERT INTO `$sensor_table`(`id`, `temp_value`, `sensor_timestamp`) VALUES (null, :value, :time)";
        $bind = $this->mconn->prepare($sql);
        $bind->bindParam(":value", $sensor_data);
        $bind->bindParam(":time", $time);
        
        try {
        	
        	if ($bind->execute()) {
        		return true;
        	} else{
                return false;
        	}

        } catch (Exception $e) {
        	echo $this->error_response();
        }
	}
	
	public function retrieve_current_data($sensor_id){
		$sensor_table = "sensor".$sensor_id;

		$sql = "SELECT * FROM `$sensor_table` ORDER BY ID DESC LIMIT 1";
		$bind = $this->mconn->prepare($sql);
    	
    	try {
    		if ($bind->execute()) {
				$user = $bind->fetch(PDO::FETCH_ASSOC);
				return $user;
    		} else {
				echo $this->error_response();
			}
    	} catch (Exception $e) {
    		echo $this->error_response();
    	}
	}

	public function retrieve_all_data($sensor_id){
		$sensor_table = "sensor".$sensor_id;

		$sql = "SELECT * FROM `$sensor_table` ORDER BY ID";
		$bind = $this->mconn->prepare($sql);
    	
    	try {
    		if ($bind->execute()) {
				
				$response = array();
				array_push($response, array("status" => "okay", "code" => "200", "sensor_id" => $sensor_id, "sensor_location" => $this->sensor_location($sensor_id)));

				while($data = $bind->fetch(PDO::FETCH_ASSOC)){
					
					array_push($response, array("temp_value" => $data['temp_value'], "data_timestamp" => $data['sensor_timestamp']));

				}
				$user = json_encode($response);
				return $user;

    		} else {
				echo $this->error_response();
			}
    	} catch (Exception $e) {
    		echo $this->error_response();
    	}
	}

	public function error_response(){
		$response = array();
        array_push($response, array("status" => "Internal server error", "code" => "503"));
        return json_encode($response);
	}

}

?>