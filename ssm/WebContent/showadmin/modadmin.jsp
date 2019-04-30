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
               <div id='adddiv' style='margin-left:100px; margin-top:50px; font-size:30px;' >	
               <font   style=' font-size: 40px;'>添加用户信息</font><br>
                  <c:if test="${uploadadminerror!=null}">
                    ${uploadadminerror}
                    </c:if>
               <form action="${pageContext.request.contextPath}/admin/modadmin2.do" method="post"  >
               <table height="80%">
                 <tr> <td>用户名</td><td><input type="text"  value="${admin.id}" name="id" readonly="readonly" /></td></tr>
                 <tr> <td>密码</td><td><input type="text"   name="password1"id="password1" /></td></tr>
                 <tr> <td>确认密码</td><td><input type="text" name="password2" id="password2" /></td></tr>
                  <tr> <td>权限</td><td> <input type="text" value="${admin.auth}"  name="auth" id="auth" /></td></tr>
              
                <tr><td><input type="submit" value="提交" onClick="return validate();"></td><td><input type="reset" value="重置" /></td></tr>
               </table>
                      
                       </form>
                       </div>

	</div>



</div>



</body>
</html>

<script type="text/javascript">
          function validate() {
	
              var pwd1 = document.getElementById("password1").value;
              var pwd2 = document.getElementById("password2").value;
	
              if(pwd1 != pwd2) {
                  alert("两次密码不同，请重新输入");
                   return false;
              } 
            else{
            	if(pwd1=="")
            		{
            		alert("密码不能为空");
            		 return false;
            		}
            	
                return confirm('确定提交?');
           }        
          }
      </script>

