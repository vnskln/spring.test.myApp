<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>main</title>
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
                        <li class="nav-item active">
                            <a href="" class="nav-link">Main</a>
                        </li>
                        <li class="nav-item">
                            <a href="hibernateTest" class="nav-link">Database connection test</a>
                        </li>
                        <li class="nav-item">
                            <a href="form/show" class="nav-link">Form test</a>
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
        
        <div class="pt-5"></div>
        <header class="main-header pt-5" id="header-section">
        	<section id="showcase">             
                <div id="karuzela" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#karuzela" data-slide-to="0" class="active">
                        </li>
                        <li data-target="#karuzela" data-slide-to="1">
                        </li>
                        <li data-target="#karuzela" data-slide-to="2">
                        </li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item carousel-image-1 active">
                            <div class="container">
                                <div class="carousel-caption text-center">
                                    <h2 class="display-3">motivational</h2>  
                                    <p class="display-3">slogan #1</p>   
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item carousel-image-2">
                            <div class="container">
                                <div class="carousel-caption text-right">
                                    <h1 class="display-2">something</h1>
                                    <p class="display-3">about success</p>               
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item carousel-image-3">
                            <div class="container">
                                <div class="carousel-caption text-left">
                                    <h1 class="display-3">photos from</h1>
                                    <p class="display-4">Pexels.com</p>                                
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="#karuzela" data-slide="prev" class="carousel-control-prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a href="#karuzela" data-slide="next" class="carousel-control-next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>                                                        
            </section>
            <section id="tytul" class="py-5">
                <div class="container">
                    <div class="row ">
                        <div class="col">
                            <h1 class="display-4 text-center">Welcome in myApp v1.0</h1>
                        </div>
                    </div>
                </div>
            </section>
        </header>
        
        <section id="main-text">
            <div class="container">
                <div class="col">
                    <p class="text-center"><i class="fas fa-angle-double-left"></i> <i class="fa fa-cog mb-2"></i> <i class="fas fa-angle-double-right"></i></p>
                    <p>I'm vnskln and this is the place where i train my skills. When I see new technology (and it's worth studying) I try to incorporate it here.
                    It has started with basic html and css, then came java+spring, hibernate for database connections, and finally heroku, to show it all to the
                    internet.</br></br>If you are looking for a new employee you came to right place. Maybe I'm still on the beginning of my 
                    IT journey and I have much to learn, but i work hard to achieve this goal. So maybe you can give me a try ;)</br></br>Have a nice day!</p>
                    <p class="text-center"><i class="fas fa-angle-double-left"></i> <i class="fa fa-cog mb-2"></i> <i class="fas fa-angle-double-right"></i></p>
                    <p>More about this app.</br>
	                   	<ul>
	                   		<li>a test site i use to learn new programming skills</li>
	                   		<li>it is created in <b>java 8</b> with <b>spring 5</b> framework</li>
	                   		<li><b>mvc</b> architectural pattern</li>
	                   		<li>data validation done in <b>spring validation</b></li>
	                   		<li>data is stored in <b>mySQL</b> database</li>
	                   		<li><b>hibernate</b> framework connects app with database (@Entity and @Repository used)</li>
	                   		<li><b>maven</b> is used for dependencies</li>
	                   		<li>aop logging made with <b>aspectJ</b> (@Before and @AfterReturning advices used)</li>
	                   		<li>app is deployed using <b>heroku</b> dyno</li>
	                   		<li>source code can be found <a href="https://github.com/vnskln/spring.test.myApp">here</a></li>
	                   	</ul>
                   	</p>
                    <p class="text-center"><i class="fas fa-angle-double-left"></i> <i class="fa fa-cog mb-2"></i> <i class="fas fa-angle-double-right"></i></p>
                    <p>Implemented functions:
                    	<ul>
                    		<li>database connection test (first steps in hibernate) - crud operations performed on "people" table in myApp database</li>
                    		<li>user form with custom validation rules</li>
                    		<li>employee list with crud features (add, update, delete), validation and search option</li>
                    	</ul>
                    </p>
                </div>
            </div>
        </section>
      
		<footer class="text-center pt-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p>&copy;vnskln 2019 vnskln.dev@gmail.com</p>
                    </div>
                </div>
            </div>
        </footer>
        
        <script src="<%=request.getContextPath() %>/resources/js/jquery-3.3.1.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
    </body>	
</html>
