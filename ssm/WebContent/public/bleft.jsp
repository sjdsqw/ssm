<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style=" clear:both;width: 20%; height:100%; float:left;">
		<div style="margin-top: 60px; width: 80%; margin-left: 20px; line-height: 50px;">
		<c:if test="${auth==1}">
		<a  href="${pageContext.request.contextPath}/admin/showadminsbypage.do?page=1"   id="showadmin" >显示管理员信息</a><br>
		<a  href="${pageContext.request.contextPath}/showadmin/insertadmin.jsp"   id="uploadadmin" >添加管理员</a><br>
				<a href="${pageContext.request.contextPath}/shelf/showshelf.do?" id="design"  >货架设计</a><br>
				<a href="${pageContext.request.contextPath}/lbt/showlbt.do?" id="design"  >轮播图图片设计</a><br>
		</c:if>
	      <a href="${pageContext.request.contextPath}/showgood/insertgood.jsp">上传商品</a><br>
		<a href="${pageContext.request.contextPath}/good/showgoodsbypage.do?page=1" id="showbook"  >查看商品</a><br>
		<a href="${pageContext.request.contextPath}/order/showorder.do?page=1" id="showorder"  >查看订单</a><br>
		
		<a href="${pageContext.request.contextPath}/endlogin.do" >退出 </a>

		
	    </div>
	</div>
</body>
</html>