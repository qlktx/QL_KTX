<?php
include_once 'xtpl/xtemplate.class.php';
$xtpl=new xtemplate('admin/dangnhap.tpl');
if(isset($_POST['submit']))
{
	$user=$_POST['username'];
	$pass=$_POST['password'];
	$conn=mysql_connect('localhost','root','');
	if(!empty($conn))
	{
		$db=mysql_select_db('ql_ktx');
		if(!empty($db))
		{
			$sql=("SELECT * FROM user WHERE username='".$user."'AND (password='".$pass."')");
			$result = mysql_query($sql);
			if(mysql_num_rows($result)==1)
			{
				setcookie('username',$user,time()+1800);
				header('Location:kitucxa.php');
			}
			else 
	        {
				$error = 'Thông tin đăng nhập không chính xác.';
				$xtpl->assign('ERROR', $error);
				$xtpl->parse('main.error');
		    }
		}
	}
}	
	
$xtpl->parse('main');
$xtpl->out('main');
?>