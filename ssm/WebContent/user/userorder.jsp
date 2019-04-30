<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div> 
   <%@ include file="top.jsp" %>
</div>
<div style="float:left;width: 95%; height:30px ;margin-top: 20px; margin-left: 2.5%;">
我的订单 <div style="float: right;"> <a  href="http://localhost:8080/ssm/shelf/intomain.do" >返回首页</a></div>
</div>

<div style="width: 95%; float: left; margin-left: 2.5%; background-color: #999; "  >   
   <c:forEach  items="${orders}" var="order" varStatus="status" >
   <h1>订单${status.index+1}</h1>
  <table>    
      <tr> <td> 下单时间 :</td><td>${order.time}</td></tr>
	      <tr> <td> 订单总额:</td><td>${order.price}元</td></tr>
	      <tr> <td> 所留联系电话:</td><td>${order.tel}</td></tr>
	      <tr> <td> 送达地点:</td><td>${order.local}</td></tr>
	      <tr> <td> 备注:</td><td>${order.lmessage}</td></tr>
	      <tr> <td> 状态:</td><td>${order.status}</td></tr>
	</table>
      <table>
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


</body>
</html>