<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>


<%@include file="/public/btop.jsp" %>
	<div style="width: 100%; ">
			<%@include file="/public/bleft.jsp" %>
		<div style="width: 79%;  float: left;"
			id="context">
			<br>
			<div style="margin-left: 100px; float: left;">
				   <c:forEach  items="${orders}" var="order" varStatus="status" >
   <h1>订单${order.id}</h1><form action="http://localhost:8080/ssm/order/modorderstatus.form" method="post" enctype="multipart/form-data" > 修改订单状态<input type="hidden" name="orderid" value="${order.id}" >  <input type="text" name="status" value="">   <input type="submit" value="修改" onclick="return confirm('确认修改？')" >    </form>
  <table border="1" cellspacing="0" >    
         <tr><td> 下单用户名 :</td> <td> 下单时间 :</td><td> 订单总额:</td><td> 所留联系电话:</td><td> 送达地点:</td><td> 备注:</td><td> 状态:</td></tr>
	      <tr><td>${order.uid}</td> <td>${order.time}</td><td>${order.price}元</td><td>${order.tel}</td><td>${order.local}</td><td>${order.lmessage}</td> <td>${order.status}</td></tr>
	   
	</table>
	   订单详细信息
      <table border="1" cellspacing="0">
      <c:forEach items="${order.goods }" var="good" >
      <tr>
								<td>商品号</td>
								<td>商品名</td>
							
								<td>商品价格</td>
								<td>商品类别</td>
								<td>图片</td>
								<td>购买数量</td>
								</tr>
								
      
      <tr>
								<td>${good.id}</td>
								<td>${good.name}</td>
								
								<td>${good.price}</td>
								<td>${good.describe}</td>
								<td><img src="http://localhost:8080/${good.img}"
									width="50px" height="50px" /></td>
									<td>${good.shopnumber}</td>
									</tr>
      
      </c:forEach>
     </table>
   </c:forEach>  
                   


			</div>

		</div>
				<br/><br/>
		<center>
			<input type="button" value="上一页" id="beforepage" onclick="beforepage();" > &nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp<input type="button" value="下一页"
				id="nextpage" onclick="nextpage();" >
		</center>


	</div>



</body>
</html>



<script src="${pageContext.request.contextPath}/JS/jquery.js"></script>

<script type="text/javascript">

		var page = <%=request.getAttribute("nowpage")%> ;
		var allpage = <%=request.getAttribute("allpage")%> ;
		
          
          
          function beforepage()
          {
        	  if(page==1)
        		  {
        		  alert("已到第一页");
        		  return false;
        		  }
        	  page=page-1;
        	  window.location.replace("${pageContext.request.contextPath}/order/showorder.do?page="+page);  
        	  
          }
          
          function nextpage()
          {
        	  if(page==allpage)
        		  {
        		  alert("已到最后一页");
        		  return false;
        		  }
        	  
        	  page=page+1;
        	  window.location.replace("${pageContext.request.contextPath}/order/showorder.do?page="+page);   
        	  
        	  
          }
	

	
</script>

