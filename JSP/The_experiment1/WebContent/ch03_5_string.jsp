<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>传参数页面</title>
</head>
<body>
	<h4> 该页面传递一个参数QQ，直线下是接收参数页面的内容 </h4>
	<hr>
	<jsp:include page="ch03_5_output.jsp">	
		<jsp:param name="useName" value="QQ"/>
	</jsp:include>
	
</body>
</html>