<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>Quản Lý Nhà Hàng</title>
	<link href="../css/style.css" rel="stylesheet" type="text/css" /> 
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" /> 
</head>
<body class="bod">
<div class="all">
<div class="header"></div>
<div class="wrapper">
	    <nav class="menu">
	        <ul class="clearfix">
	            <li>
	            	<a href="admin.php">Trang Chủ</a>
	            </li>
	            <li>
	                <a href="#">Quản Lý Sinh Viên</a>
	            </li>
	            <li>
	                <a href="#">Quản Lý Phòng</a>
	                <ul class="sub-menu">
	                    <li><a href="#">Quản Lý Phòng</a></li>
	                    <li><a href="#">Quản Lý Công Tơ Điện</a></li>
	                    <li><a href="#">Quản Lý Công Tơ Nước</a></li>
	                </ul>
	            </li>
	            <li>
	            	<a href="#">Quản Lý Chi Phí</a>
	            </li>
	            <li>
	            	<a href="#">Thống Kê - Báo cáo</a>
	            </li>
	            <li>
	            	<a href="#">Liên Hệ</a>
	            </li>
	        </ul>
	    </nav>
	</div>
<div class="cach"></div>

<div class="noidung">
	<div>
		<div class="le"></div>
		<div class="chinh">
		<div>
			<form class="form" action="themctn.php?id={ctn.id}" method="POST">
				<div class="form-group">
					<label>Mã Công Tơ Nước</label>
				</div>
				<div class="form-group">
					<input class="form-control" type="text" name="mactn" placeholder="Nhập mã công tơ nước..." value="{ctd.mactd}"/>
				</div>
				<div class="form-group">
					<label>Số Cũ</label>
				</div>
				<div class="form-group">
					<input class="form-control" type="text" name="socu" placeholder="Nhập số cũ..." value="{ctd.socu}"/>
				</div>
				<div class="form-group">
					<button class="btn btn-primary" type="submit" name="submit" value="Gửi">Gửi</button>
				</div>
			</form>
		</div>
		</div>
		<div class="le"></div>
</div>
</div>
</body>
</html>
<!-- END:main -->