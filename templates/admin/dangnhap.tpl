<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styled.css">
</head>
<body class="nenanh">
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-4">
			<form action="dangnhap.php" method="post" class="formn">
				<div class="form-group">
					<label class="chu1">USERNAME</label>
					<input type="text" name="username" class="form-control" placeholder="tên đăng nhập">
				</div>
				<div class="form-group">
					<label class="chu1">PASSWORD</label>
					<input type="password" name="password" class="form-control" placeholder="mật khẩu">
				</div>
				<!-- BEGIN:error -->
				<div class="bg-danger">{ERROR}</div>
				<!-- END:error -->
				<div class="form-group">
					<input type="submit" name="submit" class="btn btn-primary" value="đăng nhập">
				</div>
				<div class="form-group">
					<a href="kitucxa.php" title="đăng nhập tài khoảng">ĐĂNG NHẬP TÀI KHOẢNG</a>
				</div>
			</form>
		    <div class="col-md-3"></div>
		</div>
	</div>
</div>
</body>
</html>
<!-- END:main -->