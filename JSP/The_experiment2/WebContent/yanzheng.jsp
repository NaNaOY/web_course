<%@ page language="java" pageEncoding="GB2312"%>
<html>
  <head>   <title>��¼��֤ҳ��</title> </head>  
  <body> 
        <% request.setCharacterEncoding("GB2312"); %>
        <jsp:useBean id="ubean" class="com.javaBean.User"/>
        <jsp:setProperty name="ubean" property="*"/> 
   
    	<% 
    		if(ubean.yanzheng_user(ubean.getName(),ubean.getPasswd())) { 
    	%>
              <%=ubean.getName() %> :��ϲ��ע��ɹ�,<td><a href="main.jsp"><font size="4">����˴�</font></a></td>������վ��ҳ!<br> 
        <%  } 
            else {
        %> 
            <%=ubean.getName() %>:fail!<br>
        <% 
        	} 
        %>
  </body>
</html>