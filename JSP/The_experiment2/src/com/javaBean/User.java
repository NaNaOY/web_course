package com.javaBean;


import java.sql.*;
public class User {
    private String name=null;
    private String passwd=null;
    
    public String getName(){      
    	return name; 
    }
    
    public void setName(String name){    
    	this.name =name;
    }
    
    public String getPasswd(){     
    	return passwd;
    }
    
    public void setPasswd(String passwd){ 
    	this.passwd = passwd;
    }
    
    public User(){}                  //¹¹Ôìº¯Êý
    
    public User(String a,String b){   //
          name=a;
          passwd=b;
    }
    
    public boolean yanzheng_user(String name2,String key2)     //
            throws SQLException, ClassNotFoundException{
      
      boolean f= false;
      
      ConnectDbase cdb=new ConnectDbase();
      Connection conn = cdb.getConnect(); 
      String  sql="select * from user_info  where(uname=? and upassword=?)";
      PreparedStatement pstmt= conn.prepareStatement(sql);
      pstmt.setString(1,name2);
      pstmt.setString(2,key2);    
      ResultSet  rs=pstmt.executeQuery();  
      if(rs.next()) 
    	  f=true;
      else 
    	  f= false;
     if(rs!=null)rs.close();
     if(pstmt!=null)pstmt.close();
     if(conn!=null)conn.close(); 
     return f;
   }
}
