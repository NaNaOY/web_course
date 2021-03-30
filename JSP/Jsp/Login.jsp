<%@ page contentType="text/html;charset=gb2312" %>

<html>
<head>
  <title>登入界面</title>
</head>
<body>
	<h1>账号是:NiuHongwei 密码是:123</h1>
	
<form action=Login.jsp method="POST" >
	Login Name: <input type="text" name="Name"><br><br>
	Login Password: <input type="text" name="Password" ><br><br>
	<input type="submit" value="Send"><br>
</form>

<%	
	if (request.getParameter("Name") != null && request.getParameter("Password") != null) {		
		String Name = request.getParameter("Name");
		String Password = request.getParameter("Password");
		
		if (Name.equals("NiuHongwei") && Password.equals("123")) {			
			session.setAttribute("Login", "OK");
			response.sendRedirect("buy_ball.jsp");
			
		}
		
		else {			
			out.println("登陆失败，请输入正确名称");		
		}	
	}

%>

</body>
</html>