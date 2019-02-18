<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>form test</title>
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css">
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
                            <a href="hibernateTestRoutine" class="nav-link">Database connection test</a>
                        </li>
                        <li class="nav-item active">
                            <a href="show" class="nav-link">Form test</a>
                        </li>
                        <li class="nav-item">
                            <a href="employeeList" class="nav-link">Employee List</a>
                        </li>
                     </ul>
                </div>
            </div>
        </nav>
		<header class="main-header py-1">
            <section id="tytul" class="pt-5 pb-3">
                <div class="container">
                    <div class="row ">
                        <div class="col pt-5">
                            <h1 class="display-4 text-center">Form test done</h1>
                        </div>
                    </div>
                </div>
            </section>
        </header>
		<section>
            <div class="container">
				<div class="row justify-content-center">
					<div class="card text-center">
						<div class="card-body ">
							<img src="<%=request.getContextPath() %>/resources/img/success.jpeg" id="success">
							<h5 class="card-title pt-3">New personal data saved to database</h5>
							<p class="card-text text-left">name: ${person.name}
							<br>surname: ${person.surname}
		                	<br>age: ${person.age}
		                	<br>height: ${person.height}
		                	<br>education: ${person.education}
		                	<br> is this person a robot: 
		                	<c:if test="${person.robotChecker==false}">
		                	no
							</c:if>
							<c:if test="${person.robotChecker==true}">
		                	yes
							</c:if>
		                	</p>
						</div>
					</div>
				</div>
			</div>
        </section>
	</body>
</html>