<?php
$id = $_GET['id']; echo $idsanpham;
$dbhost = "localhost";
$dbname = "ql_ktx";
$dbuser = "root";
$dbpass = "";
$con = mysql_connect($dbhost,$dbuser,$dbpass);
if($con!=null)
{
	$db = mysql_select_db($dbname);
	if($db!=null)
	{
		mysql_set_charset('utf8');
		mysql_query("DELETE FROM phong WHERE id = ".$id);
		header("Location: qlphong.php");
	}
}
?>