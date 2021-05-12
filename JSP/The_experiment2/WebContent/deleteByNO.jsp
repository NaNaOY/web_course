<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除学生</title>
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
	<form action="<%=request.getContextPath()%>/StudentServlet" method="post">
		<input type="hidden" name="action" value="deleteByNO">
		<table class="table table-bordered table-hover definewidth m10">
		    <tr>
		        <td width="10%" class="tableleft">学号</td>
		        <td><input type="text" name="no"/></td>
		    </tr>
		    <tr>
		        <td class="tableleft">操作</td>
		        <td>
		            <button type="submit" class="btn btn-danger" type="button">删除</button>
		            <span style="color:red">${requestScope.deleteMsg}</span>
		        </td>
		    </tr>
		</table>
	</form>
</div>
</body>
</html>