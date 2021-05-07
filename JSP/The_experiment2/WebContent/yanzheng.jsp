<%@ page language="java" pageEncoding="GB2312"%>
<html>
  <head>   <title>登录验证页面</title> </head>  
  <body> 
        <% request.setCharacterEncoding("GB2312"); %>
        <jsp:useBean id="ubean" class="com.javaBean.User"/>
        <jsp:setProperty name="ubean" property="*"/> 
   
    	<% 
    		if(ubean.yanzheng_user(ubean.getName(),ubean.getPasswd())) { 
    	%>
              <%=ubean.getName() %> :恭喜您注册成功,<td><a href="main.jsp"><font size="4">点击此处</font></a></td>进入网站首页!<br> 
        <%  } 
            else {
        %> 
            <%=ubean.getName() %>:fail!<br>
        <% 
        	} 
        %>
  </body>
</html>