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

        <section class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </section>
    
        <main>

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <a class="navbar-brand" href="index.html">
                        <strong>Kohi</strong>
                    </a>

                    <div class="d-lg-none">
                        <a href="sign-in.html" class="bi-person custom-icon me-3"></a>

                        <a href="product-detail.html" class="bi-bag custom-icon"></a>
                    </div>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About Us</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="products.html">Products</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>

                        <div class="d-none d-lg-block">
                            <a href="sign-in.html" class="bi-person custom-icon me-3"></a>

                            <a href="product-detail.html" class="bi-bag custom-icon"></a>
                        </div>
                    </div>
                </div>
            </nav>

            <header class="site-header section-padding d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-10 col-12">
                            <h1>
                                <span class="d-block text-dark">Choose your</span>
                                <span class="d-block text-dark">favorite coffees</span>
                            </h1>
                        </div>
                    </div>
                </div>
            </header>

            <section class="products section-padding">
                <div class="container">
                    <div class="row">
                        
                        <div class="col-12">
                            <h2 class="mb-5">New Arrivals</h2>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/product/5PACKSHOT_SUGARPLUMPARACHUTE_628x.webp" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert me-auto">New Arrival</span>

                                    <a href="#" class="bi-heart-fill product-icon"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">SugarPlum FanFare Edition Parachutes</a>
                                        </h5>

                                        <span class="product-info-item-label">Taste:</span>
                                        <span class="product-info-item-value">Candied cherry, plum and cocoa.</span>
                                    </div>

                                    <small class="product-price text-muted ms-auto">$13</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/product/AWOL_FRONT_Sticker_add4b227-213d-403a-a83b-0ec3908ebb92_628x.webp" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert">New Arrival</span>

                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Awol - Decaf Blend</a>
                                        </h5>

                                        <span class="product-info-item-label">Taste:</span>
                                        <span class="product-info-item-value">Sweet caramel, mild citrus & cherry flavours with a buttery mouthfeel.</span>
                                    </div>

                                    <small class="product-price text-muted ms-auto">$22</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/product/KILLERBEE_FRONT_667x.webp" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Killerbee</a>
                                        </h5>

                                        <span class="product-info-item-label">Taste:</span>
                                        <span class="product-info-item-value">Caramel, roasted almonds, cacao.</span>
                                    </div>

                                    <small class="product-price text-muted ms-auto">$20</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <h2 class="mb-5">Popular</h2>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/product/HONDURASLOSNACIMIENTOS1KG_628x.webp" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert">Trending</span>

                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Honduras Los Nacimientos By Jose Wilman Benitez</a>
                                        </h5>

                                        <span class="product-info-item-label">Taste:</span>
                                        <span class="product-info-item-value">Lemon meringue & caramel.</span>
                                    </div>

                                    <small class="product-price text-muted ms-auto">$24</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/product/KENYAKARATINA250G_628x.webp" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Kenya Karatina AA By Barichu Coop.</a>
                                        </h5>

                                        <span class="product-info-item-label">Taste:</span>
                                        <span class="product-info-item-value">Blackcurrant & peach.</span>
                                    </div>

                                    <small class="product-price text-muted ms-auto">$26</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/product/c9v0QG2M_667x.webp" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Gesha Duo By Elias & Shady Bayter</a>
                                        </h5>

                                        <span class="product-info-item-label">Taste:</span>
                                        <span class="product-info-item-value">Apricot & jasmine.</span>
                                    </div>

                                    <small class="product-price text-muted ms-auto">$50</small>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-10 me-auto mb-4">
                        <h4 class="text-white mb-3"><a href="index.html">Kohi</h4>
                        <p class="copyright-text text-muted mt-lg-5 mb-4 mb-lg-0">Copyright © 2022 <strong>Kohi</strong></p>
                        <br>
                        <p class="copyright-text">Designed by <a href="https://www.tooplate.com/" target="_blank">Tooplate</a></p>
                    </div>

                    <div class="col-lg-5 col-8">
                        <h5 class="text-white mb-3">Sitemap</h5>

                        <ul class="footer-menu d-flex flex-wrap">
                            <li class="footer-menu-item"><a href="about.html" class="footer-menu-link">About Us</a></li>

                            <li class="footer-menu-item"><a href="products.html" class="footer-menu-link">Products</a></li>


                            <li class="footer-menu-item"><a href="contact.html" class="footer-menu-link">Contact</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-4">
                        <h5 class="text-white mb-3">Social</h5>

                        <ul class="social-icon">

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                        </ul>
                    </div>

                </div>
            </div>
        </footer>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/Headroom.js"></script>
        <script src="js/jQuery.headroom.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
