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
							<span class="d-block text-dark">Your Cart</span>
						</h1>
					</div>
				</div>
			</div>
		</header>

		<c:if
			test="${not empty sessionScope.cart and not empty sessionScope.cart.items}">
			<table cellpadding="2" cellspacing="2" border="1">
				<thead>
					<tr>
						<th>Name</th>
						<th>Image</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Subtotal</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="productInCart" items="${sessionScope.cart.items}">
						<tr>
							<td>${productInCart.name}</td>
							<td><img src="images/${productInCart.imgName}"
								class="img-fluid product-image" width="120"></td>
							<td>
								<form action="CartController">
									<input type="hidden" name="ACTION" value="UPDATE_QUANTITY">
									<input type="hidden" name="productId"
										value="${productInCart.id}">
									<button type="submit" name="quantityChange" value="decrease">-</button>
									${productInCart.quantity}
									<button type="submit" name="quantityChange" value="increase">+</button>
								</form>
							</td>
							<td>${productInCart.price}</td>
							<td>${productInCart.subTotal}</td>
							<td>
								<form action="CartController">
									<input type="hidden" name="ACTION" value="REMOVE"> <input
										type="hidden" name="productId" value="${productInCart.id}">
									<button type="submit">Remove</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<p>
				Total: $
				<c:out value="${sessionScope.cart.total}" />
			</p>

			<c:choose>
				<c:when test="${empty sessionScope.user}">
					<p>
						<a href="AuthenicationController?action=LOGIN">Please login to
							CHECKOUT</a>
					</p>
				</c:when>
				<c:otherwise>
					<p>
						<a href="Checkout"><input type="button"
							value="CHECKOUT" /></a>
					</p>
				</c:otherwise>
			</c:choose>
		</c:if>

		<c:if test="${empty sessionScope.cart}">
			<p>Your cart is empty.</p>
			<p>
				<a href="ProductController">Go back to shopping</a>
			</p>
		</c:if>


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
