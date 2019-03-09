<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>New employee form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
	</head>
	<body>
		<section>
        	<div class="container">
				<div class="col">
					<h1 class="display-5 text-center">New employee</h1>
				</div>
			</div>
		</section>
		<section>
			<div class="d-flex justify-content-center">
				<div class="col-4">
					<div class="form-group">
						<form:form action="saveEmployee" modelAttribute="employee" method="POST">
					    	<form:hidden path="id"/>
					    	<label class="mt-3">Name</label>
							<form:input path="name" class="form-control"/>
							<label class="mt-3">Surname</label>
							<form:input path="surname" class="form-control"/>
							<label class="mt-3">Email</label>
							<form:input path="email" class="form-control"/>
							<label class="mt-3">Phone number</label>
							<form:input path="phoneNumber" class="form-control"/>
							<label class="mt-3">City</label>
							<form:input path="city" class="form-control"/>
							<label class="mt-3">Postal code</label>
							<form:input path="postalCode" class="form-control"/>
							<label class="mt-3">Address</label>
							<form:input path="address" class="form-control"/>
						  	<button type="submit" class="btn btn-primary mt-3">Save new employee</button>
						  	<button class="btn btn-danger mt-3" onclick="window.location.href='${pageContext.request.contextPath}/employeeList'; return false;">Go back to employee list</button>
						</form:form>
					</div>
				</div>
			</div>
		</section>
		
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    </body>	
</html>