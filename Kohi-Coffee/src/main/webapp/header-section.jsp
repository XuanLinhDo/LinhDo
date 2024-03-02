
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
</head>
<body>
	<section class="preloader">
		<div class="spinner">
			<span class="sk-inner-circle"></span>
		</div>
	</section>

	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<a class="navbar-brand" href="HomeController"> <strong>Kohi</strong>
			</a>

			<div class="d-lg-none">
				<a href="sign-in.html" class="bi-person custom-icon me-3"></a> <a
					href="product-detail.jsp" class="bi-bag custom-icon"></a>
			</div>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="HomeController">Home</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="AboutUs">About
							Us</a></li>

					<c:forEach items="${categories}" var="category">
						<li class="nav-item"><a class="nav-link"
							href="ProductController?action=SHOW_PRODUCT_BY_CATEGORY&catId=${category.id}">
								${category.name}</a></li>
					</c:forEach>

				</ul>

				<div class="d-none d-lg-block">
					<c:if test="${empty sessionScope.user }">
						<a href="AuthenicationController?action=LOGIN"
							class="bi-person custom-icon me-3"></a>
					</c:if>

					<c:if test="${not empty sessionScope.user }">
						<a href="AuthenicationController?action=LOGOUT"
							class="bi-person custom-icon me-3"> Hello
							${sessionScope.user.userName} <span> Logout </span>
						</a>
					</c:if>

				</div>

				<div class="d-none d-lg-block">
					<a href="CartController?ACTION=VIEW_CART"
						class="bi-bag custom-icon" aria-hidden="true">
						(${empty sessionScope.cart.items? 0 : sessionScope.cart.items.size()})</a>
				</div>

				<form class="d-flex mx-3" action="ProductController">
					<input class="form-control me-2" type="text" name="action"
						value="SEARCH" hidden="true"> <input class="form-control me-2"
						type="text" placeholder="Product Name" name="searchValue">
					<button class="btn custom-btn" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>