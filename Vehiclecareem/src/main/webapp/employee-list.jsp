<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Fuel Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> Employee Details </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Employee</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">

		<div class="container">
			<h3 class="text-center">List of Employee</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					Employee</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Date Of Birth</th>
						<th>Phone Number</th>
						<th>Address</th>
						<th>Position</th>
						<th>Department</th>
						<th>Salary</th>
	
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="employee" items="${listEmployee}">

						<tr>
							<td><c:out value="${employee.employeeID}"/></td>
							<td><c:out value="${employee.employeeName}" /></td>
							<td><c:out value="${employee.DOB}"/></td>
							<td><c:out value="${employee.phoneNo}"/></td>
							<td><c:out value="${employee.address}"/></td>
							<td><c:out value="${employee.positon}"/></td>
							<td><c:out value="${employee.department}"/></td>
							<td><c:out value="${employee.salary}"/></td>

							<td><a href="edit?employeeID=<c:out value='${employee.employeeID}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="delete?employeeID=<c:out value='${employee.employeeID}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>