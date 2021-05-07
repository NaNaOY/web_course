package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.db.DbConnect;
import com.domain.Student;

public class StudentDAO implements IStudentDAO{
	

	protected static final String FIELDS_INSERT ="id,name,sex,birthday,age,weight,height";
	
	protected static String INSERT_SQL="insert into stu_info ("+FIELDS_INSERT+")"+"values (?,?,?,?,?,?,?)";
	
	protected static String SELECT_SQL="select "+FIELDS_INSERT+" from stu_info where id=?";
	
	protected static String UPDATE_SQL="update stu_info set "+"id=?,name=?,sex=?,birthday=?,age=?,weight=?,height=? where id=?";
	
	protected static String DELETE_SQL ="delete from stu_info where id=?";
	
	/**
	 * create方法
	 */
	public Student create(Student stu) throws Exception{
		  Connection con=null;
	      PreparedStatement prepStmt=null;
	      ResultSet rs=null;
	      try{
	    	  // 获取connection对象
	    	  con=DbConnect.getDBconnection();
	    	  // preparedStatement
	    	  prepStmt =con.prepareStatement(INSERT_SQL); 
	    	  // 
	    	  prepStmt.setString(1,stu.getId());
	    	  prepStmt.setString(2,stu.getName());
	    	  prepStmt.setString(3,stu.getSex());
	    	  prepStmt.setString(4, stu.getBirthday());
	    	  prepStmt.setInt(5,stu.getAge());
	    	  prepStmt.setFloat(6,stu.getWeight());
	    	  prepStmt.setFloat(7,stu.getHeight()); 
	    	  // ִpreparedStatement
	          prepStmt.executeUpdate();
	      } catch(Exception e){
	    	  e.printStackTrace();
	      } finally{
	    	  // 
	    	  DbConnect.closeDB(con, prepStmt, rs);
	      }
	     return stu;
	}
	
	/**
	 * find方法
	 */
	public Student find(Student stu) throws Exception {
	    Connection con=null;
	    PreparedStatement prepStmt=null;
	    ResultSet rs=null;
	    Student stu2 = null;
	    try {
	    	// 获取connection对象
	    	con=DbConnect.getDBconnection();
	    	// preparedStatement
            prepStmt = con.prepareStatement(SELECT_SQL);
            // ���ò���
            prepStmt.setString(1,stu.getId());
            // 
            rs = prepStmt.executeQuery();
            // 
            if (rs.next()){
            	// ���ò���
            	stu2 = new Student();
                stu2.setId(rs.getString(1)); 
                stu2.setName(rs.getString(2));
                stu2.setSex(rs.getString(3));
                stu2.setBirthday(rs.getString(4));
                stu2.setAge(rs.getInt(5)); 
                stu2.setWeight(rs.getFloat(6));
                stu2.setHeight(rs.getFloat(7)); 
           }
      } catch (Exception e) {
          e.printStackTrace();
      } finally {
    	  // 
    	  DbConnect.closeDB(con, prepStmt, rs);
      }
     return stu2;
	}
	
	/**
	 * findAll方法
	 */
	public List<Student> findAll() throws Exception {
		Connection con=null;
	    PreparedStatement prepStmt=null;
	    ResultSet rs=null;	
	    List<Student> students = new ArrayList<Student>();
	    // �õ�����
	    con=DbConnect.getDBconnection();
	    // �õ�prepareStatement����
	    prepStmt = con.prepareStatement("select * from stu_info");
	    // ִ�в�ѯ����
        rs = prepStmt.executeQuery();
        // 
        while(rs.next()) {
        	Student stu2 = new Student();
            stu2.setId(rs.getString(1)); 
            stu2.setName(rs.getString(2));
            stu2.setSex(rs.getString(3));
            stu2.setBirthday(rs.getString(4));
            stu2.setAge(rs.getInt(5)); 
            stu2.setWeight(rs.getFloat(6));
            stu2.setHeight(rs.getFloat(7));
            // 
            students.add(stu2);
        }
        // �ر����ݿ�
        DbConnect.closeDB(con, prepStmt, rs); 
        return students;
	}
	
	/**
	 * remove方法
	 */
	public boolean remove(Student stu) throws Exception {
		Connection con=null;
	    PreparedStatement prepStmt=null;
	    ResultSet rs=null;
	    try {
	    	// �õ�����
	    	con=DbConnect.getDBconnection();
	    	// �õ�prepareStatement����
	    	prepStmt = con.prepareStatement(DELETE_SQL);
	    	// ���ò���������Ҫɾ��ѧ����ѧ�ţ�
	        prepStmt.setString(1,stu.getId());
	        // ִ��ɾ������
	        prepStmt.executeUpdate();
	    }catch(Exception e) {
	          e.printStackTrace();
	          return false;
	    } finally{
	    	 // �ر����ݿ�
	    	 DbConnect.closeDB(con, prepStmt, rs);
	    }
	    return true;
	}
	
	/**
	 * ʵ����ָ���Ķ����޸����ݿ��м�¼�ķ���
	 */
	public boolean update(Student stu) throws Exception {
		Connection con=null;
	    PreparedStatement prepStmt=null;
	    ResultSet rs=null;
	    try {
	    	// �õ�����
	    	con=DbConnect.getDBconnection();
	    	// �õ�prepareStatement����
	    	prepStmt = con.prepareStatement(UPDATE_SQL);
	    	// ���ò���
	    	prepStmt.setString(1,stu.getId());
	    	prepStmt.setString(2,stu.getName());
	    	prepStmt.setString(3,stu.getSex());
	    	prepStmt.setString(4,stu.getBirthday());
	    	prepStmt.setInt(5,stu.getAge());
	    	prepStmt.setFloat(6,stu.getWeight());
	    	prepStmt.setFloat(7,stu.getHeight());
	    	prepStmt.setString(8,stu.getId());
	    	// ִ���޸Ĳ���
	    	int rowCount=prepStmt.executeUpdate();
	    	// �������0 �����޸�ʧ�� ���������Ϣ
            if (rowCount == 0) {
                   throw new Exception("Update Error:Student Id:" + stu.getId());
            }
        } catch (Exception e) {
                e.printStackTrace();
                return false;
        } finally {
        	// �ر����ݿ�
        	 DbConnect.closeDB(con, prepStmt, rs);
        }
	    return true;
    }
}
