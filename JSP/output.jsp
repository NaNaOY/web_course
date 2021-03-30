<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>接受参数页面</title>
</head>
<body>
		本行由output.jsp输出<br>
		<%
			request.setCharacterEncoding("UTF-8");
			String str=request.getParameter("userName");
		%>
		<font color="blue" size="12">
		<%
			response.setCharacterEncoding("UTF-8");
			out.print(str);
		%>
		</font>
		你好，欢迎你访问！（本行由output.jsp输出）
</body>
</html>