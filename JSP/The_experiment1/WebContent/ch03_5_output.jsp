<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>接受参数页面</title>
</head>
<body>
	接受参数，并显示结果页面。<br>
	<%String str=request.getParameter("userName");%>
	<font color="blue" size="12"><%=str%></font>你好，欢迎你访问！
</body>
</html>