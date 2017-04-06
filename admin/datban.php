<?php
$dbhost = "localhost";
$dbname = "qlnh";
$dbuser = "root";
$dbpass = "";
$idba = isset($_GET['id'])?($_GET['id']):0;
$con = mysql_connect($dbhost,$dbuser,$dbpass);
if($con!=null)
{
	$db = mysql_select_db($dbname);
	if($db!=null)
	{
		mysql_set_charset('utf8');
		$result = mysql_query("SELECT TINHTRANG FROM BANAN");
		$row=mysql_fetch_array($result, MYSQL_ASSOC);
		$TT = $row['TINHTRANG'];			echo $TT;
		if(($TT == '')&&($idba > 0)) 
		{
			mysql_query("UPDATE BANAN SET TINHTRANG = 'Full' WHERE ID = ".$idba);
			$result = mysql_query("SELECT max(ID)+1 as ID FROM PHIEUGOIMON");
			$row2=mysql_fetch_array($result, MYSQL_ASSOC);
			$ID = isset($row2['ID']) ? $row2['ID'] : 1;
			mysql_query("INSERT INTO PHIEUGOIMON (MAPGM, IDBA) VALUES ('PGM".$ID."', ".$idba.")");
		}
		if($TT == "Full")
		{
			mysql_query("UPDATE BANAN SET TINHTRANG = ''");

		}
	}
}
header("Location: qlban.php")
?>