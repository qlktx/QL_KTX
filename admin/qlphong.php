<?php

include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/admin/qlphong.tpl');
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
		$result = mysql_query("SELECT * FROM phong");
		$stt = 1;
		while ($row = mysql_fetch_array($result)) {
			$row['stt'] = $stt;

			$xtpl->assign('ban',$row);
			$xtpl->parse('main.list_phong');

			$stt++;
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>