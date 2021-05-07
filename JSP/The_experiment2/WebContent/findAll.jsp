<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询所有学生</title>
<link rel="stylesheet" type="text/css" href="Style/bootstrap.css" />
</head>
<body>

<div id="list" style="float:left;position:relative;left:-80px;margin-left:80px;" >
	<button type="button" class="btn btn-success" onClick="window.location.href='create.jsp'">添加学生记录</button>
	<form action="<%=request.getContextPath()%>/StudentServlet" method="post">
		<input type="hidden" name="action" value="findAll">
		<br/>
	    <button type="submit" class="btn btn-primary">查询所有学生</button><br/><br/>
	</form>
	<button type="button" class="btn btn-primary" onClick="window.location.href='findByNO.jsp'">查询指定学生</button><br/><br/>
	<button type="submit" class="btn btn-primary" onClick="window.location.href='update.jsp'">更新指定学生</button><br/><br/>
	<button type="button" class="btn btn-danger" onClick="window.location.href='deleteByNO.jsp'">删除指定学生</button>
</div>

<div id="student" style="float:left;width:1000px;position:relative;left:-80px">
	<table class="table table-bordered table-hover definewidth m10" >
	    <thead>
		    <tr>
		        <th>学号</th>
		        <th>姓名</th>
		        <th>性别</th>
		        <th>出生日期</th>
		        <th>年龄</th>
		        <th>体重</th>
		        <th>身高</th>
		    </tr>
	    </thead>
	     <% 
	    	List<Student> students = new ArrayList<Student>();
	    	students = (List<Student>)request.getAttribute("students");
	    	for(int i = 0;i < students.size();i++){
	    %>
	    		<tr>
		    		<td><%=students.get(i).getId() %></td>
		    		<td><%=students.get(i).getName()%></td>
		    		<td><%=students.get(i).getSex()%></td>
		    		<td><%=students.get(i).getBirthday()%></td>
		    		<td><%=students.get(i).getAge()%></td>
		    		<td><%=students.get(i).getWeight()%></td>
		    		<td><%=students.get(i).getHeight()%></td>
	    		</tr>
	    <%		
	    	}
	    %>
	    <!-- 
	    <c:forEach items="${requestScope.students}" var="student" >
	    	<tr>
	    		<td>${student.getId()}</td>
	    		<td>${student.getName()}</td>
	    		<td>${student.getSex()}</td>
	    		<td>${student.getBirthday()}</td>
	    		<td>${student.getAge()}</td>
	    		<td>${student.getWeight()}</td>
	    		<td>${student.getHeight()}</td>
	    	</tr>
	    </c:forEach>
	     -->
	</table>
</div>
</body>
</html>