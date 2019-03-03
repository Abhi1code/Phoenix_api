# Phoenix_api
Temperature sensor data api

I have worked on this topic
"Web Application (REST API only) for Acquisition, Storage & Retrieval of Temperature data in real-time"

Suppose these temperature sensors are installed across different places in rourkela. For simplicity I have 
considered 5 sensors and each sensor has its unique id .

Sensor_id              Places
   1                 Railway station
   2                 Big Bazzar
   3                 NIT Rourkela
   4                 Ambagan
   5                 Uditnagar
   
   This table is stored in SQL table name 'sensors_mime'. For each sensor there is a seperate table 
   for ex (For sensor with id 1 , table name is sensor1), (For sensor with id 2, table name is sensor2) and so on.
    In each individual table there are three columns (ID, temp_value, sensor_timestamp) . ID is set to 
	auto increment , temp_value is the temperature data sensed by corresponding sensor and sensor_timestamp
	is the corresponding time at which date is recorded in database.
	
	There is one more table which has authorization token stored having table name 'user_token'.
	
	Now for implementation part there are two apis named submit.php and retrieval.php .
	submit.php is used for submitting sensor data to database and retrievel.php is used for retrieving data from
	server. 
	
	I have used php language and GET request for apis designing.
	
	Submit.php has three parameters to be passed for successfull submission of sensor data.
	1)token (For authorization purpose) Sample tokens are already stored in table 'user_token'.
	2)sensor_id (Each sensor has its unique id)
	3)sensor_value (Temperature recorded by the corresponding sensor)
	
	overall when authenticated token is passed for some sensor id , corresponding data is stored in its SQL table.
	
	retrival.php has two parameteres to be passed for successfull retrieval of data.
	1)token (For authorization purpose) Sample tokens are already stored in table 'user_token'.
	2)sensor_id (Each sensor has its unique id)
	
	overall all data from given sensor id is retrieved in json format and shown to user. Data contains
	sensor id , sensor_value, sensor timestamp, place at which corresponding sensor is installed.
	
	
	Now coming to coding part.
	I have used power of oops in order to code for api.
	
	Inside phoenix_apitest folder there are two files and two folders.
	Files having name retrieval.php and submit.php are apis discussed earlier.
	
	Name of one of the folder is 'db' which again has two files named 'db_connect' and 'user_trans.php'.
	'db_connect' is used for handling and maintaining connection to database and 'user_trans.php' is used as
	a relay between apis and SQL .All read and write operation to database occurs here.
	
	Name of another folder is 'response' which contain one file name 'response.php'. This file is for handling 
	errors that can occur during input and output operations to databse and also for validating user and 
	url.
	
	This was short discription about api .
	
	I have also uploaded this prototype to my server .
	Link for submit api is https://matrixfrats.com/phoenix_apitest/submit.php?token=csdcsdvdwav56s3v3shsjdc654svq8davksv456svdhkahak&sensor_id=3&sensor_value=45
	Link for retrieval api is https://matrixfrats.com/phoenix_apitest/retrieve.php?token=csdcsdvdwav56s3v3shsjdc654svq8davksv456svdhkahak&sensor_id=3
	
	Here I have used token which is validated and already stored in my database and sensor_id is the respective
    id for corresponding sensor.
