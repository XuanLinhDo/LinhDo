<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Kohi</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link rel="stylesheet" href="css/slick.css"/>

        <link href="css/tooplate-little-fashion.css" rel="stylesheet">
        
<!--

Kohi

https://www.tooplate.com/view/2127-little-fashion

-->
    </head>
    
    <body>

        	<main>
		<jsp:include page="header-section.jsp" />

            <header class="site-header section-padding-img site-header-image">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 header-info">
                            <h1>
                                <span class="d-block text-dark">Kohi Coffee</span>
                                <p>is a Sydney based specialty coffee rostery. 
                                    Our coffee team are passionate about sourcing and sharing the best, most ethically produced coffee from around the world. 
                                    We take huge pride and care in every step of the journey - all the way from selecting the beans to our recyclable and biodegradable packaging.</p>
                                
                            </h1>
                        </div>
                    </div>
                </div>

                <img src="images/header/pouring coffee.jpg" class="header-image img-fluid" alt="">
            </header>

        </main>

 	<jsp:include page="footer-section.jsp" />

        

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/Headroom.js"></script>
        <script src="js/jQuery.headroom.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
