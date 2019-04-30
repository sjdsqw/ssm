<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 




</head>
<body>
<div id="top">
<%@ include file="top.jsp"  %>
</div>
<div id="main">
<%@ include file="mainpart/part1.jsp" %>
<div style="background-color:#F0F3EF;width: 100%;height:25px ; font-size: 3px;color: #757575; " >
  <a href="http://localhost:8080/ssm/user/main.jsp">首页</a> > <a href="http://localhost:8080/ssm/search/searchbyname.do?name=${name}">全部结果</a> > ${name }
</div>

<div style="width: 100%;height:50px; " >
<div style="margin-top: 20px; font-size: 20px;">
<form action="http://localhost:8080/ssm/search/searchbyname.do" id="searform" >
<input type="hidden" value="${name}"  name="name"/>
<c:forEach items="${describes}" var="describe" >
<input type="hidden" value="${describe}"  name="dess" />
</c:forEach>
<input type="hidden" value="" id="des" name="des"  />
分类： <a href="http://localhost:8080/ssm/search/searchbyname.do?name=${name}">全部</a> <c:forEach  items="${describes}"  var="des" ><a href="javascript:void(0);" id="${des}" onclick="var des= document.getElementById('des'); des.value='${des}'; var form=document.getElementById('searform');form.submit();return false;"  > ${des} </a> </c:forEach>
</form>
</div>
</div>



<div style="width: 95%" >
 
         
             <c:forEach items="${goods}" var="good" >
           
             
            	 <div style="float:left;margin-left:10px;margin-top:10px;width:230px;height:350px;border:1px solid #CCCCCC;">
						<div style="margin-left:6px;margin-top:3px;width:220px;height:220px;" name="${good.describe}" >
							<a href="http://localhost:8080/ssm/good/intogoodDetailed.do?id=${good.id }" >	<img src="http://localhost:8080/${good.img}"
									width="220px" height="220px" /></a>
						</div>
						<div style="margin-left:6px;margin-top:3px;width:220px;height:20px;">
							<span style="color:#222222;font-size: 13px;">剩余数量：${good.number}</span>
						</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             bvvvvvv                                                                                                                                                                                                                                                                                                                         
						<hr style="margin-top:5px;">
						<div style="margin-left:6px;margin-top:3px;width:220px;height:90px;">
							<div style="overflow:hidden; height: 45px;"><p style="color:#222222;font-size:16px;margin-top:6px;"><b>${good.name}</b></p></div>
							<p style="color:#666666;font-size:12px;margin-top:6px;">${good.describe}</p>
							<p style="color:#666666;font-size:12px;margin-top:6px;">￥  ${good.price}</p>
						</div>
			
     </div>
         </c:forEach>















<div id="bottom">
<%@ include file="Bottom.jsp" %>
</div>

 <input type="hidden" value="${goods}" id="goods"/>
  
</body>
</html>










<script src="js/jquery.js"></script>
<script type="text/javascript">


</script>



