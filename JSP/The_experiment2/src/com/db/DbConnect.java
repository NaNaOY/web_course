package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnect {
	
	/**
	 * ������������������ĳ�������SQL Server���ݿ⣩
	 */
	//private static String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";   
	private static String driverName = "com.mysql.jdbc.Driver";
	/**
	 * ���ݿ��û���
	 */
	private static String userName = "root";                    
	
	/**
	 * ����
	 */
	private static String userPwd = "123456";                  
	
	/**
	 * ���ݿ���
	 */
	//private static String dbName = "db_student";            
	private static String dbName = "user";  
	/**
	 * �õ����ݿ������
	 * @return ���ݿ������
	 */
	public static Connection getDBconnection(){
		//String  url1="jdbc:sqlserver://localhost:1433;databaseName="+dbName;
		String url1="jdbc:mysql://localhost:3306/"+dbName;
        String url2 ="?user="+userName+"&password="+userPwd;   
        String url3="&useUnicode=true&characterEncoding=GB2312";
		String  url =url1+url2+url3;
		try{
			// ��������
		    Class.forName(driverName);
		    // �õ�����
		    Connection con=DriverManager.getConnection(url); 
		    return con; 
	    }catch (Exception e) {
			   e.printStackTrace();
		}
		return null;
    } 
	
	/**
	 * �ر����ݿ�
	 * @param con
	 * @param pstm
	 * @param rs
	 */
    public static void closeDB(Connection con,PreparedStatement pstm, ResultSet rs){
 	   try{
 		   // �رս����
 		   if(rs!=null) 
 			   rs.close();
 		   // �ر�pstm����
 		   if(pstm!=null) 
 			   pstm.close();
 		   // �ر�����
		   if(con!=null) 
			   con.close();
	   }catch (SQLException e) {
			e.printStackTrace();
	   }
	}
}
