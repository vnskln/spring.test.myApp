<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>List Employees</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
	</head>
	<body>
		<nav class="navbar navbar-expand-sm navbar-dark text-white fixed-top">
            <div class="container">
                <a href="index" class="navbar-brand">
                    <img src="<%=request.getContextPath() %>/resources/img/logoW.jpeg" id="nav-logo"> myApp</a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a href="index" class="nav-link">Main</a>
                        </li>
                        <li class="nav-item">
                            <a href="hibernateTest" class="nav-link">Database connection test</a>
                        </li>
                        <li class="nav-item">
                            <a href="form/show" class="nav-link">Form test</a>
                        </li>
                        <li class="nav-item active">
                            <a href="" class="nav-link">Employee List</a>
                        </li>
                     </ul>
                </div>
            </div>
        </nav>
        <header class="main-header py-1" id="header-section">
            <section id="tytul" class="pt-5 pb-3">
                <div class="container">
                    <div class="row ">
                        <div class="col pt-5">
                            <h1 class="display-4 text-center">list of employees</h1>
                        </div>
                    </div>
                </div>
            </section>
        </header>
        <section>
			<div class="container">
				<div class="row py-2 justify-content-center">
					<div class="col-8">
						<form:form action="search" method="GET">
	                	Search for employee: <input type="text" name="searchName" />
	                    <input type="submit" value="Search" class="btn" />
	            		</form:form>
									
					</div>
					<div class="col-2">
						<input type="button" value="New entry"
							onclick="window.location.href='showFormForNewEmployee'; return false;" class="btn"/>
					</div>
				</div>
			</div>
		</section>
        <section>
        	<div class="container">
				<div class="col">
					<table class="table table-striped text-center">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Surname</th>
								<th scope="col">Name</th>
								<th scope="col">ID</th>
								<th scope="col">Email</th>
								<th scope="col">City</th>
								<th scope="col">Address</th>
								<th scope="col">Options</th>
							</tr>
						</thead>
						<c:forEach var="tempEmployee" items="${employees}">
							<c:url var="updateLink" value="/showEmployeeUpdateForm">
								<c:param name="employeeId" value="${tempEmployee.id}"/>
							</c:url>
							
							<c:url var="deleteLink" value="/deleteEmployee">
								<c:param name="employeeId" value="${tempEmployee.id}"/>
							</c:url>
							
							<tr>
								<td> ${tempEmployee.surname}</td>
								<td> ${tempEmployee.name}</td>
								<td> ${tempEmployee.id}</td>
								<td> ${tempEmployee.email}</td>
								<td> ${tempEmployee.city}</td>
								<td> ${tempEmployee.address}</td>
								<td><a href=${updateLink} data-toggle="tooltip" title="Edit"><i class="fas fa-address-card"></i></a>
								<a href=${deleteLink} data-toggle="tooltip" title="Delete" onclick="if (!(confirm('Deleting employee. Are you sure?'))) return false"><i class="far fa-trash-alt"></i></a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</section>
		<footer id="main-footer" class="text-center pt-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p>Copyright 2018 &copy;vnskln</p>
                    </div>
                </div>
            </div>
        </footer>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    </body>	
</html>
