<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div > <%@ include file="top.jsp" %></div>
<div style="width: 95%; float: left; border:1px solid black; height: 100px;margin-left: 2.5%" >
 <img src="http://localhost:8080/ssm/img/nike.png" />
</div>
<form action="http://localhost:8080/ssm/order/submitorder.form" method="post" enctype="multipart/form-data" >
<div style="width: 95%;float:left;margin-left: 2.5%; border:1px solid black; ">
       <div style=""><p>填写并核对订单信息</p></div>
      
        <div style="width: 100%; float: left; border: 1px solid black; " >
                                      收货人信息<br>
           <table>                 
           <tr> <td>购买用户名：</td> <td>${user.id}</td></tr>
         <tr> <td> 收货地址 :</td><td>  <input  type="text" name="local" value="${usermessage.local}" /></td></tr>
         <tr> <td> 联系方式:</td><td> <input  type="text" name="tel" value="${usermessage.tel}"  /></td></tr>
        </table>
        </div>
        <div  style="width: 100%; float: left; border: 1px solid black; height: 80px;">
                             支付方式<br>
          <input name="paystyle" type="radio" value="1" />货到付款
        </div>
        <div  style="width: 100%; float: left; border: 1px solid black; ">
                               购物车信息<br>
          <table style="width: 80%;"> 
               <tr> <td>商品图片</td><td>商品名</td><td>购买数量</td></tr>
       <c:forEach items="${shopgoods}"  var="shopgood" varStatus="status" >
         <tr> <td><img src="http://localhost:8080/${shopgood.img}" width="50px" height="50px" ></td><td>${shopgood.name}</td><td> ${shopgood.shopnumber}</td> </tr>    
         <input type="hidden" name="goods[${status.index}].id" value="${shopgood.id}" />
	     <input type="hidden" name="goods[${status.index}].name" value="${shopgood.name}" />
          <input type="hidden" name="goods[${status.index}].number" value="${shopgood.number}" />
        <input type="hidden" name="goods[${status.index}].price" value="${shopgood.price}" />
          <input type="hidden" name="goods[${status.index}].describe" value="${shopgood.describe}" />
        <input type="hidden" name="goods[${status.index}].img" value="${shopgood.img}" />
        <input type="hidden" name="goods[${status.index}].shopnumber" value="${shopgood.shopnumber}" />
        </c:forEach>
        </table>
        
        </div>
        <div style="width: 100%; float: left; border: 1px solid black; height:100px;">
                              留言：<textarea rows="5" cols="50" name="lmessage"></textarea>
        </div>
          <div style="width: 100%; float: left; border: 1px solid black; ">
                       <input type="submit" value="提交订单" onclick="return confirm('确认提交订单，确定后即将发货');">
        </div>
     
</div>
</form>
</body>
</html>