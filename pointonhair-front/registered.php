<?php
include('config.php');
if(get_magic_quotes_gpc())
	{
		$_POST['username'] = stripslashes($_POST['username']);
		$_POST['password'] = stripslashes($_POST['password']);
		$_POST['passwordverif'] = stripslashes($_POST['passverif']);
		$_POST['email'] = stripslashes($_POST['email']);
		echo $_POST['username'] ;
  		echo $_POST['password'] ;
  		echo $_POST['passwordverif'];
  		echo $_POST['email'];
	}
	//We check if the two passwords are identical
	if($_POST['password']==$_POST['passwordverif'])
	{
		//We check if the password has 6 or more characters
		if(strlen($_POST['password'])>=6)
		{
			//We check if the email form is valid
			if(preg_match('#^(([a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+\.?)*[a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+)@(([a-z0-9-_]+\.?)*[a-z0-9-_]+)\.[a-z]{2,}$#i',$_POST['email']))
			{
				//We protect the variables
				$username = mysql_real_escape_string($_POST['username']);
				$password = mysql_real_escape_string($_POST['password']);
				$email = mysql_real_escape_string($_POST['email']);
				//We check if there is no other user using the same username
				$dn = mysql_num_rows(mysql_query('select id from users where username="'.$username.'"'));
				if($dn==0)
				{
					//We count the number of users to give an ID to this one
					$dn2 = mysql_num_rows(mysql_query('select id from users'));
					$id = $dn2+1;
					//We save the informations to the databse
					if(mysql_query('insert into users(id, username, password, sid, email, did) values ('.$id.', "'.$username.'", "'.$password.'","'.$email.'")'))
					{
						//We dont display the form
						$form = false;
?>
<?php
					}
					else
					{
						//Otherwise, we say that an error occured
						$form = true;
						$message = '注册时发生一个错误.';
					}
				}
				else
				{
					//Otherwise, we say the username is not available
					$form = true;
					$message = '您想要使用的用户名不可用,请选择另一个';
				}
			}
			else
			{
				//Otherwise, we say the email is not valid
				$form = true;
				$message = '您输入的电子邮件是无效的。';
			}
		}
		else
		{
			//Otherwise, we say the password is too short
			$form = true;
			$message = '你的密码必须至少包含6个字符。';
		}
	}
	else
	{
		//Otherwise, we say the passwords are not identical
		$form = true;
		$message = '您输入的密码是不相同的。';
	}
?>