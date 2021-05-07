<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师信息</title>
<link rel="stylesheet" type="text/css" href="Style/bootstrap.css" />
</head>
<body>
		<div align="center">
		<table bgcolor="FFA500" border="1">
   <tr>
     <td><font size="4">教师信息</font></td>
     <td><a href="denglu.jsp"><font size="4">用户登录</font></a></td>
     <td><a href="zhuce.jsp"><font size="4">用户注册</font></a></td>
     <td><a href="changemima.jsp"><font size="4">修改密码</font></a></td>
     <td><a href="changexinxi.jsp"><font size="4">修改个人信息</font></a></td>
   </tr>
   		</table>
   		</div>
  		<br/>
  		
  		
<div id="list" style="float:left;position:relative;left:-80px;margin-left:80px;" >
	<button type="button" class="btn btn-success" onClick="window.location.href='create.jsp'">添加教师记录</button>
	<form action="<%=request.getContextPath()%>/StudentServlet" method="post">
		<input type="hidden" name="action" value="findAll">	<br/>
	   <button type="submit" class="btn btn-primary">查询所有学生</button><br/><br/>
	</form>
	<button type="button" class="btn btn-primary" onClick="window.location.href='findByNO.jsp'">查询指定教师</button><br/><br/>
	<button type="submit" class="btn btn-primary" onClick="window.location.href='update.jsp'">更新指定教师</button><br/><br/>
	<button type="button" class="btn btn-danger" onClick="window.location.href='deleteByNO.jsp'">删除指定教师</button>
</div>
  		
  	
</body>
</html>