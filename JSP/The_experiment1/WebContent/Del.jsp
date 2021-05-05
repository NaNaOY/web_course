<%--该文件用于删除数据库中学生的信息--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%
		//与List.jsp同理
		final String usrName = "root";
		final String usrPassword = "123456";
		final String url = "jdbc:mysql://localhost:3306/university?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, usrName, usrPassword);
		Statement stmt = conn.createStatement();
		String id=request.getParameter("id");
		//与Query.jsp同理
		int rs = stmt.executeUpdate("delete from student where id="+id);
		response.sendRedirect("List.jsp");
	%>
</body>
</html>