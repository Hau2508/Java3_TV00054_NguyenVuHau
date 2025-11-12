<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${message}</h2> <br>
<b>Your Information</b>
<ul>
<li> Fullname: ${user.fullname} </li>
<li> Gender: ${user.gender} </li>
<li> Country: ${user.country} </li>
</ul>
<hr>
<a href="page.jsp"> <button>Quay lại</button> </a>
</body>
</html>