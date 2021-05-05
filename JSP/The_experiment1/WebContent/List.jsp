<%--该文件用于显示数据库中学生的信息--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息表</title>
</head>
<body>
	<div align="center">
		<font size="5">学籍管理系统</font>
	</div>
	<table width="75%" border="1" align="center">
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>年龄</th>
			<th>籍贯</th>
			<th>院系</th>
			<th>更改</th>
			<th>删除</th>
		</tr>
		<%
			final String usrName = "root";
			final String usrPassword = "123456";
			//使用的mysql为8.0.23，因此url需要加入：1.时区；2.允许客户端从服务器获取公钥；3.关闭SSL。
			final String url = "jdbc:mysql://localhost:3306/university?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true";
			//注册驱动,需要把驱动jar包放入Tomcat的lib中
			Class.forName("com.mysql.cj.jdbc.Driver");
			//DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver()); //第二种注册驱动方式
			//添加物理连接
			Connection conn = DriverManager.getConnection(url, usrName, usrPassword);
			//创建一个statement对象用于传递SQL语句查询
			Statement stmt = conn.createStatement();
			//返回查询数据
			ResultSet rs = stmt.executeQuery("select * from student");
			while (rs.next()) {
		%>
		<tr>
			<td align="center"><%=rs.getString(1)%></td>
			<td align="center"><%=rs.getString(2)%></td>
			<td align="center"><%=rs.getString(3)%></td>
			<td align="center"><%=rs.getInt(4)%></td>
			<td align="center"><%=rs.getString(5)%></td>
			<td align="center"><%=rs.getString(6)%></td>
			<td align="center"><a
				href="Change.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&sex=<%=rs.getString(3)%>&age=<%=rs.getInt(4)%>&native_1=<%=rs.getString(5)%>&dept=<%=rs.getString(6)%>">修改</a></td>
			<td align="center"><a href="Del.jsp?id=<%=rs.getString(1)%>">删除</a></td>
		</tr>
		<%
			}
			//关闭连接（释放资源）
			rs.close();
			stmt.close();
			conn.close();
		%>
	</table>
	<div align="center">
		<a href="Insert.jsp">添加新纪录</a>
	</div>
</body>
</html>