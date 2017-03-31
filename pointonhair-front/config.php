<?php
//We start sessions
session_start();
mysql_connect('localhost', 'root', '');
mysql_select_db('haircut');
//Home page file name
$url_home = 'index.php';
//Design Name
$design = 'default';
?>