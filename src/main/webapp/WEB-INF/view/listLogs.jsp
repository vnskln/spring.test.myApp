<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>List Logs</title>
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
                            <h1 class="display-4 text-center">MyApp logs from database:</h1>
                        </div>
                    </div>
                </div>
            </section>
        </header>
        <section>
        	<div class="container">
				<div class="col">
					<table class="table table-striped text-center">
						<thead class="thead-dark">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Date</th>
								<th scope="col">Log message</th>
							</tr>
						</thead>
						<c:forEach var="tempLog" items="${logs}">							
							<tr>
								<td> ${tempLog.id}</td>
								<td> ${tempLog.logDate}</td>
								<td> ${tempLog.logMessage}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</section>
		<footer class="fixed-bottom text-center pt-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p>&copy;vnskln 2019 vnskln.dev@gmail.com</p>
                    </div>
                </div>
            </div>
        </footer>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    </body>	
</html>
