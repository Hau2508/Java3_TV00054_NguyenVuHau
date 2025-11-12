<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a>Đây là bài 3</a> 
<br>
<a>Dùng phép tính Nhân</a>
<br>
<form action = "bai3" method = "post">
		<a>a</a>
		<input  name = "a">
		<a>b</a>
		<input name = "b">
		<button type="submit" name="cong" value="*">Tính</button>
		<br>
		<a>kết quả bằng = </a>
		<b>${ketqua}</b>
	</form>
</body>
</html>