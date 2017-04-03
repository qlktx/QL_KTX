<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>Quản Lý Nhà Hàng</title>
	   <meta name="viewport" content="width=device-width" />
	<link href="../css/style.css" rel="stylesheet" type="text/css" /> 
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" /> 
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
		<div></div>
			<table class="table table-bordered ">
						<thead>
							<tr>
								<th>Mã Công Tơ Điện</th>
								<th>Số Cũ</th>
								<th>Số Mới</th>
								<th>Chức Năng</th>
							</tr>
						</thead>
					<!-- BEGIN: list_ctd -->
						<tbody>
							<tr>
								<td>{ctd.mactd}</td>
								<td>{ctd.socu}</td>
								<td>{ctd.somoi}</td>
								<td>
									<a href="suactd.php?id={ctd.id}" title="Đặt bàn" class="btn btn-info">
										<span class="glyphicon glyphicon-edit"></span>
									</a>
									<a href="xoactd.php?id={ctd.id}" title="Thanh toán" class="btn btn-success">
										<span class="glyphicon glyphicon-remove"></span>
									</a>
								</td>
							</tr>
						</tbody>
					<!-- END: list_ctd -->
					
					</table>
					<div>
						<button class="btn btn-info" id="nut"><a href="themctd.php">Thêm Bàn</a></button>
					</div>
		</div>
		<div class="le"></div>
	</div>
</div>
</div>
</body>
</html>
<!-- END:main -->