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
                        <li class="nav-item active">
                            <a href="" class="nav-link">Form test</a>
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
                            <h1 class="display-4 text-center">Form test</h1>
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
	                		<p><form:input path="name" placeholder="your name.."/></p>
	                		<p><form:input path="surname" placeholder="your surname.."/></p>
	                		<p><form:input path="age" placeholder="0"/></p>
	                		<p><form:input path="height"/></p>
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
	</body>
</html>