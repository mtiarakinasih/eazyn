<?php

$username = "root";
$password = "";
$host = "localhost";
#$blabla adalah variabel

$is_connect = mysqli_connect($host, $username, $password);
#mysqli_connect adalah function
#($host, $username, $password) adalah parameter

if($is_connect){
    mysqli_select_db($is_connect, "izin_db");
}else{
    echo "OOopSie, tidak connect:(";
}