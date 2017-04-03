<?php

include_once('../includes/xtemplate.class.php');
$id = isset($_GET['id'])? $_GET['id']:0;
if($id>0)
{
	$xtpl = new xtemplate('../templates/admin/themphong.tpl');
}
else
{
	$xtpl = new xtemplate('../templates/admin/themphong2.tpl');
}
$dbhost = "localhost";
$dbname = "ql_ktx";
$dbuser = "root";
$dbpass = "";

if(isset($_POST['submit']))
{
	$con = mysql_connect($dbhost,$dbuser,$dbpass);
	if($con!=null)
	{
		$db = mysql_select_db($dbname);
		if($db!=null)
		{
			mysql_set_charset('utf8');
			if($id == 0)
			{
				$maphong = $_POST['maphong'];
				$giaphong = $_POST['giaphong'];
				$ctd = $_POST['ctd'];
				$ctn = $_POST['ctn'];
				$result = mysql_query("INSERT INTO phong( maphong, snht, giaphong, id_ctd, id_ctn) VALUES ('".$maphong."', 0, ".$giaphong.", ".$id_ctd.", ".$id_ctn.")");
				echo "INSERT INTO phong( maphong, snht, giaphong, id_ctd, id_ctn) VALUES ('".$maphong."', 0, ".$giaphong.", ".$id_ctd.", ".$id_ctn.")";
			}
			else
			{
				$maphong = $_POST['maphong'];
				$giaphong = $_POST['giaphong'];
				$result = mysql_query("UPDATE phong SET maphong = '".$maphong."', giaphong = ".$giaphong." WHERE id = ".$id);
			}
			header("Location: qlphong.php");
		}
	}
}
else
{
	$con = mysql_connect($dbhost,$dbuser,$dbpass);
	if($con!=null)
	{
		$db = mysql_select_db($dbname);
		if($db!=null)
		{
			mysql_set_charset('utf8');
			$result = mysql_query("SELECT * FROM phong WHERE (id = ".$id.")");
			$row = mysql_fetch_array($result);
			$xtpl->assign('phong',$row);
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>