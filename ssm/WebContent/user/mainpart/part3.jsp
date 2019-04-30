<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div name="main"  width=90%; style="float: left;">

    <c:forEach   items="${shelfs}" var="shelf" varStatus="sta"  >
           <c:if test="${!empty shelf.goods}">
           
               <div style="width:95%;height: 40px;margin-left: 2.5%;float: left;"></div>
          <div style="width:95%;height: 100px;margin-left: 2.5%;float: left;">
          <img src="http://localhost:8080/${shelf.img}" width="100%" height="100%" />
          </div>
          
           
           
          <div style="float:left;width:200px;height:40px;margin-top:17px;margin-left:20px; width: 100%">
						<h2 style="color:#4F514F;">${shelf.name} <span style="color:#999999;">${shelf.id} </span></h2>
					</div>
          <div style="width:95% ;float:left; margin-left: 2.5% ">
         
          
             <c:forEach items="${shelf.goods}" var="good" >
            	<div style="float:left;margin-left:10px;margin-top:10px;width:230px;height:350px;border:1px solid #CCCCCC;">
						<div style="margin-left:6px;margin-top:3px;width:220px;height:220px;">
							<a href="http://localhost:8080/ssm/good/intogoodDetailed.do?id=${good.id }" ><img src="http://localhost:8080/${good.img}"
									width="220px" height="220px" /></a>
						</div>
						<div style="margin-left:6px;margin-top:3px;width:220px;height:20px;">
							<span style="color:#222222;font-size: 13px;">剩余数量：${good.number}</span>
						</div>
						<hr style="margin-top:5px;">
						<div style="margin-left:6px;margin-top:3px;width:220px;height:90px;">
							<div style="overflow:hidden; height: 45px;"><p style="color:#222222;font-size:16px;margin-top:6px;"><b>${good.name}</b></p></div>
							<p style="color:#666666;font-size:12px;margin-top:6px;">${good.describe}</p>
							<p style="color:#666666;font-size:12px;margin-top:6px;">￥  ${good.price}</p>
						</div>
					</div>

             
             </c:forEach>
          </div>
       
          
          
         </c:if>
         
         
         
         </c:forEach>
         


</div>
</body>
</html>