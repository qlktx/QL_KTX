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
			<form class="form" action="themphong.php?id={phong.id}" method="POST">
				<div class="form-group">
					<label>Mã Phòng</label>
				</div>
				<div class="form-group">
					<input class="form-control" type="text" name="maphong" placeholder="Nhập mã phòng..." value="{phong.maphong}"/>
				</div>
				<div class="form-group">
					<label>Giá Phòng</label>
				</div>
				<div class="form-group">
					<input class="form-control" type="text" name="giaphong" placeholder="Nhập giá phòng..." value="{phong.giaphong}"/>
				</div>
				<div class="form-group">
					<label>ID Công Tơ Điện</label>
				</div>
				<div class="dropdown">
					<select name="ctd" values="{phong.id_ctd}" class="dropdown-select" id="ctd"></select>
				</div>
				<div class="form-group">
					<label>ID Công Tơ Nước</label>
				</div>
				<div class="dropdown">
					<select name="ctn" values="{phong.id_ctn}" class="dropdown-select" id="ctn"></select>
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