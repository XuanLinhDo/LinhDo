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

		<header
			class="site-header section-padding d-flex justify-content-center align-items-center">
			<div class="container">
				<div class="row">

					<div class="col-lg-10 col-12">
						<h1>
							<span class="d-block text-dark">Product Details</span>
						</h1>
					</div>
				</div>
			</div>
		</header>

		<section class="product-detail section-padding">
			<div class="container">
				<div class="row">
						<div class="col-lg-6 col-12">
							<div class="product-thumb">
								<img src="images/${product.imgName}"
									class="img-fluid product-image" alt="">
							</div>
						</div>

						<div class="col-lg-6 col-12">
							<div class="product-info d-flex">
								<div>
									<h2 class="product-title mb-0">${product.name}</h2>

									<span class="product-info-item-label">Taste:</span> <span
										class="product-info-item-value">${product.description}.</span>
								</div>

								<small class="product-price text-muted ms-auto mt-auto mb-5">$${product.price}</small>
							</div>

					<div class="product-cart-thumb row">

						<div class="col-lg-6 col-12 mt-4 mt-lg-0">
							<form action="CartController" >
							<input type="text" value="ADD_TO_CART" name="ACTION" hidden="true">
							<input type="text" value="${product.id}" name="productId" hidden="true">
							<input type="submit" value="Add To Cart">
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