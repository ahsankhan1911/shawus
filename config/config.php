<?php
ob_start(); //Turn on output buffring
session_start();

$timezone = date_default_timezone_set("Asia/Karachi");

$con = mysqli_connect("localhost", "root", "", "social");

if(mysqli_connect_errno()) {

 echo "Faield to connect: " . mysqli_connect_errno();

}

?>