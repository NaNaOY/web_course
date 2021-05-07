package com.dao;



import java.util.List;
import com.domain.Student;

public interface IStudentDAO {
	
	/**
	 * @param stu
	 * @return ��ӵ�ѧ��
	 * @throws Exception
	 */
	public abstract Student create(Student stu) throws Exception;
	
	/**
	 * @param stu
	 * @throws Exception
	 */
	public abstract boolean remove(Student stu) throws Exception;
	
	/**
	 * @param stu
	 * @return ��ѯ����ѧ��
	 * @throws Exception
	 */
	public abstract Student find(Student stu) throws Exception;  
	
	/**
	 * @return ���е�ѧ���б���
	 * @throws Exception
	 */
	public abstract List<Student> findAll() throws Exception;
	
	/**
	 * �޸ļ�¼�ķ���
	 * @param stu
	 * @throws Exception
	 */
	public abstract boolean update(Student stu) throws Exception; 
}
