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
               <div  style='margin-left:100px; margin-top:50px; font-size:30px;' >	
               <font   style=' font-size: 40px;'>请输入所要修改货架信息</font><br>
                                                    图片不添加为不改变<img src="http://localhost:8080/${shelf.img}"
									width="50px" height="50px" />
               <form action="${pageContext.request.contextPath}/shelf/uploadshelf.form" method="post" enctype="multipart/form-data" >
               <table height="80%">
                  <tr> <td>货架id</td><td><input type="text" name="id" value="${shelf.id}" readonly="readonly" /></td></tr>
                 <tr> <td>货架名字</td><td><input type="text" name="name" value="${shelf.name}" /></td></tr>
                 <tr> <td>货架优先级</td><td><input type="text" name="ord" value="${shelf.ord}" /></td></tr>
                 
                <tr> <td>货架图片</td><td><input type="file" name="shelfimage"  accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" /></td></tr> 
                <tr><td><input type="submit" value="提交" onClick="return confirm('确定提交?');"></td><td><input type="reset" value="重置" /></td></tr>
               </table>
                      
                       </form>
                       </div>

	</div>



</div>



</body>
</html>