<?php
/*
submit data from sensors
*/
error_reporting(0);

$token = $_GET['token'];
$sensor_id = $_GET['sensor_id'];
$sensor_value = $_GET['sensor_value'];
require_once('response/response.php');
$res = new Response;

if(isset($token) && isset($sensor_id) && isset($sensor_value) && !empty($token) && !empty($sensor_id) && !empty($sensor_value)){

    require_once('db/user_trans.php');
    $conn = new Usertrans;

    if($conn->validate_token($token)){

        if(($conn->getsensor_count() >= $sensor_id) && $sensor_id > 0 && ctype_digit($sensor_id) && $sensor_id != 0){

             if($conn->savedata($sensor_id, $sensor_value)){

                echo $res->data_saved_response();
             } else {
                echo $res->data_notsaved_response();
             }

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