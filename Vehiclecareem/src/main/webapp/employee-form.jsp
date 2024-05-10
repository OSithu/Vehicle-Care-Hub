<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Employee details</title>

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
				<a href="https://www.xadmin.net" class="navbar-brand"> Employee details </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Employee</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${employee != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${employee == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${employee != null}">
            			Edit Employee
            		</c:if>
						<c:if test="${employee == null}">
            			Add New Employee
            		</c:if>
					</h2>
				</caption>

				<c:if test="${employee != null}">
					<input type="hidden" name="employeeID" value="<c:out value='${employee.employeeID}' />" />
				</c:if>
                <form>
				<fieldset class="form-group">
					<label>Employee Name</label> <input type="text"
						value="<c:out value='${employee.employeeName}' />" class="form-control"
						name="employeeName" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Date Of Birth</label> <input type="text"
						value="<c:out value='${employee.DOB}' />" class="form-control"
						name="DOB">
				</fieldset>

				<fieldset class="form-group">
					<label>Phone Number</label> <input type="text"
						value="<c:out value='${employee.phoneNo}' />" class="form-control"
						name="phoneNo">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${employee.address}' />" class="form-control"
						name="address" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Position</label> <input type="text"
						value="<c:out value='${employee.positon}' />" class="form-control"
						name="positon">
				</fieldset>

				<fieldset class="form-group">
					<label>Department</label>
				<select name="department" class="form-control" required="required">
						<option value="FuelStation" <c:if test="${employee != null && employee.department eq 'Fuel Station'}">selected</c:if>>Fuel Station</option>
						<option value="InventoryShop" <c:if test="${employee != null && employee.department eq 'Inventory Shop'}">selected</c:if>>Inventory Shop</option>
						<option value="VehicleService" <c:if test="${employee != null && employee.department eq 'Vehicle Service'}">selected</c:if>>Vehicle Service</option>
					</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Salary</label> <input type="text"
						value="<c:out value='${employee.salary}' />" class="form-control"
						name="salary">
				</fieldset>
				


				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>