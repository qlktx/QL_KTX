<?php

include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/admin/qlsanphamphu.tpl');
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
		$result = mysql_query("SELECT SANPHAM.ID, SANPHAM.TENSP, SANPHAM.DV, SANPHAM.SLCL, SANPHAM.DONGIA, NHOMSANPHAM.MANSP FROM SANPHAM, NHOMSANPHAM WHERE (NHOMSANPHAM.MANSP = 'PU') AND (SANPHAM.IDNSP = NHOMSANPHAM.ID)");
		$stt = 1;
		while ($row = mysql_fetch_array($result)) {
			$row['stt'] = $stt;

			$xtpl->assign('sanpham',$row);
			$xtpl->parse('main.list_sanpham');

			$stt++;
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>