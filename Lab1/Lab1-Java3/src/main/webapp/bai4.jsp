<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a>Đây là bài 4</a>
<form action="bai4" method="post">
	<a>Dùng phép tính chia</a>
	<br>
	<a>a</a>
	<input name="a">
	<a>b</a>
	<input name="b" >
	<button type="submit" name ="chia" value="chia">tính</button>
	<br>
	<a>Kết quả bằng = </a>
	<a>${ketqua}</a>
</form>
</body>
</html>