<?php
$idsp = $_GET['idsanpham'];
$dbhost = "localhost";
$dbname = "qlnh";
$dbuser = "root";
$dbpass = "";
$con = mysql_connect($dbhost,$dbuser,$dbpass);
if($con!=null)
{
	$db = mysql_select_db($dbname);
	if($db!=null)
	{
		mysql_set_charset('utf8');
		mysql_query("DELETE FROM MONGOI WHERE IDSP = ".$idsp);
		header("Location: qlmongoi.php");
	}
}
?>