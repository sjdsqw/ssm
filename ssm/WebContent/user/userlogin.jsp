<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width: 95%;float: left; margin-left: 2.5%; background-color: black; height: 100px;">用户登录</div>
<div style="float:left;width: 95%; height: 300px;background-image:url(http://localhost:8080/ssm/img/nike.png);margin-left: 2.5%">
  
   <div style="float: left;width:38%; margin-left: 60%; margin-top: 100px; " >
   <c:if test="${errormessage!=null}">
${errormessage}
</c:if>
<form action="${pageContext.request.contextPath}/user/userlogin.form" method="post" enctype="multipart/form-data" >


   用户名  <br>
   <input type="text" name="id" width="10" />  <br>
    密码 <br>
      <input type="text" name="password" width="10" />  <br>
      <br>
    <input type="submit" value="提交">  <input type="reset" value="重置" />  




</form>
<a href="http://localhost:8080/ssm/user/createnewuser.jsp">注册新用户</a>
</div>
</div>

<div style="width: 95%;float:left; margin-left:2.5%; height: 100px; background-color: black;">

</div>

</body>
</html>