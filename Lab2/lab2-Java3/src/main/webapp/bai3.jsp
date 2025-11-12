<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form và tích hợp EL</title>
</head>
<body>
<h2>Thông tin người dùng</h2>

<form action="bai3" method="post">
    <div>Fullname:</div>
    <input name="fullname" value="${user.fullname}"><br>
    <div>Gender:</div>
    <input type="radio" name="gender" value="true"${user.gender ? "checked" : ""}> Male<br>
    <input type="radio" name="gender" value="false"${!user.gender ? "checked" : ""}> Female<br>
    <div>Country:</div>
    <select name="country">
        <option value="VN" ${user.country == 'VN' ? "selected" : ""}>Việt Nam</option>
        <option value="US" ${user.country == 'US' ? "selected" : ""}>United States</option>
        <option value="CN" ${user.country == 'CN' ? "selected" : ""}>China</option>
    </select>
    <hr>
    <div style="${user.gender ? 'display:none;' : 'display:block; color:red; font-weight:bold;'}">
        Giới tính hiện tại: false
    </div>
    <button ${editable ? "disabled" : ""}>Create</button>
    <button>Update</button>
    <a>${message}</a>
</form>
<hr>
<a href="page.jsp"> <button>Quay lại</button> </a>

</body>
</html>
