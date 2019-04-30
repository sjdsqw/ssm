<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@include file="/public/btop.jsp" %>
<div style="width: 100%;  border: 1px solid red;  " >
	<%@include file="/public/bleft.jsp" %>
	<div style="width: 79%; border: 1px solid green;float:left;" id="context">
	<br>
         <form action="${pageContext.request.contextPath}/shelf/insertshelf.form" method="post" enctype="multipart/form-data" >    
                    添加货架：
                    货架名：<input type="text" name="name" /> 优先级：<input type="text" name="ord" /> 图片<input type="file" name="shelfimage" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" />  <input type="submit" onclick="if(confirm('确定添加?')){return true;} else{ return false;}">
         
         </form>
         
         
         <c:forEach items="${shelfs}" var="shelf" >
                                           货架名：${shelf.name}  优先级：${shelf.ord} 货架图：<img src="http://localhost:8080/${shelf.img}"
									width="30px" height="30px" /> <input type="button" value="修改此货架" onclick="window.location.href='${pageContext.request.contextPath}/shelf/modshelf.do?id=${shelf.id}'" ><input type="button" value="删除此货架" onclick="if(confirm('确定删除?')){window.location.href='${pageContext.request.contextPath}/shelf/removeshelf.form?id=${shelf.id}'} else{ return false;}" >
             <table  width="800px" border="1" cellspacing="0">
             <c:forEach items="${shelf.goods}" var="good" >
            	
            	<tr>
								<td>${good.id}</td>
								<td>${good.name}</td>
								<td>${good.number}</td>
								<td>${good.price}</td>
								<td>${good.describe}</td>
								<td><img src="http://localhost:8080/${good.img}"
									width="50px" height="50px" /></td>
								<td><input type="button" value="修改" id="${good.id}"
									name="${good.id}" onclick="window.location.href='${pageContext.request.contextPath}/good/modgood.do?id=${good.id}'"></td>
								<td><input type="button" value="移出货架" name="${good.id}" onclick="if(confirm('确定移除?')){window.location.href='${pageContext.request.contextPath}/shelf/removegoodfromshelf.form?gid=${good.id}&sid=${shelf.id}'} else{ return false;}" ></td>
							</tr>

             
             </c:forEach>
             </table>
         <br/>
         </c:forEach>
     
	</div>



</div>



</body>
</html>

