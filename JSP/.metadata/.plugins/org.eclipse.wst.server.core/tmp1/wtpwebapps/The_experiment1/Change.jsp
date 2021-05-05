<%--该文件用于修改数据库中学生的信息--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>变更学生信息</title>
<script type="text/javascript">
	function modification() {
		document.getElementById("change_table").submit();
		return true;
	}
	function clean() {
		document.getElementById('name_1').value = "";
		document.getElementById('age_1').value = "";
		document.getElementById('native_2').value = "";
		document.getElementById('dept_1').value = "";
		document.getElementById('sex_1').checked=false;
		document.getElementById('sex_2').checked=false;
	}
</script>
</head>
<body>
	<%--该变量用于动态选择单选按钮--%>
	<%!String str_male;
	String str_female;%>
	<div align="center">
		<font size="5">修改纪录</font>
	</div>
	<%--动态单选按钮实现--%>
	<%
		request.setCharacterEncoding("utf-8");
		if (request.getParameter("sex").equals("男")) {
			str_male = "checked";
			str_female = "";
		} else {
			str_male = "";
			str_female = "checked";
		}
	%>
	<form action="Change_Query.jsp" method="post" id="change_table">
		<table width="30%" border="1" align="center">
			<tr>
				<th>学号</th>
				<!-- 设置该字段为只读 -->
				<td align="center"><input name="id" type="text" readonly="readonly" value='<%=request.getParameter("id")%>' id="id_1"></td>
			</tr>
			<tr>
				<th>姓名</th>
				<td align="center"><input type="text" name="name" value='<%=request.getParameter("name")%>' id="name_1"></td>
			</tr>
			<tr>
				<th>性别</th>
				<!-- 此处动态选择单选框 -->
				<td align="center">
				男<input type="radio" name="sex" id="sex_1" value="男" <%=str_male%>>&nbsp;&nbsp; 
					女<input type="radio" name="sex" id="sex_2" value="女" <%=str_female%>>
				</td>
			</tr>
			<tr>
				<th>年龄</th>
				<td align="center"><input type="text" name="age" value='<%=request.getParameter("age")%>' id="age_1"></td>
			</tr>
			<tr>
				<th>籍贯</th>
				<td align="center"><input type="text" name="native_1" value='<%=request.getParameter("native_1")%>' id="native_2"></td>
			</tr>
			<tr>
				<th>院系</th>
				<td align="center"><input type="text" name="dept" value='<%=request.getParameter("dept")%>' id="dept_1"></td>
			</tr>
			<tr>
				<!-- 此处需要合并单元格 -->
				<td align="center" colspan="2"><input type="button" value="提交" onclick="modification()">&nbsp; <input type="button" value="清空" onclick="clean()"></td>
			</tr>
		</table>
	</form>
	<div align="center">
		<a href="List.jsp">返回</a>
	</div>
</body>
</html>