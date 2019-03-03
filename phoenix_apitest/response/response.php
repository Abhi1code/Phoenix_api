<?php
/*
Handles Responses
*/

class Response {

    public function invalid_auth_response(){

        $response = array();
        array_push($response, array("status" => "Invalid Token", "code" => "401"));
        return json_encode($response);
    }

    public function invalid_id_response(){

        $response = array();
        array_push($response, array("status" => "Invalid sensor_id", "code" => "400"));
        return json_encode($response);
    } 

    public function invalid_para_response(){

        $response = array();
        array_push($response, array("status" => "Invalid parameteres", "code" => "400"));
        return json_encode($response);
    }

    public function data_saved_response(){

        $response = array();
        array_push($response, array("status" => "Data successfully saved", "code" => "201"));
        return json_encode($response);
    }

    public function data_notsaved_response(){

        $response = array();
        array_push($response, array("status" => "Error! Data not saved", "code" => "205"));
        return json_encode($response);
    }

    public function internal_error_response(){

        $response = array();
        array_push($response, array("status" => "Internal server error", "code" => "503"));
        return json_encode($response);
    }
}
?>