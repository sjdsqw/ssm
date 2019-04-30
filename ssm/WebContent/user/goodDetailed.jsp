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
  <a href="http://localhost:8080/ssm/user/main.jsp">首页</a> > <a href="http://localhost:8080/ssm/search/searchbyname.do?name=${name}">${good.describe }</a> > ${good.name}
</div>

<c:
<div style="width: 95%" >
 <div style="margin-left:6px;margin-top:3px;width:750px;height:530px;float:left"  name="${good.describe}" >
							<img src="http://localhost:8080/${good.img}"
									width="750px" height="530px" />
						</div>
         
        
           <form action="http://localhost:8080/ssm/shopbox/addshopbox.form"  id="addshopbox">
             	<form action="http://localhost:8080/ssm/order/confirmorder.do"  id="goodorder">
            	 <div style="float:left;margin-left:10px;margin-top:10px;width:500px;height:400px;border:1px solid #CCCCCC;">
					
					     	<div style="width: 500px;"><p style="font-size:16px;margin-top:6px;color: #333;font-size: 28px; font-weight: bold; line-height: 38px;"><b>${good.name}</b></p></div>
							<div style="float: left;width: 100%;">
							<input type="hidden" name="goodid" value="${good.id}">
							<span style="color:#222222;font-size: 13px;">剩余数量：${good.number}</span>						                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
						<hr style="margin-top:5px;">
						
						
							<p style="color:#666666;font-size:12px;margin-top:6px;">${good.describe}</p>
							<p style="color:#F25807;font-size:50px;margin-top:6px;">￥  ${good.price}</p>
							   购买数量：<input type="text" name="shopnumber" value="1"><br></div>
						<div style="float:left; margin-top: 50px;"><a href="javascript:document:goodorder.submit();"  style="color:#F25807;font-size:20px;">立即购买</a>  &nbsp&nbsp<a style="color:#F25807;font-size:20px;" href="javascript:document:addshopbox.submit();">加入购物车</a></div>
		             	
     </div>
    </form>
</form>
</div>
 <c:forEach items="${disimgs}" var="disimg" >
<div  style="width: 95%; float:left; margin-left: 2.5%" >


   <img alt="" src="http://localhost:8080/${disimg.displayimg}"  width=100%; height=100%>
      
  
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



