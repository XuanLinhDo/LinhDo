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
							<span class="d-block text-dark">Choose your</span> <span
								class="d-block text-dark">favorite products</span>
						</h1>
					</div>
				</div>
			</div>
		</header>

		<section class="products section-padding">
			<div class="container">
				<div class="row">

					<div class="col-12 text-center">
						<h2 class="mb-5">Products</h2>
					</div>
					<c:forEach items="${products}" var="product">
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

				</div>
				<!-- Paging Controls -->
				<div class="row">
					<div class="col-12 text-center">
						<c:if test="${totalPages > 1}">
							<c:if test="${currentPage > 1}">
								<a href="?action=${action}&page=1&pageSize=3"
									class="btn custom-btn">First</a>
								<a
									href="?action=${action}&page=${currentPage - 1}&pageSize=3"
									class="btn custom-btn">Previous</a>
							</c:if>

							<c:forEach begin="1" end="${totalPages}" var="pageNumber">
								<c:choose>
									<c:when test="${pageNumber eq currentPage}">
										<span class="btn custom-btn">${pageNumber}</span>
									</c:when>
									<c:otherwise>
										<a
											href="?action=${action}&page=${pageNumber}&pageSize=3"
											class="btn custom-btn">${pageNumber}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>

							<c:if test="${currentPage < totalPages}">
								<a
									href="?action=${action}&page=${currentPage + 1}&pageSize=3"
									class="btn custom-btn">Next</a>
								<a
									href="?action=${action}&page=${totalPages}&pageSize=3"
									class="btn custom-btn">Last</a>
							</c:if>
						</c:if>
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
