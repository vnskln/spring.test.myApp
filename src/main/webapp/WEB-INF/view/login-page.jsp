<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="pl">
<head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<div style="margin-top: 50px;" class="mainbox col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="panel-title text-center">
						<h1><img src="<%=request.getContextPath() %>/resources/img/logoW.jpeg" id="nav-logo"> myApp</h1>
						<br><p class="text-muted small">Test accounts:</p>
						<p class="text-muted small">- user test / test</p>
						<p class="text-muted small">- root admin / admin</p>
					</div>
				</div>
				<div style="padding-top: 30px" class="panel-body">
					<form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST" class="form-horizontal text-center">
					    <div class="form-group">
					        <div class="col-xs-15">
					            <div>	
									<c:if test="${param.error != null}">
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Mistake!
										</div>	
									</c:if>
									<c:if test="${param.logout != null}">										            
										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											Successfull logout
										</div>
									</c:if>
					            </div>
					        </div>
					    </div>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							
							<input type="text" name="username" placeholder="Username" class="form-control">
						</div>
						<div  style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="fas fa-sign-in-alt"></i></span> 
							
							<input type="password" name="password" placeholder="Password" class="form-control" >
						</div>
						<div class=" style="margin-bottom: 25px" form-group">						
							<div class="col controls">
								<button type="submit" class="btn btn-block btn-primary ">Login</button>
							</div>
						</div>
						<br><p class="text-muted small">&copy;vnskln 2019 vnskln.dev@gmail.com</p>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>