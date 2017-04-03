<?php

include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/admin/qlcongtonuoc.tpl');
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
		$result = mysql_query("SELECT * FROM congtonuoc");
		$stt = 1;
		while ($row = mysql_fetch_array($result)) {
			$row['stt'] = $stt;

			$xtpl->assign('ctn',$row);
			$xtpl->parse('main.list_ctn');

			$stt++;
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>