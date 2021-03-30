<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
	<title>显示购物车购物信息</title>
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
		response.setHeader("Refresh","1;URL=show.jsp");
		}
		else{
			response.setHeader("Refresh","0;URL=Login.jsp");
		i=6;
		}
		
	   return;
	}
	
  %>
		
		<% 
			request.setCharacterEncoding("UTF-8");
		    if (request.getParameter("c1") != null) 
		      	session.setAttribute("s1", request.getParameter("c1"));
		    if (request.getParameter("c2") != null) 
		      	session.setAttribute("s2", request.getParameter("c2"));
	        if (request.getParameter("c3") != null)
				session.setAttribute("s3", request.getParameter("c3"));
		%>
		
		您选择的结果是：<br>
		<% 
		   request.setCharacterEncoding("UTF-8");
		   String str ="";
		   String str1="";
		   if (session.getAttribute("s1") != null) {
			  str = (String) session.getAttribute("s1");
			  str1 = (String) session.getAttribute("s1 value");
			  out.print(str +" "+str1+  "<br>");
		   }
		   if (session.getAttribute("s2") != null) {
		      str = (String) session.getAttribute("s2");
		      str1 = (String) session.getAttribute("s2 value");
			  out.print(str +" "+str1+  "<br>");
		   }
		   if (session.getAttribute("s3") != null) {
			   str1 = (String) session.getAttribute("s3 value");
			   out.print(str +" "+str1+  "<br>");
		   }
		   if (session.getAttribute("s4") != null) {
			  str = (String) session.getAttribute("s4");
			  str1 = (String) session.getAttribute("s4 value");
			  out.print(str +" "+str1+  "<br>");
		   }
		   if (session.getAttribute("s5") != null) {
			str = (String) session.getAttribute("s5");
			str1 = (String) session.getAttribute("s5 value");
			  out.print(str +" "+str1+  "<br>");
		   }
		   if (session.getAttribute("s6") != null) {
			str = (String) session.getAttribute("s6");
			str1 = (String) session.getAttribute("s5 value");
			  out.print(str +" "+str1+  "<br>");;
		   }
		%>
		<a href="check.jsp"><button >请您结账</button></a>
		
		
</body>
</html>
