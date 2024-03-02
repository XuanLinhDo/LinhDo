<!doctype html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>kohi</title>

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

        <section class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </section>
    
       <main>

    <section class="sign-in-form section-padding">
        <div class="container">
            <div class="row">

                <div class="col-lg-8 mx-auto col-12">

                    <h1 class="hero-title text-center mb-5">Sign Up</h1>

                    <div class="row">
                        <div class="col-lg-8 col-12 mx-auto">
                            <form action="RegistrationController" method="post">

                                <div class="mb-3">
                                    <label for="username" class="form-label">User name</label>
                                    <input type="text" name="username" id="username" class="form-control" placeholder="User name" required>
                                </div>

                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                                </div>

                                <div class="mb-3">
                                    <label for="email" class="form-label">Email address</label>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Email address" required>
                                </div>

                                <div class="mb-3">
                                    <label for="fullname" class="form-label">Full name</label>
                                    <input type="text" name="fullname" id="fullname" class="form-control" placeholder="Full name" required>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Gender</label><br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="male" name="gender" value="male">
                                        <label class="form-check-label" for="male">Male</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="female" name="gender" value="female">
                                        <label class="form-check-label" for="female">Female</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="other" name="gender" value="other">
                                        <label class="form-check-label" for="other">Other</label>
                                    </div>
                                </div>

                                <button type="submit" class="btn custom-btn form-control mt-4 mb-3">Create account</button>

                                <p class="text-center">Already have an account? Please <a href="sign-in.jsp">Sign In</a></p>

                            </form>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

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
