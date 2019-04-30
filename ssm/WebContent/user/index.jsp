<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="top">
<%@ include file="top.jsp"  %>
</div>
<div id="main">
<%@ include file="mainpart/part1.jsp" %>
<%@ include file="mainpart/part2.jsp" %> 
<%@ include file="mainpart/part3.jsp" %>
</div>
<div id="bottom">
<%@ include file="Bottom.jsp" %>
</div>



</body>
</html>