<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增添学生信息</title>
<script type="text/javascript">
	function checkid() {
		//根据实验要求，学号不可为空，因此当id为空时不提交表单
		var id_check = document.getElementById("id_1").value;
		if (id_check == "") {
			alert("学号不能为空！");
			return false;
		} else{
			document.getElementById("insert_table").submit();
			return true;
		}
	}
	function clean(){
		document.getElementById('id_1').value="";
		document.getElementById('name_1').value="";
		document.getElementById('age_1').value="";
		document.getElementById('native_2').value="";
		document.getElementById('dept_1').value="";
		document.getElementById('sex_1').checked=false;
		document.getElementById('sex_2').checked=false;
	}
</script>
</head>
<body>
	<div align="center">
		<font size="5">添加新纪录</font>
	</div>
	<form action="Query.jsp" method="post" id=insert_table>
		<table width="30%" border="1" align="center">
			<tr>
				<th>学号</th>
				<td align="center"><input type="text" id="id_1" name="id"></td>
				<!-- oninput="value=value.replace(/[^\d]/g,'')"此句不识别oninput,也不识别number -->
			</tr>
			<tr>
				<th>姓名</th>
				<td align="center"><input type="text" name="name" id="name_1"></td>
			</tr>
			<tr>
				<th>性别</th>
				<td align="center">
					男<input type="radio" name="sex" value="男" id="sex_1">&nbsp;&nbsp;
					女<input type="radio" name="sex" value="女" id="sex_2">
				</td>
			</tr>
			<tr>
				<th>年龄</th>
				<td align="center"><input type="text" name="age" id="age_1"></td>
			</tr>
			<tr>
				<th>籍贯</th>
				<td align="center"><input type="text" name="native_1" id="native_2"></td>
			</tr>
			<tr>
				<th>院系</th>
				<td align="center"><input type="text" name="dept" id="dept_1"></td>
			</tr>
			<tr>
				<!-- 此处需要合并单元格 -->
				<td align="center" colspan="2">
				<input type="button" value="提交" onclick="checkid()">&nbsp;
				<input type="button" value="清空" onclick="clean()"></td>
			</tr>
		</table>
	</form>
	<div align="center"><a href="List.jsp">返回</a></div>
</body>
</html>