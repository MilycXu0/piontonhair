<?php
require ("config.php");

$username = $_POST['username'];
$password = $_POST['password'];
$passwordverif = $_POST['passwordverif'];
$password = $_POST['sid'];
$email = $_POST['email'];
$names = $_POST['did'];


 $sql=mysql_query("INSERT INTO users(id, username,password,passwordverif, sid, email,did) VALUES
 ('".$_POST['username']."','".$_POST['password']."','".$_POST['sid']."','".$_POST['email']."','".$_POST['did']."')");

?> 