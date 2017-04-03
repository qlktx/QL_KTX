<?php

include_once('../includes/xtemplate.class.php');
$id = isset($_GET['id'])? $_GET['id']:0;
if($id>0)
{
	$xtpl = new xtemplate('../templates/admin/themctd.tpl');
}
else
{
	$xtpl = new xtemplate('../templates/admin/suactd.tpl');
}
$dbhost = "localhost";
$dbname = "ql_ktx";
$dbuser = "root";
$dbpass = "";

if(isset($_POST['submit']))
{
	$con = mysql_connect($dbhost,$dbuser,$dbpass);
	if($con!=null)
	{
		$db = mysql_select_db($dbname);
		if($db!=null)
		{
			mysql_set_charset('utf8');
			if($id == 0)
			{
				$mactn = $_POST['mactn'];
				$socu = $_POST['socu'];
				$result = mysql_query("INSERT INTO congtonuoc( mactn, socu) VALUES ('".$mactn."',".$socu.")");
			}
			else
			{
				$socu = $_POST['somoi'];
				$result = mysql_query("UPDATE congtonuoc SET somoi = '".$somoi." WHERE id = ".$id);
			}
			header("Location: qlcongtonuoc.php");
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
			$result = mysql_query("SELECT * FROM congtodien WHERE (id = ".$id.")");
			$row = mysql_fetch_array($result);
			$xtpl->assign('ctd',$row);
		}
	}
}
$xtpl->parse('main');
$xtpl->out('main');
?>