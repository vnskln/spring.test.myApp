<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a href="" class="nav-link">Main</a>
                        </li>
                        <li class="nav-item">
                            <a href="form/show" class="nav-link">Form test</a>
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
                            <h1 class="display-4 text-center">Welcome in myApp</h1>
                        </div>
                    </div>
                </div>
            </section>
        </header>
        
        <section id="main-text">
            <div class="container">
                <div class="col">
                    <p class="text-center"><i class="fas fa-angle-double-left"></i> <i class="fa fa-cog mb-2"></i> <i class="fas fa-angle-double-right"></i></p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo augue, lacinia vel arcu sed, maximus euismod diam. Vestibulum at arcu molestie, commodo mauris at, condimentum ante. Phasellus tristique lobortis commodo. Nam pretium viverra erat, non mollis felis sagittis sed. Sed quis nisl lorem. Proin at elit convallis, fringilla quam quis, dictum diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean molestie ex quis lorem pellentesque tincidunt. Phasellus nec mauris mollis metus pellentesque placerat eu eu velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vel libero justo. Etiam scelerisque ante non nunc cursus, ac sollicitudin nibh maximus. Vestibulum ut justo ac enim tristique mollis sed non sem. Ut ullamcorper quis mauris ac efficitur. Sed laoreet et purus eu dignissim. Etiam nibh est, mattis ultrices commodo eu, luctus eu sem.</p>
                    <p class="text-center"><i class="fas fa-angle-double-left"></i> <i class="fa fa-cog mb-2"></i> <i class="fas fa-angle-double-right"></i></p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo augue, lacinia vel arcu sed, maximus euismod diam. Vestibulum at arcu molestie, commodo mauris at, condimentum ante. Phasellus tristique lobortis commodo. Nam pretium viverra erat, non mollis felis sagittis sed. Sed quis nisl lorem. Proin at elit convallis, fringilla quam quis, dictum diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean molestie ex quis lorem pellentesque tincidunt. Phasellus nec mauris mollis metus pellentesque placerat eu eu velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vel libero justo. Etiam scelerisque ante non nunc cursus, ac sollicitudin nibh maximus. Vestibulum ut justo ac enim tristique mollis sed non sem. Ut ullamcorper quis mauris ac efficitur. Sed laoreet et purus eu dignissim. Etiam nibh est, mattis ultrices commodo eu, luctus eu sem.</p>
                    <p class="text-center"><i class="fas fa-angle-double-left"></i> <i class="fa fa-cog mb-2"></i> <i class="fas fa-angle-double-right"></i></p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo augue, lacinia vel arcu sed, maximus euismod diam. Vestibulum at arcu molestie, commodo mauris at, condimentum ante. Phasellus tristique lobortis commodo. Nam pretium viverra erat, non mollis felis sagittis sed. Sed quis nisl lorem. Proin at elit convallis, fringilla quam quis, dictum diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean molestie ex quis lorem pellentesque tincidunt. Phasellus nec mauris mollis metus pellentesque placerat eu eu velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vel libero justo. Etiam scelerisque ante non nunc cursus, ac sollicitudin nibh maximus. Vestibulum ut justo ac enim tristique mollis sed non sem. Ut ullamcorper quis mauris ac efficitur. Sed laoreet et purus eu dignissim. Etiam nibh est, mattis ultrices commodo eu, luctus eu sem.</p>
                </div>
            </div>
        </section>
      
		<footer id="main-footer" class="text-center pt-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p>Copyright 2018 &copy;pb</p>
                    </div>
                </div>
            </div>
        </footer>
        <script src="<%=request.getContextPath() %>/resources/js/jquery-3.3.1.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
    </body>	
</html>
