<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wabsite bán hàng</title>
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
<br>
<a>Đây là bài 1</a> 
<br>
<a>Dùng phép tính cộng</a>
<br>
<form action = "bai1" method = "post">
		<a>a</a>
		<input  name = "a">
		<a>b</a>
		<input name = "b">
		<button type="submit" name="cong" value="+">Tính</button>
		<br>
		<a>kết quả bằng = </a>
		<b>${ketqua}</b>
	</form>
</body>
</html>