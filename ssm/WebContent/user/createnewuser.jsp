<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="http://localhost:8080/ssm/user/createnewuser.do" method="post" enctype="multipart/form-data" >
请输入用户信息<br>
用户名: <input type="text"  name="uid" id="id"><br>
密码: <input type="text" name="password" ><br>
确认密码: <input type="text" name="password2" ><br>
个人信息: <br>
姓名: <input type="text" name="name"><br>
电话: <input type="text" name="tel"><br>
住址:  <input type="text" name="local"><br>
<br>
<input type="submit" value="提交" onclick=" confirm('确定提交?')" ><input type="reset" value="重置">


</form>



</body>
</html>