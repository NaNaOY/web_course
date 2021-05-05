<%--该文件用于添加数据库中学生的信息--%>
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
	<%
		//此处操作与List.jsp相同，故不重复注释
		final String usrName = "root";
		final String usrPassword = "123456";
		final String url = "jdbc:mysql://localhost:3306/university?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true";
		String id='"'+new String((request.getParameter("id")).getBytes("ISO-8859-1"),"UTF-8")+'"';
		String name='"'+new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8")+'"';
		String sex='"'+new String((request.getParameter("sex")).getBytes("ISO-8859-1"),"UTF-8")+'"';
		int age=Integer.parseInt(request.getParameter("age"));
		String native_1 ='"'+new String((request.getParameter("native_1")).getBytes("ISO-8859-1"),"UTF-8")+'"';
		String dept='"'+new String((request.getParameter("dept")).getBytes("ISO-8859-1"),"UTF-8")+'"';
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, usrName, usrPassword);
		Statement stmt = conn.createStatement();
		int rs = stmt.executeUpdate("insert into student (id,name,sex,age,native,dept)values("+id+","+name+","+sex+","+age+","+native_1+","+dept+")");
		//跳转回List.jsp
		response.sendRedirect("List.jsp");
	%>
</body>
</html>