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
				<table width="800px" border="1" cellspacing="0">
					<tr>
						<td>商品id</td>
						<td>商品名</td>
						<td>商品数量</td>
						<td>价格</td>
						<td>描述</td>
						<td>图片</td>
						<c:if test="${auth==1}">	<td>加入展示</td></c:if>
					    <td>设计展示图片</td>
						<td>修改</td>
						<td>删除</td>
					</tr>
					<c:if test="${showgoods!=null}">
						<c:forEach var="good" items="${showgoods}">
							<tr>
								<td>${good.id}</td>
								<td>${good.name}</td>
								<td>${good.number}</td>
								<td>${good.price}</td>
								<td>${good.describe}</td>
								<td><img src="http://localhost:8080/${good.img}"
									width="50px" height="50px" /></td>
								<c:if test="${auth==1}">	<td><input type="button" value="加入展示" 
									name="${good.id}" onclick="window.location.href='${pageContext.request.contextPath}/shelf/displaygood.form?id=${good.id}'"></td></c:if>
								
								 <td><input type="button" value="进入设计" id="${good.id}"
									name="${good.id}" onclick="window.location.href='${pageContext.request.contextPath}/good/moddisplayimg.do?id=${good.id}'"></td>
								<td><input type="button" value="修改" id="${good.id}"
									name="${good.id}" onclick="window.location.href='${pageContext.request.contextPath}/good/modgood.do?id=${good.id}'"></td>
								<td><input type="button" value="删除" name="${good.id}" onclick="if(confirm('确定删除?')){window.location.href='${pageContext.request.contextPath}/good/delgood.do?id=${good.id}'} else{ return false;}" ></td>
							</tr>

						</c:forEach>
					</c:if>

				</table>




			</div>

		</div>
				<br/><br/>
		<center>
			<input type="button" value="上一页" id="beforepage"> &nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp<input type="button" value="下一页"
				id="nextpage">
		</center>


	</div>



</body>
</html>



<script src="${pageContext.request.contextPath}/JS/jquery.js"></script>

<script type="text/javascript">
	$(function() {
		var page = 1;
        var allpage=100;
		$("#beforepage")
				.live(
						'click',
						function() {
							if (page == 1) {
								var msg = "已到第一页";
								alert(msg);

								return false;
							} else {
								page = page - 1;
								url = "<%=request.getContextPath()%>"
								+"/good/showgoodsjsonbypage.do?page=" + page;
								var args = {
									"time" : new Date()
								};
								$
										.getJSON(
												url,
												args,
												function(data) {
													var tablecontext = "";

													tablecontext += "<div id='admintable' style='margin-left: 100px; float: left;' ><br><table  id='goodtable' width='800px' border='1' cellspacing='0' >  <tr> <td>商品id</td><td>商品名</td><td>商品数量</td><td>价格</td><td>描述</td><td>图片</td>";
													if(<%= session.getAttribute("auth")%>==1){tablecontext += "<td>加入展示</td>";}
														tablecontext += "  <td>设计展示图片</td><td>修改</td><td>删除</td></tr> ";
													for (var i = 0; i < data.length; i++) {
														tablecontext += "<tr> <td>"
																+ data[i].id
																+ "</td><td>"
																+ data[i].name
																+ "</td><td>"
																+ data[i].number
																+ "</td><td>"
																+ data[i].price
																+ "</td><td>"
																+ data[i].describe
																+ "</td><td>"
																+ "<img src='http://localhost:8080/${good.img}"+data[i].img+"' width='50px' height='50px' /></td>";
																if(<%= session.getAttribute("auth")%>==1)
																{
																	tablecontext +="<td>"
																+"<input type='button' value='加入展示' name='"+data[i].id+"'"+' onclick="'+'window.location.href='+"'http://localhost:8080/ssm/shelf/displaygood.form?id="+data[i].id+"'"+'">'
																+"</td>";
																}
																tablecontext +=" <td><input type='button' value='进入设计' id='"+data[i].id+"' name='"+data[i].id+"'"+' onclick="'+'window.location.href='+"'http://localhost:8080/ssm/good/moddisplayimg.do?id="+data[i].id+"'"+'">'+"</td>";
																tablecontext +="<td><input type='button' name='"+data[i].id+"' value='修改' ></td><td><input type='button' name='"+data[i].id+"' value='删除' ></td>  </tr>";

												
													}
													tablecontext += "</table></div >";
             
													$("#context").empty();
													$("#context").append(
															tablecontext);

												});

							}

						});

		$("#nextpage")
				.live(
						'click',
						function() {
							page = page + 1;


								var url= "<%=request.getContextPath()%>"
								+"/good/showgoodsjsonbypage.do?page=" + page;
								var args = {
									"time" : new Date()
								};
								$
								.getJSON(
										url,
										args,
										function(data) {
											if(data.length==0)
												{
												var msg = "已到最后一页";
												alert(msg);
												page=page-1;
												return false;
												}
											
											var tablecontext = "";

											tablecontext += "<div id='admintable' style='margin-left: 100px; float: left;' ><br><table  id='goodtable' width='800px' border='1' cellspacing='0' >  <tr> <td>商品id</td><td>商品名</td><td>商品数量</td><td>价格</td><td>描述</td><td>图片</td>";
											if(<%= session.getAttribute("auth")%>==1){tablecontext += "<td>加入展示</td>";}
												tablecontext += " <td>设计展示图片</td><td>修改</td><td>删除</td></tr> ";
											for (var i = 0; i < data.length; i++) {
												tablecontext += "<tr> <td>"
													+ data[i].id
													+ "</td><td>"
													+ data[i].name
													+ "</td><td>"
													+ data[i].number
													+ "</td><td>"
													+ data[i].price
													+ "</td><td>"
													+ data[i].describe
													+ "</td><td>"
													+ "<img src='http://localhost:8080/${good.img}"+data[i].img+"' width='50px' height='50px' /></td>";
													if(<%= session.getAttribute("auth")%>==1)
													{
														tablecontext +="<td>"
													+"<input type='button' value='加入展示' name='"+data[i].id+"'"+' onclick="'+'window.location.href='+"'http://localhost:8080/ssm/shelf/displaygood.form?id="+data[i].id+"'"+'">'
													+"</td>";
													}
													tablecontext +=" <td><input type='button' value='进入设计' id='"+data[i].id+"' name='"+data[i].id+"'"+' onclick="'+'window.location.href='+"'http://localhost:8080/ssm/good/moddisplayimg.do?id="+data[i].id+"'"+'">'+"</td>";
													tablecontext +="<td><input type='button' name='"+data[i].id+"' value='修改' ></td><td><input type='button' name='"+data[i].id+"' value='删除' ></td>  </tr>";

									
										}
										tablecontext += "</table></div >";

											$("#context").empty();
											$("#context").append(
													tablecontext);

										});

					
								return false;

						

						});

	})
</script>

