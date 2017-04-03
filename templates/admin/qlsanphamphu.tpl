<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>Quản Lý Nhà Hàng</title>
	   <meta name="viewport" content="width=device-width" />
	<link href="../css/style.css" rel="stylesheet" type="text/css" /> 
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" /> 
	<link rel="stylesheet" href="../css/dialog.css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/dialog.js"></script>
</head>
<body class="bod">
<div class="all">
<div class="header">

</div>
	<div class="wrapper">
	    <nav class="menu">
	        <ul class="clearfix">
	            <li>
	            	<a href="admin.php">Trang Chủ</a>
	            </li>
	            <li>
	                <a href="#">Quản Lý Sản Phẩm</a>
	                <ul class="sub-menu">
	                    <li><a href="qlmonan.php">Quản Lý Món Ăn</a></li>
	                    <li><a href="qldouong.php">Quản Lý Đồ Uống</a></li>
	                    <li><a href="qlsanphamphu.php">Quản Lý Sản Phẩm Phụ</a></li>
	                </ul>
	            </li>
	            <li>
	                <a href="#">Quản Lý Bàn Ăn</a>
	                <ul class="sub-menu">
	                    <li><a href="#">Quản Lý Bàn</a></li>
	                    <li><a href="#">Quản Lý Gọi Món</a></li>
	                </ul>
	            </li>
	            <li>
	            	<a href="#">Quản Lý Hóa Đơn</a>
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
		<div></div>
		<form action="qlsanpham.php" method="POST" class="form">
		<div class="form-group">
			<input class="form-group" type="text" name="timkiem" placeholder="nhập vào tên cần tìm"/>
			<button type="submit" name="submit" class="btn btn-primary">Tìm</button>
		</div>
		</form>
			<table class="table table-bordered ">
						<thead>
							<tr>
								<th>Tên Sản Phẩm Phụ</th>
								<th>Đơn Vị</th>
								<th>Số Lượng Còn Lại</th>
								<th>Đơn Giá</th>
								<th>Chức Năng</th>
							</tr>
						</thead>
					<!-- BEGIN: list_sanpham -->
						<tbody>
							<tr>
								<td>{sanpham.TENSP}</td>
								<td>{sanpham.DV}</td>
								<td>{sanpham.SLCL}</td>
								<td>{sanpham.DONGIA}</td>
								<td>
									<a href="themsanpham.php?idsanpham={sanpham.ID}" title="Sửa thông tin" class="btn btn-warning">
										<span class="glyphicon glyphicon-edit"></span>
									</a>
									<a href="xoasanpham.php?idsanpham={sanpham.ID}&manhom={sanpham.MANSP}" title="Xóa sản phẩm" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove"></span>
									</a>
								</td>
							</tr>
						</tbody>
					<!-- END: list_sanpham -->
					
					</table>
					<div>
						<button class="btn btn-info" id="nut"><a href="themsanpham.php">Thêm Sản Phẩm Phụ Mới</a></button>
					</div>
		</div>
		<div class="le"></div>
	</div>
</div>
</div>
</body>
</html>
<!-- END:main -->