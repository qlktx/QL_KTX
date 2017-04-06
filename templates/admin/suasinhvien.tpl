<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>sua thong tin vé</title>
	<meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/styled.css">
</head>
<body bgcolor="#" background="http://file.vforum.vn/hinh/2014/10/hinh-nen-hd-10.jpg" >
	<div class="container">
	  <div class="row">
	   <div class="col-md-3"></div>
	   <div class="col-md-4">
	    <form action="admin/suasinhvien.php?id={masv.id}" method="post">
	    <div class="anh2">
	         <div class="form-group">
	    	  <input type="text"  class="form-control" name="id" placeholder="id" value="{sinhvien.id}" / >
	    	</div>
	    	<div class="form-group">
	    	  <input type="text"  class="form-control" name="masv" placeholder="mã sinh viên" value="{sinhvien.masv}" / >
	    	</div>
	    	<div class="form-group">
	    		<input type="text" class="form-control" name="tensv" placeholder="tên sinh viên" value="{sinhvien.tensv}" / >
	    	</div>
	    	<div class="form-group">
	    		<input type="date" class="form-control" name="ngaysinh" placeholder="ngày sinh " value="{sinhvien.ngaysinh}" / >
	    	</div>
	    	<div class="form-group">
	    		<input type="text" class="form-control" name="gioitinh" placeholder="giới tính" value="{sinhvien.gioitinh}" / >
	    	</div>
	    	<div class="form-group">
	    		<input type="text" class="form-control" name="diachi" placeholder="địa chỉ" value="{sinhvien.diachi}" / >
	    	</div>
	    	<div class="form-group text-right" >
	    		<input type="submit" class="btn btn-primary" name="submit" value="sửa"/ >
	    	</div>	
	    </form>
	    </div>
	    <div class="col-md-3"></div>
	 </div>
</div>
</body>
</html>
<!-- END:main -->