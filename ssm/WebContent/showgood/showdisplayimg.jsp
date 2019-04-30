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
               <div  style='margin-left:100px; margin-top:50px; font-size:30px;' >	
               <font   style=' font-size: 40px;'>请输入所要添加商品信息</font><br>
                             添加新的展示图片                    
               <form action="${pageContext.request.contextPath}/good/insertdisplayimg.form" method="post" enctype="multipart/form-data" >
                <input type="hidden" value="${id}" name="gid"  /> 
                <input type="file" name="disimage" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" />
                <input type="submit" value="添加" onClick="return confirm('确定添加?');">
               
               </form>
               <br>
                             修改原图片(图片不选择为不改变)
                              <hr/>
                          
               <form action="${pageContext.request.contextPath}/good/moddisplayimg1.form" method="post" enctype="multipart/form-data" >
                 <input type="hidden" value="${id}" name="gid"  /> 
                 <c:forEach items="${disimgs}" var="disimg" >  
                  <div>       
                 <input type="hidden" value="${disimg.id}" name="id"  /> 
                 <input type="button" name="delete"  value="删除此图片" onclick="if(confirm('确定删除?')){window.location.href='${pageContext.request.contextPath}/good/deldisplayimg.form?id=${disimg.id}&gid=${id}'} else{ return false;}"/>
                   </div>
                   <center><table border="1px solid black">
                  <tr><td>展示图片</td><td><img src="http://localhost:8080/${disimg.displayimg}" width="550px" height="130px" /></td></tr>
                  <tr><td>修改为：</td><td><input type="file" name="disimage" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" /></td></tr> 
                 </table></center>
                 <br>
                </c:forEach>
            
                 <center>  <input type="submit" value="提交" onClick="return confirm('确定提交?');">  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <input type="reset" value="重置" /></center>
              
             </form>
                      
                      
                       </div>

	</div>



</div>



</body>
</html>