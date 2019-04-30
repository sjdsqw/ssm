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
	<div style="width: 100%; height: 650px; border: 1px solid red;">
			<%@include file="/public/bleft.jsp" %>
		<div style="width: 79%; border: 1px solid green; float: left;"
			id="context">
			<br>
			<div style="margin-left: 100px; float: left;">
				<table width="800px" border="1" cellspacing="0">
					<tr>
						<td>用户名</td>
						<td>密码</td>
						<td>权限</td>
						<td>修改</td>
						<td>删除</td>
					
					</tr>
					<c:if test="${showadmins!=null}">
						<c:forEach var="admin" items="${showadmins}">
							<tr>
								<td>${admin.id}</td>
								<td>${admin.password}</td>
								<td>${admin.auth}</td>
								
								
								<td><input type="button" value="修改" id="${admin.id}"
									name="${admin.id}" onclick="window.location.href='${pageContext.request.contextPath}/admin/modadmin.do?id=${admin.id}'"></td>
								<td><input type="button" value="删除" name="${admin.id}" onclick="if(confirm('确定删除?')){window.location.href='${pageContext.request.contextPath}/admin/deladmin.do?id=${admin.id}'} else{ return false;}"></td>
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
								+"/admin/showadminsjsonbypage.do?page=" + page;
								var args = {
									"time" : new Date()
								};
								$
										.getJSON(
												url,
												args,
												function(data) {
													var tablecontext = "";

													tablecontext += "<div style='margin-left: 100px; float: left;'  ><br><table  id='admintable' width='800px' border='1' cellspacing='0' >  <tr> <td>用户名 </td><td>密码</td><td>权限 </td><td>修改</td><td>删除</td></tr> ";
													for (var i = 0; i < data.length; i++) {
														tablecontext += "<tr> <td>"
																+ data[i].id
																+ "</td><td>"
																+ data[i].password
																+ "</td><td>"
																+ data[i].auth
																+ "</td><td><input type='button' name='"+data[i].id+"' value='修改' ></td><td><input type='button' name='"+data[i].id+"' value='删除' ></td>  </tr>";

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
								+"/admin/showadminsjsonbypage.do?page=" + page;
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

											tablecontext += "<div style='margin-left: 100px; float: left;'  ><br><table  id='admintable' width='800px' border='1' cellspacing='0' >  <tr> <td>用户名 </td><td>密码</td><td>权限 </td><td>修改</td><td>删除</td></tr> ";
											for (var i = 0; i < data.length; i++) {
												tablecontext += "<tr> <td>"
														+ data[i].id
														+ "</td><td>"
														+ data[i].password
														+ "</td><td>"
														+ data[i].auth
														+ "</td><td><input type='button' name='"+data[i].id+"' value='修改' ></td><td><input type='button' name='"+data[i].id+"' value='删除' ></td>  </tr>";

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



