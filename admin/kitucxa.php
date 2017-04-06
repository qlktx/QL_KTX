<?php
include_once '../includes/xtemplate.class.php';
$xtpl=new xtemplate('../templates/admin/kitucxa.tpl');
$conn=mysql_connect('localhost','root','');
	if(!empty($conn))
	{
		$db=mysql_select_db('ql_ktx');
		if(!empty($db))
		{
			$sql="SELECT id,masv,tensv,ngaysinh,gioitinh,diachi FROM sinhvien ";
			mysql_query($sql);
			$result=mysql_query($sql);
			$stt=1;
			while ($row=mysql_fetch_array($result)) 
			{
				$row['stt']= $stt;
				$xtpl->assign('sinhvien',$row);
				$xtpl->parse('main.list_sinhvien');
				$stt ++;
			}
			
		}
	}
$xtpl ->parse('main');
$xtpl ->out('main');
?>