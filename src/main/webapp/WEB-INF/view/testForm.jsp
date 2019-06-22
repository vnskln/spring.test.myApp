<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
                <div class="nav-link text-white font-weight-light">User: <security:authentication property="principal.username"/>
         		<br>Role: <security:authentication property="principal.authorities"/></div>
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
                        <li class="nav-item active">
                            <a href="" class="nav-link">Form test</a>
                        </li>
                        <li class="nav-item">
                            <a href="employeeList" class="nav-link">Employee List</a>
                        </li>
                        <li class="nav-item">
                            <a href="logsList" class="nav-link">Logs</a>
                        </li>
                        <li class="nav-item">
                            <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                            	<input type="submit" value="LOGOUT" class="btn-sm btn-outline-secondary active text-white">
                            </form:form>
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
                            <h1 class="display-4 text-center">Test form</h1>
                            <p class="text-center">validation using Hibernate Validator
                            <br>valid data is saved in database</p>
                        </div>
                    </div>
                </div>
            </section>
        </header>
		<section>
            <div class="container">
				<div class="row">
					<div class="col-5 text-right">
	                	<p class="pb-2">Name:</p>
	                	<p class="pb-1">Surname:</p>
	                	<p class="pb-2">Age:</p>
	                	<p class="pb-1">Height [m]:</p>
	                	<p class="pb-1">Education:</p>
	                	<p>Are you a robot?</p>
					</div>
					<div class="col">
						<form:form action="process" modelAttribute="person">
	                		<p><form:input path="name" placeholder="your name.."/>
	                		<form:errors path="name" cssClass="error"/></p>
	                		<p><form:input path="surname" placeholder="your surname.."/>
	                		<form:errors path="surname" cssClass="error"/></p>
	                		<p><form:input path="age" placeholder="0"/>
	                		<form:errors path="age" cssClass="error"/></p>
	                		<p><form:input path="height"/>
	                		<form:errors path="height" cssClass="error"/></p>
	                		<p><form:select path="education">
	                			<form:options items="${person.educationOptions}" />               		
	                		</form:select></p>
	                		yes <form:radiobutton path="robotChecker" value="true"/>
	                		no <form:radiobutton path="robotChecker" value="false"/>
	                        <p><br><input type="submit" value="process form" class="add-button" /></p>
	            		</form:form>	
					</div>
				</div>
			</div>
        </section>
        <section>
        	<div class="container">
				<div class="col">
					</br></br></br>
					<h3 class="text-center display-4">Actual database table content:</h3>
					<p class="text-center">Use database connection test to clear</p>
					<table class="table table-striped text-center">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Surname</th>
								<th scope="col">Name</th>
								<th scope="col">age</th>
								<th scope="col">height</th>
								<th scope="col">education</th>
								<th scope="col">is a robot?</th>
							</tr>
						</thead>
						<c:forEach var="tempPerson" items="${people}">							
							<tr>
								<td> ${tempPerson.surname}</td>
								<td> ${tempPerson.name}</td>
								<td> ${tempPerson.age}</td>
								<td> ${tempPerson.height}</td>
								<td> ${tempPerson.education}</td>
								<td> ${tempPerson.robotChecker}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</section>
		</br></br></br>
		<footer class="fixed-bottom text-center pt-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p>&copy;vnskln 2019 vnskln.dev@gmail.com</p>
                    </div>
                </div>
            </div>
        </footer>
	</body>
</html>