<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>string.jsp的title</title>
</head>
<body>
	<h4> 本行由string.jsp输出</h4><hr>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:include page="output.jsp">
			<jsp:param name="userName" value="赵宁" />
			</jsp:include>
			<br><br>
	<% 
	 out.println("本行由string.jsp输出");
	%>
</body>
</html>