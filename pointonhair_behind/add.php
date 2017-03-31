<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>指尖绘发-后台</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="ewebeditor/ewebeditor.js">

//删除编辑器
function RemoveEditor(){
	if (!EWEBEDITOR.Instances["content1"]){return;}

	EWEBEDITOR.Instances["content1"].Remove();
	EWEBEDITOR.Instances["div1"].Remove();
}

//替换编辑器
function ReplaceEditor(){
	if (EWEBEDITOR.Instances["content1"]){return;}

	EWEBEDITOR.Replace("content1", {style:"coolblue",width:"550",height:"300"} );
	EWEBEDITOR.Replace("div1");
}
</script>
</head>
<?php
include('config.php');
if(isset($_POST['sub']))
{
	$bt=$_POST['newstitle'];
	$zz=$_POST['newsauthor'];
	$sj=$_POST['newsdate'];
	$nr=$_POST['newscontent'];
	$sql="insert into news (newstitle,newsdate,newsauthor,newscontent) values('".$bt."','".$zz."','".$sj."','".$nr."')";
	$result=mysql_query($sql) or die(mysql_error());
}
?>
<body>
<h4>增加新闻</h4>
<form action="" method="post" onsubmit="return check()">
标题:<input type="text" name="newstitle" id="bt" /><br />
作者:<input type="text" name="newsauthor" id="zz" /><br />
时间:<input type="text" name="newsdate" placeholder="0000-00-00 00:00:00" id="sj" /><br />
内容:<textarea name="newscontent">
</textarea><br />
<script type="text/javascript">
	// 您也可以在 window.onload 事件中处理
	// 替换 <textarea id="content1"> 或 <textarea name="content1"> 为编辑器实例
	EWEBEDITOR.Replace("newscontent", {style:"coolblue",width:"550",height:"300"} );
</script>
<input type="reset" value="重置" name="reset" />
<input type="submit" value="提交" name="sub" id="sub"/>
</form>
</body>
</html>
<script type="text/javascript">
//var pattern=/^\d{4}-\d{2}-\d{2} \d{2}:\d{2}$/;
var oBt=document.getElementById('bt');
var oZz=document.getElementById('zz');
var oSj=document.getElementById('sj');
var oSub=document.getElementById('sub');
function check(){
	if(oBt.value=="")
	{
		alert("请输入标题");
		return false;
	}
	else if(oZz.value=="")
	{
		alert("请写明作者");
		return false;
	}
	else return true;
}
</script>

