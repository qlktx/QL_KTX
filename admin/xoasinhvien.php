<?php
$id = $_GET['id']; echo $id;
$masv = $_GET['id']; echo $masv;
$dbhost = "localhost";
$dbname = "ql_ktx";
$dbuser = "root";
$dbpass = "";
$con = mysql_connect($dbhost,$dbuser,$dbpass);
if($con!=null)
{
	$db = mysql_select_db('ql_ktx');
	if($db!=null)
	{
		mysql_set_charset('utf8');
		mysql_query("DELETE FROM sinhvien WHERE id= ".$id);
		/*if($manhom == 'MA')
			//header("Location: qlmonan.php");
		if($manhom == 'DU')
			//header("Location: qldouong.php");
		else
			//header("Location: qlsanphamphu.php");*/
	}
}
?>