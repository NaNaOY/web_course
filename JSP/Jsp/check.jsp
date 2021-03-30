<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>您的结账界面</title>
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
		response.setHeader("Refresh","1;URL=buy_check.jsp");
		}
		else{
			response.setHeader("Refresh","0;URL=Login.jsp");
		i=6;
		}
		
	   return;
	}
	
  %>
	
	


<h1>您所购买物品的清单</h1>
<h5>以下是您所购买的物品以及价格</h2>

<% 
		   int sum=0;
           request.setCharacterEncoding("UTF-8");
		   String str ="";
		   String str1="";
		   if (session.getAttribute("s1") != null) {
			  str = (String) session.getAttribute("s1");
			  str1 = (String) session.getAttribute("s1 value");
			  out.print(str +"价格为20元"+" "+"您购买的数量为"+str1+  "<br>");
			  sum+=Integer.parseInt(str1)*20;
		   }
		   if (session.getAttribute("s2") != null) {
		      str = (String) session.getAttribute("s2");
		      str1 = (String) session.getAttribute("s2 value");
		      out.print(str +"价格为24元"+" "+"您购买的数量为"+str1+  "<br>");
		      sum+=Integer.parseInt(str1)*24;
		   }
		   if (session.getAttribute("s3") != null) {
			   str = (String) session.getAttribute("s3");
			   str1 = (String) session.getAttribute("s3 value");
			   out.print(str +"价格为19元"+" "+"您购买的数量为"+str1+  "<br>");
			   sum+=Integer.parseInt(str1)*19;
		   }
		   if (session.getAttribute("s4") != null) {
			  str = (String) session.getAttribute("s4");
			  str1 = (String) session.getAttribute("s4 value");
			  out.print(str +"价格为87元"+" "+"您购买的数量为"+str1+  "<br>");
		      sum+=Integer.parseInt(str1)*87;
		   }
		   if (session.getAttribute("s5") != null) {
			str = (String) session.getAttribute("s5");
			str1 = (String) session.getAttribute("s5 value");
			out.print(str +"价格为42元"+" "+"您购买的数量为"+str1+  "<br>");
		      sum+=Integer.parseInt(str1)*42;
		   }
		   if (session.getAttribute("s6") != null) {
			str = (String) session.getAttribute("s6");
			str1 = (String) session.getAttribute("s5 value");
			out.print(str +"价格为99元"+" "+"您购买的数量为"+str1+  "<br>");
		      sum+=Integer.parseInt(str1)*99;
		   }
		  
		   out.print("<br>"+"<br>"+"您总共需要花费:" + sum);
		   
		  
		 
		%>
		<br>
	 <a href="Logout.jsp"><button onclick="Logout()">我要退出登入</button></a> &nbsp; 	
</body>
</html>