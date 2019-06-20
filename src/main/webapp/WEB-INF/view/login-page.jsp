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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</head>

<body>
	<div>
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="panel-title text-center"><h1><i class="fas fa-sign-in-alt"></i> TheWorkerApp</h1></div>
				</div>
				<div style="padding-top: 30px" class="panel-body">

					<form:form action="${pageContext.request.contextPath}/authenticateTheUser" 
							   method="POST" class="form-horizontal">

					    <div class="form-group">
					        <div class="col-xs-15">
					            <div>	
									<c:if test="${param.error != null}">
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Błędny login i hasło.
										</div>	
									</c:if>
									
									<c:if test="${param.logout != null}">										            
										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											Wylogowano użytkownika.
										</div>
									</c:if>

					            </div>
					        </div>
					    </div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							
							<input type="text" name="username" placeholder="Nazwa użytkownika" class="form-control">
						</div>

						<!-- Password -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
							
							<input type="password" name="password" placeholder="Hasło" class="form-control" >
						</div>

						<!-- Login/Submit Button -->
						<div style="margin-top: 10px" class="form-group">						
							<div class="col-sm-6 controls">
								<button type="submit" class="btn btn-primary">Zaloguj</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>