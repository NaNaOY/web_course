<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head><title>书籍商品页面</title></head>
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
		response.setHeader("Refresh","1;URL=buy_book.jsp");
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
		    if (request.getParameter("c1") != null){ 
		      	session.setAttribute("s1", request.getParameter("c1"));
		        session.setAttribute("s1 value", request.getParameter("c1 value"));}
		    if (request.getParameter("c2") != null) {
		      	session.setAttribute("s2", request.getParameter("c2"));
		   		session.setAttribute("s2 value", request.getParameter("c2 value"));}
	        if (request.getParameter("c3") != null){
				session.setAttribute("s3", request.getParameter("c3"));
	            session.setAttribute("s3 value", request.getParameter("c3 value"));}
		%>
		书籍降价销售，一律十块:<br>
		<form method="post" action="buy_book.jsp">
			<p> 
			   <input type="checkbox" name="c1" value="JSP程序设计">JSP程序设计&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			   <input type="text" name="c1 value" value="">  请您输入购买jsp程序设计这本书的数量
			   <br>
			   
			   <input type="checkbox" name="c2" value="计算机网络"> 计算机网络&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			   <input type="text" name="c2 value" value="">  请您输入购买计算机网络这本书的数量
			   <br>
			   
			   <input type="checkbox" name="c3" value="HTML程序设计">HTML程序设计 &nbsp;
			   <input type="text" name="c3 value" value="">  请您输入购买HTML程序设计这本书的数量
			   <br>
			</p>
			<p> 
			   <input type="submit" value="提交" name="B1">
			   <a href="buy_ball.jsp">挑选球类</a> &nbsp; 
			   <a href="show.jsp">查看购物车</a>
			</p>
		</form>
		
		
	</font>
	</body>
</html>
