/**
 * 
 */
/**
 * @author 孓彦
 *
 */
package com.javaBean;

import java.sql.*;
public class ConnectDbase {
	private String driverName = "com.mysql.jdbc.Driver";   //
	private String userName = "root";       //
	private String userPwd = "123456";     //
	private String dbName = "user";        //database name
	
	public String getDriverName() 
	{
		return driverName;
	}
	
	public void setDriverName(String driverName)
	{
		this.driverName = driverName;
	}
	
	public String getUserName() 
	{
		return userName;
	}
	
	public void setUserName(String userName) 
	{
		this.userName = userName;	
	}
	
	public String getUserPwd() 
	{
		return userPwd;
	}
	public void setUserPwd(String userPwd) 
	{
		this.userPwd = userPwd;	
	}
	
	public String getDbName() 
	{	
		return dbName;
	}
	
	public void setDbName(String dbName) 
	{
		this.dbName = dbName;
	} 
    
	//ʵ�����ݿ����ӵķ���
    
	public Connection getConnect() throws SQLException,ClassNotFoundException { 
        String url1="jdbc:mysql://localhost:3306/"+dbName;
        String url2 ="?user="+userName+"&password="+userPwd;   
        String url3="&useUnicode=true&characterEncoding=GB2312";
        String url =url1+url2+url3;
        //��������
        Class.forName(driverName);   
        //��ȡ���ݵ�����
        return DriverManager.getConnection(url);  
   }
}
