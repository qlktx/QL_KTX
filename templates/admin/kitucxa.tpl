<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styled.css">
</head>
<body>
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
					<a href="themsinhvien.php">Sinh viên
					<ul class="sub-menu">
						<li><a href="#">Xem chỉ số điện</a></li>
						<li><a href="#">Danh sách sv nộp tiền lưu trú</a></li>
						<li><a href="#">xe không lưu hành</a></li>
					</ul>
					</a>
				</li>
				<li>
					<a href="#">Đăng kí online</a>
				</li>
			</ul>
		<div class="left">

		</div>
	    <div class="content">
            <table class="table table-borderd">
				<thead>
					<tr>
					    <th>#</th>
						<th>id</th>
						<th>masv</th>
						<th>tensv</th>
						<th>ngaysinh</th>
						<th>gioitinh</th>
						<th>diachi</th>
					</tr>
				</thead>
				<!-- BEGIN: list_sinhvien-->
					<tbody>
						<tr>
							<td class="text-center">{sinhvien.stt}</td>
							<td>{sinhvien.id}</td>
							<td>{sinhvien.masv}</td>
							<td>{sinhvien.tensv}</td>
							<td>{sinhvien.ngaysinh}</td>
							<td>{sinhvien.gioitinh}</td>
							<td>{sinhvien.diachi}</td>
							<td>
								<a href="suasinhvien.php?id={sinhvien.id}" title="sua" class="btn btn-warning">
									<span class="glyphicon glyphicon-edit"></span>
								</a>
								<a href="xoasinhvien.php?id={sinhvien.id}" title="xoa" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span>
								</a>
							</td>
						</tr>
					</tbody>

				<!-- END: list_sinhvien -->
				
			</table>
			<div class="col-xs-6 col-md-3">
                <a href="#" class="hinh1">
                    <img src="image/12.jpg" alt="...">
                </a>
            </div>
	    </div>
	    <div class="right">
	       	
	    </div>
	    <div class="footer">

	    </div>
		</div>
	</div>
</div>
</body>
</html>
<!-- END:main -->