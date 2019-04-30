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
	<div style="width: 79%; height:650px; border: 1px solid green;float:left;" id="context">
	<br>
               <div id='adddiv' style='margin-left:100px; margin-top:50px; font-size:30px;' >	
               <font   style=' font-size: 40px;'>请输入所要添加商品信息</font><br>

               <form action="${pageContext.request.contextPath}/good/uploadgood.do" method="post" enctype="multipart/form-data" >
               <table height="80%">
                 <tr> <td>商品名字</td><td><input type="text" name="goodname" /></td></tr>
                 <tr> <td>商品数量</td><td><input type="text" name="goodnumber" /></td></tr>
                 <tr> <td>商品价格</td><td><input type="text" name="goodprice" /></td></tr>
                 <tr> <td>商品描述</td><td><input type="text" name="gooddescribe" /></td></tr>
                <tr> <td>商品图片</td><td><input type="file" name="goodimage" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" /></td></tr> 
                <tr><td><input type="submit" value="提交" onClick="return confirm('确定提交?');"></td><td><input type="reset" value="重置" /></td></tr>
               </table>
                      
                       </form>
                       </div>

	</div>



</div>



</body>
</html>