package com.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.IStudentDAO;
import com.dao.StudentDAO;
import com.domain.Student;

/**
 * Servlet implementation class StudentServlet
 */
public class StudentServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	
	private static IStudentDAO dao;
	
	static {
		dao = new StudentDAO();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		// 如果页面发来的是添加学生的操作请求
		if(action != null && action.equals("create")){
			this.dealCreate(request, response);
		}
		
		// 如果页面发来的是查询所有学生的操作请求
		if(action != null && action.equals("findAll")){
			this.dealFindAll(request, response);
		}
		
		// 如果页面发来的是查询指定学生的操作请求
		if(action != null && action.equals("findByNO")){
			// 处理查询指定学生操作
			this.dealFindByNO(request, response);
		}
		
		if(action != null && action.equals("deleteByNO")){
			// 处理删除指定学生操作
			this.dealDeleteByNO(request,response);
		}
		
		if(action != null && action.equals("update")){
			// 处理更新指定学生操作
			this.dealUpdate(request,response);
		}
	}

	/**
	 * 处理添加学生操作
	 * @param request
	 * @param response
	 * @throws Exception 
	 */
	private Student dealCreate(HttpServletRequest request, HttpServletResponse response){
		// 从页面接收相应参数
		String id = request.getParameter("no");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		int age = Integer.parseInt(request.getParameter("age"));
		Float weight = Float.parseFloat(request.getParameter("weight"));
		Float height = Float.parseFloat(request.getParameter("height"));
		// 创建Student对象并设置参数为页面传过来的值
		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setSex(sex);
		student.setBirthday(birthday);
		student.setWeight(weight);
		student.setHeight(height);
		student.setAge(age);
		Student stu = null;
		try {
			// 调用DAO层添加Student记录的方法
			stu = dao.create(student);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	
		if(stu != null){
			// 如果添加成功 设置添加成功信息
			request.setAttribute("createMsg", "添加成功");
		}else{
			// 如果添加失败 设置添加失败信息
			request.setAttribute("createMsg", "添加失败");
		}
		// 准备好跳转
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("create.jsp");
		// 实现跳转
		try {
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}			
		return stu;
	}
	
	/**
	 * 处理查询所有学生操作
	 * @param request
	 * @param response
	 */
	public List<Student> dealFindAll(HttpServletRequest request, HttpServletResponse response){
		// 创建students列表集合对象
		List<Student> students = new ArrayList<Student>();
		try {
			// 调用DAO层查询Student记录的方法
			students = dao.findAll();
			request.setAttribute("students", students);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 准备跳转
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("findAll.jsp");
		try {
			// 跳转
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return students;
	}
	
	/**
	 * 处理查询指定学生的操作
	 * @param request
	 * @param response
	 */
	public Student dealFindByNO(HttpServletRequest request, HttpServletResponse response){
		String id = request.getParameter("no");
		Student student = new Student();
		student.setId(id);
		Student stu = new Student();
		try {
			// 调用DAO层查询指定Student的方法
			stu = dao.find(student);
			request.setAttribute("student", stu);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		RequestDispatcher requestDispatcher = null;
		// 从页面接收type参数 
		String type = request.getParameter("type");
		// 根据type参数将student对象返回给不同的页面
		if(type.equals("0")){
			requestDispatcher = request.getRequestDispatcher("findByNO.jsp");
		}else if(type.equals("1")){
			requestDispatcher = request.getRequestDispatcher("update.jsp");
		}
		try {
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stu;
	}
	
	/**
	 * 处理删除指定学生的操作
	 * @param request
	 * @param response
	 */
	public void dealDeleteByNO(HttpServletRequest request, HttpServletResponse response){
		String id = request.getParameter("no");
		Student student = new Student();
		student.setId(id);
		try {
			// 调用DAO删除指定学生的方法
			if(dao.remove(student)){
				request.setAttribute("deleteMsg", "删除成功");
			}else {
				request.setAttribute("deleteMsg", "删除失败");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 准备好跳转
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("deleteByNO.jsp");
		// 实现跳转
		try {
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}			
	}
	
	/**
	 * 处理更新操作
	 * @param request
	 * @param response
	 */
	public void dealUpdate(HttpServletRequest request, HttpServletResponse response){
		// 从页面接收相应参数
		String id = request.getParameter("no");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		int age = Integer.parseInt(request.getParameter("age"));
		Float weight = Float.parseFloat(request.getParameter("weight"));
		Float height = Float.parseFloat(request.getParameter("height"));
		// 创建对象设置参数为 页面接收到的参数
		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setSex(sex);
		student.setBirthday(birthday);
		student.setWeight(weight);
		student.setHeight(height);
		student.setAge(age);
		try {
			// 调用DAO层更新学生信息的方法
			if(dao.update(student)){
				request.setAttribute("updateMsg", "更新成功");
			}else{
				request.setAttribute("updateMsg", "更新失败");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 准备好跳转
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("update.jsp");
		// 实现跳转
		try {
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
