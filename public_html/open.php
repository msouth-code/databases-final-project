<?php

    // collect login variable values
    include 'conf.php';  //make sure you've put your credentials in conf.php

    // attempt to create a connection to db
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', true);
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
    echo "1";
    // report whether failure or success
    if (!$conn) {
        echo "Connect failed";
        exit();
    } 
    echo "begin connection";
    // $dbname = 'finalproject'; 
    mysqli_select_db($dbname, $conn);
    echo "connected";
    // else {
        // $mysqli has connection to database- close it
        // after it's used to execute SQL statements
        // if (mysqli_ping($mysqli)) {
        //     echo "Our connection is ok!\n";
        // } else {
        //     echo ("Error: ".$mysqli->error_log); 
        // }
    // }

?>