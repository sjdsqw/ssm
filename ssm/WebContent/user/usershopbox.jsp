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
我的购物车<div style="float: right;"> <a  href="http://localhost:8080/ssm/shelf/intomain.do" >返回首页</a></div>
</div>

<div style="width: 95%; float: left; margin-left: 2.5%; background-color: #999; "  >   
    
   购物清单
    <form action="http://localhost:8080/ssm/order/confirmorderbyshopbox.form" method="post" enctype="multipart/form-data">
     <c:if test="${message!=null }">${message }</c:if>
      <table border="1" >
                 <tr><td>选择购买</td> <td>商品图片</td><td>商品名</td><td>商品价格</td><td>购买数量</td><td>商品剩余数量</td><td>删除</td>  </tr>
    <c:forEach  items="${shopboxs}"  var="shopbox"   >
          
           <tr><td><input type="checkbox" name="shopboxsid" value="${shopbox.id}" /> </td> </td><td><img src="http://localhost:8080/${shopbox.good.img}"
									width="50px" height="50px" /></td> <td>${shopbox.good.name}</td><td>${shopbox.good.price}<td>${shopbox.addnumber}</td><td>${shopbox.good.number}</td><td><a href="http://localhost:8080/ssm/shopbox/delshopbox.form?id=${shopbox.id }"  style="color: black;" onclick="return confirm('确认删除？');"  >删除</a></td>  </tr>
  
    </c:forEach>

           </table> 
           <input type="submit" value="前往确认订单"  >
           
           </form>
</div>


</body>
</html>