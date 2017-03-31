<?php
include('config.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<?php echo $design; ?>/style.css" rel="stylesheet" title="Style" />
        <title>List of users</title>
    </head>
    <body>
    	<div class="header">
        	<a href="<?php echo $url_home; ?>"><img src="<?php echo $design; ?>/images/logo.png" alt="Members Area" /></a>
	    </div>
        <div class="content">
This is the list of members:
<style>
table,td,th
{
 padding:10px;
 border-collapse:collapse;
 font-family:Georgia, "Times New Roman", Times, serif;
 border:solid #ddd 2px;
}
</style>
</head>
<body>
<table align="center" border="1" width="100%">
<tr>
    	<th>Username</th>
    	<th>Email</th>
		<th>Department</th>
		
    </tr>
<?php
//We get the IDs, usernames and emails of users
$req = mysql_query("SELECT u.* , d.* FROM users u,department d WHERE u.did=d.did");
while($dnn = mysql_fetch_array($req))
{
?>
	<tr>
    	
    	<td class="left"><a href="profile.php?id=<?php echo $dnn['id']; ?>"><?php echo htmlentities($dnn['username'], ENT_QUOTES, 'UTF-8'); ?></a></td>
    	<td class="left"><?php echo htmlentities($dnn['email'], ENT_QUOTES, 'UTF-8'); ?></td>
		<td><p><?php echo $dnn['department']; ?></p></td>
    </tr>
<?php
}
?>
</table>
		</div>
		<div class="foot"><a href="<?php echo $url_home; ?>">Home</a> - <a href="http://www.cebilingual.com/">Website of Dr Mills</a></div>
	</body>
</html>