<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
		
	<head><title>购买球类页面</title>

	</head>
	
	
	<body>
	<font size=3>
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
		response.setHeader("Refresh","1;URL=buy_ball.jsp");
		}
		else{
			response.setHeader("Refresh","0;URL=Login.jsp");
		i=6;
		}
		
	   return;
	}
		
  %>
		
		
		<% request.setCharacterEncoding("UTF-8");
		   if (request.getParameter("b1") != null) {
	          session.setAttribute("s4", request.getParameter("b1"));
		      session.setAttribute("s4 value", request.getParameter("b1 value"));}
		   if (request.getParameter("b2") != null) {
		     session.setAttribute("s5", request.getParameter("b2"));
		     session.setAttribute("s5 value", request.getParameter("b2 value"));}
		   if (request.getParameter("b3") != null) {
		     session.setAttribute("s6", request.getParameter("b3"));
		     session.setAttribute("s6 value", request.getParameter("b3 value"));}
		%>
		各种球大甩卖，一律八块：
		<form method="post" action="buy_ball.jsp">
			<p> 
				<input type="checkbox" name="b1" value="篮球">篮球
				<input type="text" name="b1 value" value="">请您输入篮球的数量
				 	
				<br>
				
			    <input type="checkbox" name="b2" value="足球">足球
			    <input type="text" name="b2 value" value="">请您输入足球的数量
			    <br>
			    
			    <input type="checkbox" name="b3" value="排球">排球
			    <input type="text" name="b3 value" value="">请您输入篮球的数量
			</p>
			<p> 
				<input type="submit" value="提交" name="x1">
			    <a href="buy_book.jsp">挑选图书</a>&nbsp;
			    <a href="show.jsp">查看购物车</a>
			</P>
		</form>
	</font>
	</body>
</html>