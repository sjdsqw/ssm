<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${errormessage!=null}">
${errormessage}
</c:if>
<form action="${pageContext.request.contextPath}/login.do" method="post" enctype="multipart/form-data" >

<table>
 <tr><td>用户名</td><td><input type="text" name="username" /></td></tr>
  <tr><td>密码</td><td><input type="text" name="password" /></td></tr>
  <tr><td><input type="submit" value="提交"></td><td><input type="reset" value="重置" /></td></tr>
</table>



</form>
</body>
</html>