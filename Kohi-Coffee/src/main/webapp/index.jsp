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

<title>Kohi</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap"
	rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-icons.css" rel="stylesheet">

<link rel="stylesheet" href="css/slick.css" />

<link href="css/tooplate-little-fashion.css" rel="stylesheet">
<!--

Kohi

https://www.tooplate.com/view/2127-little-fashion

-->
</head>

<body>
	<main>
		<jsp:include page="header-section.jsp" />


		<section class="slick-slideshow">
			<div class="slick-custom">
				<img src="images/slideshow/pouring 1.png" class="img-fluid" alt="">

				<div class="slick-bottom">
					<div class="container">
						<div class="row">
							<div class="col-lg-6 col-10">
								<h1 class="slick-title">About Us</h1>

								<p class="lead text-white mt-lg-3 mb-lg-5">Kohi is a Sydney
									based specialty coffee rostery.</p>

								<a href="about.jsp" class="btn custom-btn">Learn more about
									us</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="slick-custom">
				<img src="images/slideshow/display.png" class="img-fluid" alt="">

				<div class="slick-bottom">
					<div class="container">
						<div class="row">
							<div class="col-lg-6 col-10">
								<h1 class="slick-title">Shop</h1>

								<p class="lead text-white mt-lg-3 mb-lg-5">We provide a
									variety of coffee options sourced from different parts of the
									globe.</p>

								<a href="ProductController" class="btn custom-btn">Explore
									our offering</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>

		<section class="featured-product section-padding">
			<div class="container">
				<div class="row">

					<div class="col-12 text-center">
						<h2 class="mb-5">Featured Products</h2>
					</div>
					<c:forEach items="${lastestProducts}" var="product">
						<div class="col-lg-4 col-12 mb-3">
							<div class="product-thumb">
								<a href="ProductDetailsController?productId=${product.id}">
									<img src="images/${product.imgName}"
									class="img-fluid product-image" alt="">
								</a>
								<c:if test="${product.isNew == true}">
									<div class="product-top d-flex">
										<span class="product-alert me-auto">New Arrival</span> <a
											href="#" class="bi-heart-fill product-icon"></a>
									</div>
								</c:if>

								<div class="product-info d-flex">
									<div>
										<h5 class="product-title mb-0">
											<a href="product-details.jsp" class="product-title-link">${product.name}</a>
										</h5>

									</div>

									<small class="product-price text-muted ms-auto">$${product.price}</small>
								</div>
							</div>
						</div>
					</c:forEach>

					<div class="col-12 text-center">
						<a href="ProductController" class="view-all">View All Products</a>
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
