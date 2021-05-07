<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<div align="center">
<table border="1">
	<thead>
		<tr>
			<th>id</th>
			<th>name</th>
			<th>sex</th>
			<th>department</th>
			<th>address</th>
			<th>birthday</th>
			<th>occupation</th>
			<th>email</th>
			<th>course1</th>
			<th>course2</th>
		</tr>
	</thead>
	<% 
			String id,name,sex,department,address,birthday,occupation,email,couse1,couse2;
    		
    		Connection con;
    		Statement sql; 
    		ResultSet rs;
			//连接数据库操作
     	 	Class.forName("com.mysql.jdbc.Driver");
         	String dbName ="user";                      //数据库名
      		String url1="jdbc:mysql://localhost/" + dbName;
      		String url2="?user=root&password=123456"; 
      		String url3="&useUnicode=true&characterEncoding=GB2312";
      		String url =url1+url2+url3;
      		con = DriverManager.getConnection(url); 
         	sql=con.createStatement();
         	rs=sql.executeQuery("SELECT * FROM teacher");

       		while(rs.next())
       		{ 
       		 out.print("<TR>");
             id=rs.getString(1); 
             out.print("<TD >"+id+"</TD>");
             
             name=rs.getString(2); 
             out.print("<TD >"+name+"</TD>");
             
             sex=rs.getString(3); 
             out.print("<TD >"+sex+"</TD>"); 
             
             department=rs.getString(4); 
             out.print("<TD >"+department+"</TD>");
             
             address=rs.getString(5); 
             out.print("<TD >"+address+"</TD>");  
             
             birthday=rs.getString(6); 
             out.print("<TD >"+birthday+"</TD>");
             
             occupation=rs.getString(7); 
             out.print("<TD >"+occupation+"</TD>");
             
             email=rs.getString(8); 
             out.print("<TD >"+email+"</TD>");
             
             couse1=rs.getString(9); 
             out.print("<TD >"+couse1+"</TD>");
             
             couse2=rs.getString(10); 
             out.print("<TD >"+couse2+"</TD>");
        	 out.print("</TR>");
        	 
            }
        con.close();
 %>
</table>

 </div>
</body>
</html>