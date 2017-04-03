<?php
session_start();
include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/admin/qlgoimon.tpl');
$dbhost = "localhost";
$dbname = "qlnh";
$dbuser = "root";
$dbpass = "";
if(isset($_POST['submit']))
{
	$idba=$_POST['idba'];
	$_SESSION["name"] = $idba;
	$con = mysql_connect($dbhost,$dbuser,$dbpass);
	if($con!=null)
	{
		$db = mysql_select_db($dbname);
		if($db!=null)
		{
			mysql_set_charset('utf8');
			$result = mysql_query("SELECT SANPHAM.ID, SANPHAM.TENSP, SANPHAM.DV, MONGOI.SL FROM SANPHAM, MONGOI, PHIEUGOIMON WHERE (PHIEUGOIMON.ID = MONGOI.IDPGM) AND (MONGOI.IDSP = SANPHAM.ID) AND (PHIEUGOIMON.IDBA = ".$_SESSION["name"].")");
			$stt = 1;
			while ($row = mysql_fetch_array($result)) {
				$row['stt'] = $stt;

				$xtpl->assign('sanpham',$row);
				$xtpl->parse('main.list_sanpham');

				$stt++;
			}
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>