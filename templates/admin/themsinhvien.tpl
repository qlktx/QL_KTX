<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/styled.css">
</head>
<body class="nen">
<div class="main">
	<div class="he">
		<div class="logo">
			<a href="#"><img src="image/ky-tuc-xa.png"></a>
		</div>
		<div class="menu">
			<ul class="clearfix">
				<li>
					<a href="#">Trang chủ</a>
				</li>
				<li>
					<a href="#">Giới thiệu</a>
				</li>
				<li>
					<a href="#">Thông tin kí túc xá
					<ul class="sub-menu">
						<li><a href="#">Những điều cần biết về ktx</a></li>
						<li><a href="#">Quy chế quản lý ktx</a></li>
						<li><a href="#">Nội quy-quy chế</a></li>
						<li><a href="#">Quy định thủ tục vào ra</a></li>
						<li><a href="#">Bản giá lưu trú</a></li>
						<li><a href="#">Nộp phí qua tài khoảng ngân hàng</a></li>
						<li><a href="#">Thông tin nội bộ ktx</a></li>
					</ul>
					</a>
				</li>
				<li>
					<a href="#">Tin tức
					<ul class="sub-menu">
						<li><a href="#">Thông báo</a></li>
						<li><a href="#">Quyết định</a></li>
						<li><a href="#">Chương trình sự kiện</a></li>
						<li><a href="#">Thông tin sự kiện sắp diện ra</a></li>
						<li><a href="#">Góc chia sẻ</a></li>
					</ul>
					</a>
				</li>
				<li>
					<a href="#">Sinh viên
					<ul class="sub-menu">
						<li><a href="#">Xem chỉ số điện</a></li>
						<li><a href="#">Danh sách sv nộp tiền lưu trú</a></li>
						<li><a href="#">Chương trình sự kiện</a></li>
						<li><a href="#">Thông tin sự kiện sắp diện ra</a></li>
						<li><a href="#">Góc chia sẻ</a></li>
					</ul>
					</a>
				</li>
				<li>
					<a href="#">Đăng kí online</a>
				</li>
			</ul>
    <div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-4">
			<form action="themsinhvien.php?id={sinhvien}" method="post" class="formn">
				<div class="form-group">
					<label>MÃ SINH VIÊN</label>
					<input type="text" name="masv" class="form-control" placeholder="mã sinh viên"/>
				</div>
				<div class="form-group">
					<label>TÊN SINH VIÊN</label>
					<input type="text" name="tensv" class="form-control" placeholder="tên sinh viên" />
				</div>
				<div class="form-group">
					<label>NGÀY SINH</label>
					<input type="date" name="ngaysinh" class="form-control" placeholder="ngày sinh"
					/>
				</div>
				<div class="form-group">
					<label>GIỚI TÍNH</label>
					<input type="text" name="gioitinh" class="form-control" placeholder="giới tính"
					/>
				</div>
				<div class="form-group">
					<label>ĐỊA CHỈ</label>
					<input type="text" name="diachi" class="form-control" placeholder="địa chỉ" />
				</div>
				<div class="form-group">
					<label>THÊM SINH VIÊN</label>
					<input type="submit" name="submit" class="btn btn-success" value="thêm sinh viên" />
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>
<!-- END:main -->