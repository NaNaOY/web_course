<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注销</title>
</head>
<body>
<%!int i=6;%>
	<%	
	String Login = (String)session.getAttribute("Login");
   
	if(Login==null){
	 Login="1";
	}
    	
        	
	if (!Login.equals("OK")){	
		
		i--;
		out.println("请您先登陆而且填写正确密码，谢谢")	;
	
		out.println("<br>经过"+ i + "秒之后，将自动返回Login.jsp");
		
		if(i>0){
		response.setHeader("Refresh","1;URL=Logout.jsp");
		}
		else{
			response.setHeader("Refresh","0;URL=Login.jsp");
		i=6;
		}
		
	   return;
	}
		
  %>
		
		

<script>
alert("您好您已注销点击确定按钮返回登入界面");
</script>
<%
session.removeAttribute("Login");
response.setHeader("Refresh","0;URL=Login.jsp");

%>
</body>
</html>