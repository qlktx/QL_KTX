<?php
$idsanpham = $_GET['idsanpham']; echo $idsanpham;
$manhom = $_GET['manhom']; echo $idnhom;
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
		mysql_query("DELETE FROM SANPHAM WHERE ID = ".$idsanpham);
		if($manhom == 'MA')
			header("Location: qlmonan.php");
		if($manhom == 'DU')
			header("Location: qldouong.php");
		else
			header("Location: qlsanphamphu.php");
	}
}
?>