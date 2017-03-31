<!DOCTYPE html>
<?php
include('config.php');
error_reporting(E_ALL^E_NOTICE^E_WARNING);
//登陆
      if(isset($_POST["submit"]) && $_POST["submit"] == "登陆"){  
        $username = $_POST["username"];  
        $psw = $_POST["password"];
        if($username == "" || $psw == "")  
          {  
              echo "<script>alert('请输入用户名或密码！');</script>";  
          }
        else{
          $sql="select * from users where username ='$username' && password='$psw'";
          $result=mysql_query($sql)or die(mysql_error());
          $num = mysql_num_rows($result);
          if($num){  
              $row = mysql_fetch_array($result);  //将数据以索引方式储存在数组中
              $_SESSION['username']=$username;
              $_SESSION['id']=$row[0];
            }  
            else{
              echo "<script>alert('用户名或密码不正确！');</script>";
            }
        }
      }  
//登出
      if(isset($_POST["submit"]) && $_POST["submit"] == "登出"){

        unset($_SESSION['id']);
        unset($_SESSION['username']);
        echo '<script>alert("注销成功");window.open("index.php","_self:")</script>';
        exit;
      }
//注册
if(isset($_POST["submit"]) && $_POST["submit"] == "注册"){  
    if(isset($_POST['username'], $_POST['password'], $_POST['passverif'],$_POST['email']) and $_POST['username']!=''){
      if(get_magic_quotes_gpc()){
        $_POST['username'] = stripslashes($_POST['username']);
        $_POST['password'] = stripslashes($_POST['password']);
        $_POST['passverif'] = stripslashes($_POST['passverif']);
        $_POST['email'] = stripslashes($_POST['email']);
      }
      if($_POST['password']==$_POST['passverif']){
        if(strlen($_POST['password'])>=6){
          if(preg_match('#^(([a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+\.?)*[a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+)@(([a-z0-9-_]+\.?)*[a-z0-9-_]+)\.[a-z]{2,}$#i',$_POST['email'])){
            $username = mysql_real_escape_string($_POST['username']);
            $password = mysql_real_escape_string($_POST['password']);
            $email = mysql_real_escape_string($_POST['email']);

            $dn = mysql_num_rows(mysql_query('select id from users where username="'.$username.'"'));
            if($dn==0){
              if(mysql_query('insert into users(username,password,email) values ("'.$username.'", "'.$password.'", "'.$email.'")')or die(mysql_error())){
                echo "<script>alert('注册成功')</script>";
              }
              else{
                echo '<script>alert("注册是发生一个错误")</script>';
              }
            }
            else{
              echo '<script>alert("用户名已存在")</script>';
            }
          }
          else{
            echo '<script>alert("电子邮件无效")</script>';
          }
        }
        else{
          echo '<script>alert("密码小于6个字符")</script>';
        }
      }
      else{
        echo '<script>alert("两次密码不相同")</script>';
      }
    }
    else{
      echo '<script>alert("不能为空")</script>'; 
    }
  }
?>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>指尖绘发</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.php">指尖绘发</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">男士发型</a></li>
        <li><a href="#">女士发型</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">发型大全<span class="caret" data-toggle="tab"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="##">直发类发型</a></li>
            <li><a href="##">卷发类发型</a></li>
            <li><a href="##">束发类发型</a></li>
            <li><a href="##">短发类发型</a></li>
          </ul>
        <li><a href="#" data-toggle="modal" data-target="#about">关于我们</a></li>
        <?php
          if($_SESSION['username']){ ?>
            <li class="pull-right"><a href="#" data-toggle="modal" data-target="#information"><?php echo $_SESSION['username'];?></a></li>
          <?php
        }else{ ?>
        <li class="pull-right"><a class="btn btn-default" type="button" href="#" data-target="#registered" data-toggle="modal">注册</a></li>
        <li class="pull-right"><a class="btn btn-default" type="button" href="#" data-target="#login" data-toggle="modal">登陆</a></li>
        <?php } ?>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="user">
  <div class="modal fade" id="login" >
    <div class="modal-dialog" style="width:300px;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title">登陆</h4>
        </div>
        <div class="modal-body">
          <form class="form" role="form" method="post" action="index.php">
            <div class="form-group">
              <label class="sr-only" for="InputUsername">用户名</label>
              <input type="text" name="username" class="form-control" id="InputUsername" placeholder="请输入你的用户名">
            </div>
            <div class="form-group">
              <label class="sr-only" for="InputPassword">密码</label>
              <input type="password" name="password" class="form-control" id="InputPassword" placeholder="请输入你的密码">
            </div>
            <input type="submit" class="btn btn-default" name="submit" value="登陆"></input>
          </form>  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
  <div class="modal fade" id="registered">
    <div class="modal-dialog" style="width:300px;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title">注册</h4>
        </div>
        <div class="modal-body">
            <form class="form" role="form" method="post" action="index.php">
            <div class="form-group">
              <label class="sr-only" for="SetUsername">用户名</label>
              <input type="text" class="form-control" id="SetUsername" name="username" placeholder="设置你的用户名">
            </div>
            <div class="form-group">
              <label class="sr-only" for="SetPassword">密码</label>
              <input type="password" class="form-control" id="SetPassword" name="password" placeholder="请输入你的密码">
            </div>
            <div class="form-group">
              <label class="sr-only" for="checkPassword">密码</label>
              <input type="password" class="form-control" id="checkPassword" name="passverif" placeholder="请再次输入你的密码">
            </div>
            <div class="form-group">
              <label class="sr-only" for="SetEmail">邮箱</label>
              <input type="email" class="form-control" id="SetEmail" name="email" placeholder="请输入你的邮箱">
            </div>
            <input type="submit" name="submit" class="btn btn-default" value="注册"></input>
          </form>  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
</div> 
  <!-- Controls -->
<div class="modal fade" id="about">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">信息</h4>
      </div>
      <div class="modal-body">
        <p>设计+代码： 许谦 <br />指导老师：陆星家老师</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal 关于我们-->
<div class="modal fade" id="information">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">个人中心</h4>
      </div>
      <div class="modal-body">
        <form action="index.php" class="form" role="form" method="post">
          <input class="btn btn-default" type="submit" name="submit" value="登出"></input>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal 个人中心-->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/haircut1.jpg" alt="haircut1">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="images/haircut2.jpg" alt="haircut3">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="images/haircut3.jpg" alt="haircut3">
      <div class="carousel-caption">

      </div>
    </div>
  </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="main">
  <div class="allhair">
    <ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="#allhair" role="tab" data-toggle="tab">发型大全</a></li>
    <li><a href="#man" role="tab" data-toggle="tab">男士发型</a></li>
    <li><a href="#woman" role="tab" data-toggle="tab">女士发型</a></li>
  </ul>

  <!-- Tab panes -->
    <div class="tab-content">
      <div class="tab-pane active " id="allhair">
        <?php
          $sql="select * from hairstyle order by hid desc limit 0,4";
          $result=mysql_query($sql);
          while($row=mysql_fetch_assoc($result)){
        ?>
          <li class="col-xs-6 col-sm-3"><a href="hairstyle.php?id=<?php echo $row['hid']?>" name="bt"><img src="images/hair/<?php echo $row['imgaddress'];?>" class="img-responsive"></a></li>                   
        <?php
          }
        ?>
      </div>
      <div class="tab-pane" id="man">
        <?php
          $sql="select * from hairstyle where hairsex = 0 order by hid desc limit 0,4";
          $result=mysql_query($sql);
          while($row=mysql_fetch_assoc($result)){
        ?>
          <li class="col-xs-6 col-sm-3 "><a href="hairstyle.php?id=<?php echo $row['hid']?>" name="bt"><img src="images/hair/<?php echo $row['imgaddress'];?>" class="img-responsive"></a></li>                   
        <?php
          }
        ?>
      </div>
      <div class="tab-pane" id="woman">
        <?php
          $sql="select * from hairstyle where hairsex = 1 order by hid desc limit 0,4";
          $result=mysql_query($sql);
          while($row=mysql_fetch_assoc($result)){
        ?>
          <li class="col-xs-6 col-sm-3"><a href="hairstyle.php?id=<?php echo $row['hid']?>" name="bt"><img src="images/hair/<?php echo $row['imgaddress'];?>" class="img-responsive"></a></li>                   
        <?php
          }
        ?>
      </div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="news">
    <h1>新闻</h1>
    <ul class="row">
      <?php
        $sql="select mid,newstitle from news order by mid desc limit 0,12";
        $result=mysql_query($sql);
        while($row=mysql_fetch_assoc($result)){
                  ?>
                  <li class="col-xs-6 col-sm-4"><a href="news.php?id=<?php echo $row['mid']?>" name="bt"><?php echo $row['newstitle'];?></a></li>                   
                  <?php
          }
      ?>
    </ul>      
  </div>
</div>
<footer>
  <address>
  <strong>宁波工程学院, Inc.</strong><br>
  理学院<br>
  Some City, State XXXXX<br>
  <abbr title="Phone">联系电话 :</abbr> (123) 456-7890
  </address>
  <address>
  <strong>许谦</strong><br>
  <a href="mailto:milycxu@gmail.com">milycxu@gmail.com</a>
</address>
</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>   
</body>
</html>
