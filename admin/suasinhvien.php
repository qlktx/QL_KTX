<?php
include_once '../includes/xtemplate.class.php';
$xtpl=new xtemplate('../templates/admin/suasinhvien.tpl');
$id=isset($_GET['masv'])?$_GET['masv']:0;
if(isset($_POST['submit']))
{
	$id= $_POST['id'];
	$masv = $_POST['masv'];
	$tensv= $_POST['tensv'];
	$ngaysinh = $_POST['ngaysinh'];
	$gioitinh = $_POST['gioitinh'];
	$diachi= $_POST['diachi'];
	$conn=mysql_connect('localhost','root','');
	if(!empty($conn))
	{
		$db=mysql_select_db('ql_ktx');
		if(!empty($db))
		{
			if($id>0)
			{
				$sql=("UPDATE sinhvien SET id='".$id."',masv='".$masv."',tensv='".$tensv."',ngaysinh='".$ngaysinh."',gioitinh='".$gioitinh."',diachi='".$diachi."' WHERE (id='".$id."')");
			}
			else
			{
				$sql=("INSERT INTO sinhvien(id,masv,tensv,ngaysinh,gioitinh,diachi) VALUES('".$id."','".$masv."','".$tensv."','".$ngaysinh."','".$gioitinh."','".$diachi."')");
			}
			mysql_query($sql);
			if(mysql_error())
			{
				$error='loi';
			}
			header("Location:admin/kitucxa.php");

		}
	}
}
else{
	if (!empty($id))  {
		$conn=mysql_connect('localhost','root','');
		if(!empty($conn)) {
			$db=mysql_select_db('ql_ktx');
			if(!empty($db)) {
				$sql=("SELECT * FROM sinhvien WHERE id= '".$masv."')");
				$result=mysql_query($sql);
				$row= mysql_fetch_array($result);
				$xtpl->assign('sinhvien', $row);
					
					
			}
		}
	}
}
$xtpl ->parse('main');
$xtpl ->out('main');
?>