<?php
/*
Retrieve data from database
*/
error_reporting(0);

$token = $_GET['token'];
$sensor_id = $_GET['sensor_id'];
require_once('response/response.php');
$res = new Response;

if(isset($token) && isset($sensor_id) && !empty($token) && !empty($sensor_id)){

    require_once('db/user_trans.php');
    $conn = new Usertrans;

    if($conn->validate_token($token)){

        if(($conn->getsensor_count() >= $sensor_id) && $sensor_id > 0 && ctype_digit($sensor_id) && $sensor_id != 0){

            $data = $conn->retrieve_all_data($sensor_id);
            echo $data;

        } else {
            echo $res->invalid_id_response();
        }

    } else {
        echo $res->invalid_auth_response();
    }

} else {

    echo $res->invalid_para_response();
}

?>