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
<div class="header">
<div>
	<img src="../hinhanh/logo.jpg" height="100px" width="100px">
</div>
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
	                    <li><a href="qlban.php">Quản Lý Bàn</a></li>
	                    <li><a href="qlgoimon.php">Quản Lý Gọi Món</a></li>
	                </ul>
	            </li>
	            <li>
	            	<a href="qlhoadon.php">Quản Lý Hóa Đơn</a>
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
			<div class="sm-col-3">
				<div class="form-group">
					<label>Chọn Bàn</label>
				</div>
				<div class="form-group">
				<form action="qlgoimon.php" method="POST">
				<td>
				<div class="form-group">
					<div class="dropdown">
						<select name="idba" class="dropdown-select" id="idban"></select>
					</div>
				</div>
				</td>
					<div class="form-group">
						<input class="btn btn-info" type="submit" name="submit" value="Load"></input>
					</div>
				</form>
				</div>
			</div>
			<div class="sm-col-9">
				<div class="form-group">
					<label class="form-group">Danh Sách Gọi Món</label>
					<table class="table table-bordered ">
						<thead>
							<tr>
								<th>Tên Món Ăn</th>
								<th>Đơn Vị</th>
								<th>Số Lượng</th>
								<th>Chức Năng</th>
							</tr>
						</thead>
					<!-- BEGIN: list_sanpham -->
						<tbody>
							<tr>
								<td>{sanpham.TENSP}</td>
								<td>{sanpham.DV}</td>
								<td>{sanpham.SL}</td>
								<td>
									<a name="modal" title="Sửa thông tin" class="login-window button btn btn-warning">
										<span class="glyphicon glyphicon-edit"></span>
									</a>
									<a href="xoamongoi.php?idsanpham={sanpham.ID}" title="Xóa món ăn" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove"></span>
									</a>
								</td>
							</tr>
						</tbody>
					<!-- END: list_sanpham -->
					
					</table>
				</div>
				<form action="themmongoi.php" method="POST">
					<table class="table table-bordered ">
						<thead>
							<tr>
								<th>Tên Món Ăn</th>
								<th>Số Lượng</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="dropdown">
										<select name="laysp" class="dropdown-select" id="laytensp"></select>
									</div>
								</td>
								<td>
									<input type="text" class="form-control" name="soluong" placeholder="Số lượng"></input>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="form-group">
							<button class="btn btn-primary" type="submit" name="submit" value="Gửi">Thêm</button>
					</div>
				</form>
			</div>
		</div>
		<div class="le"></div>
	</div>
</div>
</div>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
		$( document ).ready(function() {
			$.ajax({
			  url: 'loadban.php',
			}).done(function(data) {
				console.log(data);
			  $('#idban').html(data);
			  
			});
		});
</script>
<script type="text/javascript">
		$( document ).ready(function() {
			$.ajax({
			  url: 'loadsanpham.php',
			}).done(function(data) {
				console.log(data);
			  $('#laytensp').html(data);
			  
			});
		});
</script>
</body>
</html>
<!-- END:main -->