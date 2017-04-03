<?php

include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/admin/themsanpham.tpl');
$dbhost = "localhost";
$dbname = "qlnh";
$dbuser = "root";
$dbpass = "";
$idsanpham = isset($_GET['idsanpham'])? $_GET['idsanpham']:0;
if(isset($_POST['submit']))
{
	$tensanpham = $_POST['tensanpham'];
	$tennhomsanpham = $_POST['tennsp'];
	$donvi = $_POST['donvitinh'];
	$slcl = $_POST['slcl'];
	$dongia = $_POST['dongia'];
	$con = mysql_connect($dbhost,$dbuser,$dbpass);
	if($con!=null)
	{
		$db = mysql_select_db($dbname);
		if($db!=null)
		{
			$result = mysql_query("SELECT max(ID)+1 as ID FROM SANPHAM");
			$row=mysql_fetch_array($result, MYSQL_ASSOC);
			$ID = isset($row['ID']) ? $row['ID'] : 1;
			$result = mysql_query("SELECT MANSP FROM NHOMSANPHAM WHERE ID =".$tennhomsanpham);
			$row1=mysql_fetch_array($result, MYSQL_ASSOC);
			$mansp = $row1['MANSP'];
			mysql_set_charset('utf8');
			if($idsanpham == 0)
			{
				$result = mysql_query("INSERT INTO SANPHAM (MASP, IDNSP, TENSP, DV, SLCL, DONGIA) VALUES ('".$mansp.$ID."', ".$tennhomsanpham.", '".$tensanpham."', '".$donvi."', ".$slcl.", ".$dongia.")");
				echo $mansp;
				
			}
			else
			{
				$result = mysql_query("UPDATE SANPHAM SET TENSP = '".$tensanpham."',IDNSP = ".$tennhomsanpham." , DV = '".$donvi."', SLCL = ".$slcl.", DONGIA = ".$dongia." WHERE ID = ".$idsanpham);
			}
			if($mansp == 'MA')
				header("Location: qlmonan.php");
			if($mansp == 'DU')
				header("Location: qldouong.php");
			if($mansp == 'PU')
				header("Location: qlsanphamphu.php");
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
			$result = mysql_query("SELECT * FROM SANPHAM WHERE (SANPHAM.ID = '".$idsanpham."')");
			$row = mysql_fetch_array($result);
			$xtpl->assign('sanpham',$row);
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>