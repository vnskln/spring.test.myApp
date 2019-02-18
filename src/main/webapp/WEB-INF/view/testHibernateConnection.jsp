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
                            <a href="" class="nav-link">Database connection test</a>
                        </li>
                        <li class="nav-item">
                            <a href="form/show" class="nav-link">Form test</a>
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
                    <div class="row">
                        <div class="col-6 pt-5 mx-auto">
                            <h1 class="display-4">Database test success</h1>
                            <p>Operations performed on "people" table in myApp database:</p>
                            <ul style="list-style-type:square">
								<li>save 5 new sample records</li>
								<li>read record with id=3</li>
								<li>read all records and print them</li>
								<li>read and print records with "secondary" education</li>
								<li>update records with robotChecker=true</li>
								<li>read all records and print them again</li>
							</ul>
							<p>Results can be seen in ide console.</p>
                        </div>
                    </div>
                </div>
            </section>
        </header>
	</body>
</html>