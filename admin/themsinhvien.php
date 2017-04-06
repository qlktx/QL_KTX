<?php
include_once('xtpl/xtemplate.class.php');
$xtpl = new xtemplate('admin/themsinhvien.tpl');
$dbhost = "localhost";
$dbname = "ql_ktx";
$dbuser = "root";
$dbpass = "";
$id = isset($_GET['masv'])? $_GET['masv']:0;
if(isset($_POST['submit']))
{
	$id= $_POST['id'];
	$masv = $_POST['masv'];
	$tensv= $_POST['tensv'];
	$ngaysinh = $_POST['ngaysinh'];
	$gioitinh = $_POST['gioitinh'];
	$diachi= $_POST['diachi'];
	$con = mysql_connect($dbhost,$dbuser,$dbpass);
	if($con!=null)
	{
		$db = mysql_select_db('ql_ktx');
		if($db!=null)
		{
			mysql_set_charset('utf8');
			if($masv> 0)
			{
				$result = mysql_query("INSERT INTO sinhvien (id, masv, tensv, ngaysinh, gioitinh,diachi) VALUES ( '".$id."', '".$masv."', '".$tensv."', '".$ngaysinh."','".$gioitinh."','".$diachi."')");
				header("Location: kitucxa.php");
			}
			else
			{
				$result = mysql_query("UPDATE sinhvien SET id = '".$id."',masv ='".$masv."',tensv = '".$tensv."', ngaysinh = '".$ngaysinh."',gioitinh='".$gioitinh."',diachi='".$diachi."' WHERE id = '".$masv."')");
				header("Location: kitucxa.php");
			}
		}
	}
}
else
{
	$con = mysql_connect($dbhost,$dbuser,$dbpass);
	if($con!=null)
	{
		$db = mysql_select_db('ql_ktx');
		if($db!=null)
		{
			mysql_set_charset('utf8');
			$result = mysql_query("SELECT * FROM sinhvien WHERE(id = '".$id."')");
			$row = mysql_fetch_array($result); 
			$xtpl->assign('sinhvien',$row);
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>