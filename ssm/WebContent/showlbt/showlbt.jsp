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
<div style="width: 100%; height:650px; border: 1px solid red;  " >
	<%@include file="/public/bleft.jsp" %>
	<div style="width: 79%; height:650px; border: 1px solid green;float:left;" id="context">
	<br>
         <form action="${pageContext.request.contextPath}/lbt/insertlbt.form" method="post" enctype="multipart/form-data">    
                    添加图片：     ：<input type="file" name="lbtimg" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" /> 图片跳转地址<input type="text" name="src" >  <input type="submit" onclick="if(confirm('确定添加?')){return true;} else{ return false;}">
         
         </form>
         
         
         <c:forEach items="${lbts}" var="lbt" >
            <input type="button" value="删除此图片" onclick="if(confirm('确定删除?')){window.location.href='${pageContext.request.contextPath}/lbt/removelbt.form?id=${lbt.id}';} else{ return false;}" >
             <table  width="800px" border="1" cellspacing="0">
         	<tr>
							
								<td><img src="http://localhost:8080/${lbt.img}"
									width="50px" height="50px" /></td>
										<td>${lbt.src}</td>
								<td><input type="button" value="修改" 
									name="modimg" onclick="window.location.href='${pageContext.request.contextPath}/lbt/modlbt.do?id=${lbt.id}' ;"></td>
								
							</tr>

             
             
             </table>
         <br/>
         </c:forEach>
         
         
         
         
         
	</div>



</div>



</body>
</html>

