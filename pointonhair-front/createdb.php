
<?php include('config.php') ?>
<?php


$sql = 'CREATE DATABASE haircut';
if (mysql_query($sql)) {
    echo "Database haircut created successfully\n";
} else {
    echo 'Error creating database: ' . mysql_error() . "\n";
}
mysql_select_db( 'haircut' );


mysql_query("
    CREATE TABLE `users` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
") or die(mysql_error());

mysql_query("
    CREATE TABLE `news` (
  `mid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `newstitle` varchar(30) NOT NULL,
  `newsdate` datetime NOT NULL,
  `news-author` varchar(8) NOT NULL,
  `news-content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
") or die(mysql_error());

mysql_query("
  CREATE TABLE `hairstyle` (
  `mhid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `hairname` varchar(30) NOT NULL,
  `hairtype` int(1) NOT NULL COMMENT '0直发类发型1卷发类发型2束发类发型3短发类发型',
  `hairsex` int(1) NOT NULL COMMENT '0男1女',
  `hairimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
") or die(mysql_error());


?>























