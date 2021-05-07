<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新学生信息</title>
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
		<input type="hidden" name="action" value="findByNO">
		<input type="hidden" name="type" value="1">
		<table class="table table-bordered table-hover definewidth m10">
		    <tr>
		        <td width="10%" class="tableleft">学号</td>
		        <td><input type="text" name="no"/></td>
		    </tr>
		    <tr>
		        <td class="tableleft">操作</td>
		        <td>
		            <button type="submit" class="btn btn-primary" type="button">查询</button>
		        </td>
		    </tr>
		</table>
	</form>
	
	<form action="<%=request.getContextPath()%>/StudentServlet" method="post">
		<input type="hidden" name="action" value="update">
		<table class="table table-bordered table-hover definewidth m10">
		    <tr>
		        <td width="10%" class="tableleft">学号</td>
		        <td><input type="text" name="no" value="${requestScope.student.getId()}"/></td>
		    </tr>
		    <tr>
		        <td class="tableleft">姓名</td>
		        <td><input type="text" name="name" value="${requestScope.student.getName()}"/></td>
		    </tr>
		    <tr>
		        <td class="tableleft">性别</td>
		        <td><input type="text" name="sex" value="${requestScope.student.getSex()}"/></td>
		    </tr>
		    <tr>
		        <td class="tableleft">出生日期</td>
		        <td><input type="text" name="birthday" value="${requestScope.student.getBirthday()}"/>输入格式为xxxx-xx-xx</td>
		    </tr>
		    <tr>
		        <td class="tableleft">年龄</td>
		        <td><input type="text" name="age" value="${requestScope.student.getAge()}"/></td>
		    </tr>       
		    <tr>
		        <td class="tableleft">体重</td>
		        <td><input type="text" name="weight" value="${requestScope.student.getWeight()}"/></td>
		    </tr>
		    <tr>
		        <td class="tableleft">身高</td>
		        <td><input type="text" name="height" value="${requestScope.student.getHeight()}"/></td>
		    </tr>
		    <tr>
		        <td class="tableleft">操作</td>
		        <td>
		            <button type="submit" class="btn btn-primary" type="button">保存修改</button>
		            <span style="color:red">${requestScope.updateMsg}</span>
		        </td>
		    </tr>
		</table>
	</form>
</div>

</body>
</html>