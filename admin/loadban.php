<?php
include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/admin/loadban.tpl');

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

		//TRam
		$result1 = mysql_query("SELECT ID, SOBAN FROM BANAN WHERE TINHTRANG = 'Full'");
		while ($row1 = mysql_fetch_array($result1)) {
			$xtpl->assign('ban', $row1);
			$xtpl->parse('main.list_ban');
		}
	}
}

$xtpl->parse('main');
$xtpl->out('main');
?>