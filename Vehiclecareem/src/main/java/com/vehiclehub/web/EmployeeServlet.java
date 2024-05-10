package com.vehiclehub.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vehiclehub.bean.Employee;
import com.vehiclehub.dao.EmployeeDAO;





/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/") //handle all the requests with single servlet
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EmployeeDAO employeeDAO;   
    

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() {
		employeeDAO= new EmployeeDAO();
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getServletPath();
	
    // Switch statement for different actions
	try {
		switch (action) {
		case "/new":
			showNewForm(request, response);
			break;
		case "/insert":
			insertEmployee(request, response);
			break;
		case "/delete":
			deleteEmployee(request, response);
			break;
		case "/edit":
			showEditForm(request, response);
	        break;
		case "/update":
			updateEmployee(request, response);
			break;
		default:
			listEmployee(request, response);
            break;
	    }
	}catch(SQLException ex) {
		throw new ServletException(ex);
	    }
	}
	
	  //default - List Employee Details Method
	
	  private void listEmployee(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException 
		{
		   List<Employee> listEmployee = employeeDAO.selectAllEmployee();
	       request.setAttribute("listEmployee", listEmployee);
	       RequestDispatcher dispatcher = request.getRequestDispatcher("employee-list.jsp");
		   dispatcher.forward(request, response);
			}
	  
	    //Show new form Method
		private void showNewForm(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("employee-form.jsp");
			dispatcher.forward(request, response);
		}
		
		//insert Employee details method	
		private void insertEmployee(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			String employeeName = request.getParameter("employeeName");
			String DOB = request.getParameter("DOB");
			String phoneNo = request.getParameter("phoneNo");
			String address = request.getParameter("address");
			String positon = request.getParameter("positon");
			String department = request.getParameter("department");
			String salary = request.getParameter("salary");

			Employee newEmployee = new Employee(employeeName, DOB, phoneNo, address, positon, department, salary);
			employeeDAO.insertEmployee(newEmployee);
			response.sendRedirect("list");
		}
		
		//delete Employee details method
		
		private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException 
		{
			int employeeID = Integer.parseInt(request.getParameter("employeeID"));
			try {
				employeeDAO.deleteEmployee(employeeID);
			} catch(Exception e) {
				e.printStackTrace();
			}
			response.sendRedirect("list");

		}
		
		//Show Edit form Method
		private void showEditForm(HttpServletRequest request, HttpServletResponse response)throws SQLException, ServletException, IOException 
		{
			int employeeID = Integer.parseInt(request.getParameter("employeeID"));
			
			Employee existingEmployee;
			   try {
				   existingEmployee = employeeDAO.selectEmployee(employeeID);
			       RequestDispatcher dispatcher = request.getRequestDispatcher("employee-form.jsp");
			       request.setAttribute("employee", existingEmployee);
			       dispatcher.forward(request, response);
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
			

		}
		
		//Update Employee Details Method
		private void updateEmployee(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			int employeeID = Integer.parseInt(request.getParameter("employeeID"));
			String employeeName = request.getParameter("employeeName");
			String DOB = request.getParameter("DOB");
			String phoneNo = request.getParameter("phoneNo");
			String address = request.getParameter("address");
			String positon = request.getParameter("positon");
			String department = request.getParameter("department");
			String salary = request.getParameter("salary");


			Employee employee = new Employee(employeeID,employeeName, DOB, phoneNo, address, positon, department, salary);
			employeeDAO.updateEmployee(employee);
			response.sendRedirect("list");
		}
}