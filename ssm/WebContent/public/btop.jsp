<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
a{
   text-decoration:none;
   color: black;
}
a:hover {
	color:red;
}
</style>

</head>
<body>
<div style="width: 100%; height: 60px; background-color:blue; " >
<div style="float: left; margin-left: 40px;"><font size="15" style="font-family:华文黑体; ">商城后台</font></div>
  <div style="float:right; margin-top: 30px; margin-right: 20px;">${admin.id} 欢迎您的登录       <a href="${pageContext.request.contextPath}/shelf/intomain.do" >进入商店主页</a>  </div>
</div>
</body>
</html>