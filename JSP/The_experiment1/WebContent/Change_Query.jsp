<%--该文件用于修改数据库中学生的信息--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8");
		final String usrName = "root";
		final String usrPassword = "123456";
		final String url = "jdbc:mysql://localhost:3306/university?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true";
		String id = '"' + new String((request.getParameter("id"))) + '"';
		String name = '"' + new String(request.getParameter("name")) + '"';
		String sex = '"' + new String(request.getParameter("sex")) + '"';
		int age = Integer.parseInt(request.getParameter("age"));
		String native_1 = '"' + new String(request.getParameter("native_1"))+ '"';
		String dept = '"' + new String(request.getParameter("dept")) + '"';
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, usrName, usrPassword);
		Statement stmt = conn.createStatement();
		int rs=stmt.executeUpdate("update student set name="+name+",sex="+sex+",age="+age+",native="+native_1+",dept="+dept+" where id="+id);
		response.sendRedirect("List.jsp");
	%>
</body>
</html>