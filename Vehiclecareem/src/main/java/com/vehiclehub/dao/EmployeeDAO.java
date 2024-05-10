package com.vehiclehub.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vehiclehub.bean.Employee;



//DAO class for handling Employee operations
public class EmployeeDAO {
	// Database connection details
	private String jdbcURL = "jdbc:mysql://localhost:3306/vehiclecare";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";
	private String jdbcDriver="com.mysql.jdbc.Driver";
 
	// SQL queries for Employee operations
	private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO vehiclecare.employee" + "  (employeeName,DOB,phoneNo,address,positon,department,salary) VALUES "
			+ " (?, ?, ?, ?, ?, ?, ?);";

	private static final String SELECT_EMPLOYEE_BY_ID = "select employeeID,employeeName,DOB,phoneNo,address,positon,department,salary from vehiclecare.employee where employeeID =?";
	private static final String SELECT_ALL_EMPLOYEE = "select * from vehiclecare.employee" ;
	private static final String DELETE_EMPLOYEE_SQL = "delete from vehiclecare.employee where employeeID = ?;";
	private static final String UPDATE_EMPLOYEE_SQL = "update vehiclecare.employee set employeeName = ?, DOB= ?, phoneNo =?, address =?, positon =?, department =?, salary =? where employeeID = ?;";

	// Default constructor
	public EmployeeDAO() {}
	
	// Establish database connection
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(jdbcDriver);
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	// Insert Employee record into the database
	public void insertEmployee(Employee employee) throws SQLException {
		//******System.out.println(INSERT_Employee_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_SQL)) {
			preparedStatement.setString(1, employee.getEmployeeName());
			preparedStatement.setString(2, employee.getDOB());
			preparedStatement.setString(3, employee.getPhoneNo());
			preparedStatement.setString(4, employee.getAddress());
			preparedStatement.setString(5, employee.getPositon());
			preparedStatement.setString(6, employee.getDepartment());
			preparedStatement.setString(7, employee.getSalary());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
	
	
	// Retrieve Employee record by ID from the database
	public Employee selectEmployee(int employeeID) {
		Employee employee = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPLOYEE_BY_ID);) {
			preparedStatement.setInt(1, employeeID);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String employeeName = rs.getString("employeeName");
				String DOB = rs.getString("DOB");
				String phoneNo = rs.getString("phoneNo");
				String address = rs.getString("address");
				String positon = rs.getString("positon");
				String department = rs.getString("department");
				String salary = rs.getString("salary");
				employee = new Employee(employeeID, employeeName, DOB, phoneNo, address, positon, department, salary);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return employee;
	}
	
	// Retrieve all Employee records from the database

	public List<Employee> selectAllEmployee() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Employee> employee = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement=connection.prepareStatement(SELECT_ALL_EMPLOYEE);) {
			System.out.println(preparedStatement);
			
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int employeeID = rs.getInt("employeeID");
				String employeeName = rs.getString("employeeName");
				String DOB = rs.getString("DOB");
				String phoneNo = rs.getString("phoneNo");
				String address = rs.getString("address");
				String positon = rs.getString("positon");
				String department = rs.getString("department");
				String salary = rs.getString("salary");
				employee.add(new Employee(employeeID,employeeName,DOB,phoneNo,address,positon,department,salary));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return employee;
	}

	// Delete Employee record from the database
	public boolean deleteEmployee(int employeeID) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_EMPLOYEE_SQL);) {
			statement.setInt(1, employeeID);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	// Update Employee record in the database
	public boolean updateEmployee(Employee employee) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_EMPLOYEE_SQL);) {
			System.out.println("updated employee:"+statement);
			statement.setString(1, employee.getEmployeeName());
			statement.setString(2, employee.getDOB());
			statement.setString(3, employee.getPhoneNo());
			statement.setString(4, employee.getAddress());
			statement.setString(5, employee.getPositon());
			statement.setString(6, employee.getDepartment());
			statement.setString(7, employee.getSalary());
			statement.setInt(8, employee.getEmployeeID());


			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	// Print SQL exception details
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}