<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body>
	<%@include file="./header.jsp"%>
	<!-- main -->
	<main class="main">
		<!-- Bản tin -->
		<section class="home-slider position-relative pt-50">
			<div class="hero-slider-1 dot-style-1 dot-style-1-position-1">
				<div class="single-hero-slider single-animation-wrap">
					<div class="container">
						<div class="row align-items-center slider-animated-1">
							<div class="col-lg-5 col-md-6">
								<div class="hero-slider-content-2">
									<h1 class="animated fw-900 text-brand title">${newsList[0].tenTin}</h1>
									<p class="animated content">${newsList[0].noiDung}</p>
									<a class="animated btn btn-brush btn-brush-3"
										href="shop-product-right.html"> Shop Now </a>
								</div>
							</div>
							<div class="col-lg-7 col-md-6">
								<div class="single-slider-img single-slider-img-1">
									<img class="animated slider-1-1" src="${newsList[0].anh}"
										alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="single-hero-slider single-animation-wrap">
					<div class="container">
						<div class="row align-items-center slider-animated-1">
							<div class="col-lg-5 col-md-6">
								<div class="hero-slider-content-2">
									<h4 class="animated">Hot promotions</h4>
									<h2 class="animated fw-900">Fashion Trending</h2>
									<h1 class="animated fw-900 text-7">Great Collection</h1>
									<p class="animated">Save more with coupons & up to 20% off
									</p>
									<a class="animated btn btn-brush btn-brush-2"
										href="shop-product-right.html"> Discover Now </a>
								</div>
							</div>
							<div class="col-lg-7 col-md-6">
								<div class="single-slider-img single-slider-img-1">
									<img class="animated slider-1-2"
										src="./resources/imgs/slider/slider-2.png" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="single-hero-slider single-animation-wrap">
					<div class="container">
						<div class="row align-items-center slider-animated-1">
							<div class="col-lg-5 col-md-6">
								<div class="hero-slider-content-2">
									<h4 class="animated">Upcoming Offer</h4>
									<h2 class="animated fw-900">Big Deals From</h2>
									<h1 class="animated fw-900 text-8">Manufacturer</h1>
									<p class="animated">Clothing, Shoes, Bags, Wallets...</p>
									<a class="animated btn btn-brush btn-brush-1"
										href="shop-product-right.html"> Shop Now </a>
								</div>
							</div>
							<div class="col-lg-7 col-md-6">
								<div class="single-slider-img single-slider-img-1">
									<img class="animated slider-1-3"
										src="./resources/imgs/slider/slider-3.png" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slider-arrow hero-slider-1-arrow"></div>
		</section>
		<!-- end bản tin -->
		<section class="featured section-padding position-relative">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-1.png" alt="" />
							<h4 class="bg-1">Free Shipping</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-2.png" alt="" />
							<h4 class="bg-3">Online Order</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-3.png" alt="" />
							<h4 class="bg-2">Save Money</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-4.png" alt="" />
							<h4 class="bg-4">Promotions</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-5.png" alt="" />
							<h4 class="bg-5">Happy Sell</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-6.png" alt="" />
							<h4 class="bg-6">24/7 Support</h4>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="section-padding">
			<div class="container">
				<h3 class="section-title mb-20 wow fadeIn animated">
					<span>Featured</span> Brands
				</h3>
				<div
					class="carausel-6-columns-cover position-relative wow fadeIn animated">
					<div class="slider-arrow slider-arrow-2 carausel-6-columns-arrow"
						id="carausel-6-columns-3-arrows"></div>
					<div class="carausel-6-columns text-center"
						id="carausel-6-columns-3">
						<div class="brand-logo">
							<img class="img-grey-hover"
								src="./resources/imgs/banner/brand-1.png" alt="" />
						</div>
						<div class="brand-logo">
							<img class="img-grey-hover"
								src="./resources/imgs/banner/brand-2.png" alt="" />
						</div>
						<div class="brand-logo">
							<img class="img-grey-hover"
								src="./resources/imgs/banner/brand-3.png" alt="" />
						</div>
						<div class="brand-logo">
							<img class="img-grey-hover"
								src="./resources/imgs/banner/brand-4.png" alt="" />
						</div>
						<div class="brand-logo">
							<img class="img-grey-hover"
								src="./resources/imgs/banner/brand-5.png" alt="" />
						</div>
						<div class="brand-logo">
							<img class="img-grey-hover"
								src="./resources/imgs/banner/brand-6.png" alt="" />
						</div>
						<div class="brand-logo">
							<img class="img-grey-hover"
								src="./resources/imgs/banner/brand-3.png" alt="" />
						</div>
					</div>
				</div>
			</div>
		</section>
		<section
			class="product-tabs section-padding position-relative wow fadeIn animated">
			<div class="bg-square"></div>
			<div class="container">
				<div class="tab-header">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="nav-tab-one"
								data-bs-toggle="tab" data-bs-target="#tab-one" type="button"
								role="tab" aria-controls="tab-one" aria-selected="true">
								Tất cả</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="nav-tab-two" data-bs-toggle="tab"
								data-bs-target="#tab-two" type="button" role="tab"
								aria-controls="tab-two" aria-selected="false">Phổ biến</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="nav-tab-three" data-bs-toggle="tab"
								data-bs-target="#tab-three" type="button" role="tab"
								aria-controls="tab-three" aria-selected="false">Mới</button>
						</li>
					</ul>
					<a href="#" class="view-more d-none d-md-flex">View More<svg
							width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24"
							fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M7 8L10.5 11.5L7 15" stroke="currentColor"
								stroke-linecap="round" stroke-linejoin="round" />
                <path d="M13 8L16.5 11.5L13 15" stroke="currentColor"
								stroke-linecap="round" stroke-linejoin="round" />
              </svg>
					</a>
				</div>
				<!--End nav-tabs-->

				<div class="tab-content wow fadeIn animated" id="myTabContent">
					<div class="tab-pane fade show active" id="tab-one" role="tabpanel"
						aria-labelledby="tab-one">
						<div class="row product-grid-4">
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="product-detail.htm"> <img class="default-img"
												src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
												alt="" /> <img class="hover-img"
												src="./resources/imgs/shop/product-1-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">Hot</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">${dsSP[0].nhanHang.tenNH}</a>
										</div>
										<h2>
											<a href="shop-product-right.html">${dsSP[0].tenSP}</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>90%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="http://wp.alithemes.com/html/evara/evara-frontend/./resources/imgs/shop/product-4-1.jpg"
												alt="" /> <img class="hover-img"
												src="./resources/imgs/shop/product-2-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="new">New</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Clothing</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Plain Color Pocket
												Shirts</a>
										</h2>
										<div class="rating-result" title="9/10">
											<span> <span>50%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$138.85 </span> <span class="old-price">$255.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-3-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-3-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="best">Best Sell</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Shirts</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Vintage Floral Oil
												Shirts</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>9.5/10</span>
											</span>
										</div>
										<div class="product-price">
											<span>$338.85 </span> <span class="old-price">$445.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-4-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-4-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="sale">Sale</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Clothing</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Colorful Hawaiian
												Shirts</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$123.85 </span> <span class="old-price">$235.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-xs-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-5-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-5-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">-30%</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Shirt</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Flowers Sleeve Lapel
												Shirt</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$28.85 </span> <span class="old-price">$45.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-xs-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-6-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-6-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">-22%</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Shirts</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Ethnic Floral Casual
												Shirts</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-xs-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-7-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-7-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="new">New</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Shoes</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Stitching Hole Sandals</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>98%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$1275.85 </span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-8-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-8-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Shirt</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Mens Porcelain Shirt</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End product-grid-4-->
					</div>
					<!--En tab one (Featured)-->
					<div class="tab-pane fade" id="tab-two" role="tabpanel"
						aria-labelledby="tab-two">
						<div class="row product-grid-4">
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-9-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-9-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">Hot</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Donec </a>
										</div>
										<h2>
											<a href="shop-product-right.html">Lorem ipsum dolor</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>90%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-10-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-10-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="new">New</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Music</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Sed tincidunt interdum</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>50%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$138.85 </span> <span class="old-price">$255.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-11-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-11-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="best">Best Sell</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Watch</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Fusce metus orci</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>95%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$338.85 </span> <span class="old-price">$445.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-12-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-12-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="sale">Sale</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Music</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Integer venenatis
												libero</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$123.85 </span> <span class="old-price">$235.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-13-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-13-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">-30%</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Speaker</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Cras tempor orci id</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$28.85 </span> <span class="old-price">$45.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-14-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-14-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">-22%</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Camera</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Nullam cursus mi qui</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-15-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-15-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="new">New</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Phone</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Fusce fringilla
												ultrices</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>98%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$1275.85 </span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-1-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-1-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Accessories </a>
										</div>
										<h2>
											<a href="shop-product-right.html">Sed sollicitudin est</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End product-grid-4-->
					</div>
					<!--En tab two (Popular)-->
					<div class="tab-pane fade" id="tab-three" role="tabpanel"
						aria-labelledby="tab-three">
						<div class="row product-grid-4">
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="./resources/imgs/shop/product-2-1.jpg" alt="" /> <img
												class="hover-img"
												src="./resources/imgs/shop/product-2-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">Hot</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Music</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Donec ut nisl rutrum</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>90%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img class="hover-img"
												src="./resources/imgs/shop/product-3-1.jpg" alt="" /> <img
												class="default-img"
												src="./resources/imgs/shop/product-3-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="new">New</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Music</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Nullam dapibus pharetra</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>50%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$138.85 </span> <span class="old-price">$255.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img class="hover-img"
												src="./resources/imgs/shop/product-4-1.jpg" alt="" /> <img
												class="default-img"
												src="./resources/imgs/shop/product-4-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="best">Best Sell</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Watch</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Morbi dictum finibus</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>95%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$338.85 </span> <span class="old-price">$445.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img class="hover-img"
												src="./resources/imgs/shop/product-5-1.jpg" alt="" /> <img
												class="default-img"
												src="./resources/imgs/shop/product-5-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="sale">Sale</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Music</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Nunc volutpat massa</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$123.85 </span> <span class="old-price">$235.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img class="hover-img"
												src="./resources/imgs/shop/product-6-1.jpg" alt="" /> <img
												class="default-img"
												src="./resources/imgs/shop/product-6-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">-30%</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Speaker</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Nullam ultricies luctus</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$28.85 </span> <span class="old-price">$45.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img class="hover-img"
												src="./resources/imgs/shop/product-7-1.jpg" alt="" /> <img
												class="default-img"
												src="./resources/imgs/shop/product-7-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">-22%</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Camera</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Nullam mattis enim</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img class="hover-img"
												src="./resources/imgs/shop/product-8-1.jpg" alt="" /> <img
												class="default-img"
												src="./resources/imgs/shop/product-8-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="new">New</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Phone</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Vivamus sollicitudin</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>98%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$1275.85 </span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img class="hover-img"
												src="./resources/imgs/shop/product-9-1.jpg" alt="" /> <img
												class="default-img"
												src="./resources/imgs/shop/product-9-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="cart.htm"><i
												class="fa-regular fa-cart-plus"></i> </a>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Accessories </a>
										</div>
										<h2>
											<a href="shop-product-right.html"> Donec ut nisl rutrum</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Buy Now" class="action-btn hover-up"
												href="cart.htm"><i class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End product-grid-4-->
					</div>
					<!--En tab three (New added)-->
				</div>
				<!--End tab-content-->
			</div>
		</section>

		<section class="section-padding bg-white">
			<div class="container wow fadeIn animated">
				<h3 class="section-title mb-20">Sản Phẩm Mới</h3>
				<div class="carausel-6-columns-cover position-relative">
					<div class="slider-arrow slider-arrow-2 carausel-6-columns-arrow"
						id="carausel-6-columns-2-arrows"></div>
					<div class="carausel-6-columns carausel-arrow-center"
						id="carausel-6-columns-2">
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
										alt="" /> <img class="hover-img"
										src="./resources/imgs/shop/product-2-2.jpg" alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>

								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="hot">Hot</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Lorem ipsum dolor</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> </span>
								</div>
								<div class="product-price">
									<span>$238.85 </span> <span class="old-price">$245.8</span>
								</div>
							</div>
						</div>
						<!--End product-cart-wrap-2-->
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="./resources/imgs/shop/product-4-1.jpg" alt="" /> <img
										class="hover-img" src="./resources/imgs/shop/product-4-2.jpg"
										alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>
								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="new">New</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Aliquam posuere</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> </span>
								</div>
								<div class="product-price">
									<span>$173.85 </span> <span class="old-price">$185.8</span>
								</div>
							</div>
						</div>
						<!--End product-cart-wrap-2-->
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="./resources/imgs/shop/product-4-1.jpg" alt="" /> <img
										class="hover-img" src="./resources/imgs/shop/product-4-2.jpg"
										alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>
								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="new">New</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Aliquam posuere</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> </span>
								</div>
								<div class="product-price">
									<span>$173.85 </span> <span class="old-price">$185.8</span>
								</div>
							</div>
						</div>
						<!--End product-cart-wrap-2-->
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="./resources/imgs/shop/product-4-1.jpg" alt="" /> <img
										class="hover-img" src="./resources/imgs/shop/product-4-2.jpg"
										alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>
								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="new">New</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Aliquam posuere</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> </span>
								</div>
								<div class="product-price">
									<span>$173.85 </span> <span class="old-price">$185.8</span>
								</div>
							</div>
						</div>
						<!--End product-cart-wrap-2-->
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="./resources/imgs/shop/product-6-1.jpg" alt="" /> <img
										class="hover-img" src="./resources/imgs/shop/product-5-1.jpg"
										alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>
								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="new">New</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Aliquam posuere</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> </span>
								</div>
								<div class="product-price">
									<span>$173.85 </span> <span class="old-price">$185.8</span>
								</div>
							</div>
						</div>
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="./resources/imgs/shop/product-6-1.jpg" alt="" /> <img
										class="hover-img" src="./resources/imgs/shop/product-5-1.jpg"
										alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>
								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="new">New</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Aliquam posuere</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> 90%</span>
								</div>
								<div class="product-price">
									<span>$173.85 </span> <span class="old-price">$185.8</span>
								</div>
							</div>
						</div>
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="./resources/imgs/shop/product-6-1.jpg" alt="" /> <img
										class="hover-img" src="./resources/imgs/shop/product-5-1.jpg"
										alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>
								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="new">New</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Aliquam posuere</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> </span>
								</div>
								<div class="product-price">
									<span>$173.85 </span> <span class="old-price">$185.8</span>
								</div>
							</div>
						</div>
						<!--End product-cart-wrap-2-->
						<div class="product-cart-wrap small hover-up">
							<div class="product-img-action-wrap">
								<div class="product-img product-img-zoom">
									<a href="shop-product-right.html"> <img class="default-img"
										src="./resources/imgs/shop/product-3-1.jpg" alt="" /> <img
										class="hover-img" src="./resources/imgs/shop/product-4-2.jpg"
										alt="" />
									</a>
								</div>
								<div class="product-action-1">
									<a aria-label="Quick view" class="action-btn small hover-up"
										data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
										class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
										class="action-btn small hover-up" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i> </a>
								</div>
								<div
									class="product-badges product-badges-position product-badges-mrg">
									<span class="new">New</span>
								</div>
							</div>
							<div class="product-content-wrap">
								<h2>
									<a href="shop-product-right.html">Aliquam posuere</a>
								</h2>
								<div class="rating-result" title="90%">
									<span> </span>
								</div>
								<div class="product-price">
									<span>$173.85 </span> <span class="old-price">$185.8</span>
								</div>
							</div>
						</div>
						<!--End product-cart-wrap-2-->
					</div>
				</div>
			</div>
		</section>
		<section class="deals section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 deal-co">
						<div class="deal wow fadeIn animated mb-md-4 mb-sm-4 mb-lg-0">
							<div class="deal-top">
								<h2 class="text-brand">Deal of the Day</h2>
							</div>
							<div class="deal-content">
								<h6 class="product-title">
									<a href="shop-product-right.html">Summer Collection New
										Morden Design</a>
								</h6>
							</div>
							<div class="deal-bottom">
								<p>Hết hạn trong:</p>
								<div class="deals-countdown"
									data-countdown="2025/03/25 00:00:00"></div>
								<a href="shop-grid-right.html" class="btn hover-up">Shop Now
									<i class="fi-rs-arrow-right"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 deal-co">
						<div class="deal wow fadeIn animated">
							<div class="deal-top">
								<h2 class="text-brand">Men Clothing</h2>
								<h5>Shirt & Bag</h5>
							</div>
							<div class="deal-content">
								<h6 class="product-title">
									<a href="shop-product-right.html">Try something new on
										vacation</a>
								</h6>
							</div>
							<div class="deal-bottom">
								<p>Hurry Up! Offer End In:</p>
								<div class="deals-countdown"
									data-countdown="2026/03/25 00:00:00"></div>
								<a href="shop-grid-right.html" class="btn hover-up">Shop Now
									<i class="fi-rs-arrow-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="bg-grey-9 section-padding">
			<div class="container pt-25 pb-25">
				<div class="heading-tab d-flex">
					<div class="heading-tab-left wow fadeIn animated">
						<h3 class="section-title mb-20">Bán chạy nhất</h3>
					</div>
				</div>
				<div class="row">

					<div class="col-lg-9 col-md-12">
						<div class="tab-content wow fadeIn animated" id="myTabContent-1">
							<div class="tab-pane fade show active" id="tab-one-1"
								role="tabpanel" aria-labelledby="tab-one-1">
								<div
									class="carausel-4-columns-cover arrow-center position-relative">
									<div
										class="slider-arrow slider-arrow-2 carausel-4-columns-arrow"
										id="carausel-4-columns-arrows"></div>
									<div class="carausel-4-columns carausel-arrow-center"
										id="carausel-4-columns">
										<div class="product-cart-wrap small">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-4-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-4-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"><i
														class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fa-regular fa-cart-plus"></i> </a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="new">New</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<h2>
													<a href="shop-product-right.html">Aliquam posuere</a>
												</h2>
												<div class="rating-result">
													<span>9/10 </span>
												</div>
												<div class="product-price">
													<span>$173.85 </span> <span class="old-price">$185.8</span>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap small">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-4-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-4-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"><i
														class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fa-regular fa-cart-plus"></i> </a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="new">New</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<h2>
													<a href="shop-product-right.html">Aliquam posuere</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> </span>
												</div>
												<div class="product-price">
													<span>$173.85 </span> <span class="old-price">$185.8</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--End tab-pane-->
							<div class="tab-pane fade" id="tab-two-1" role="tabpanel"
								aria-labelledby="tab-two-1">
								<div
									class="carausel-4-columns-cover arrow-center position-relative">
									<div
										class="slider-arrow slider-arrow-2 carausel-4-columns-arrow"
										id="carausel-4-columns-2-arrows"></div>
									<div class="carausel-4-columns carausel-arrow-center"
										id="carausel-4-columns-2">
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-6-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-6-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="hot">Hot</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Cotton Leaf Printed 2</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$238.85 </span> <span class="old-price">$245.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-7-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-7-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="new">New</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Smart Speaker</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$138.85 </span> <span class="old-price">$145.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-5-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-5-1.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="best">Best Sell</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Hugy Speaker</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$152.85 </span> <span class="old-price">$156.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-10-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-10-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="hot">-12%</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Smart Speaker</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$238.85 </span> <span class="old-price">$245.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-12-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-12-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="sale">Sale</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Cotton Leaf Printed</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$238.85 </span> <span class="old-price">$245.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="tab-three-1" role="tabpanel"
								aria-labelledby="tab-three-1">
								<div
									class="carausel-4-columns-cover arrow-center position-relative">
									<div
										class="slider-arrow slider-arrow-2 carausel-4-columns-arrow"
										id="carausel-4-columns-3-arrows"></div>
									<div class="carausel-4-columns carausel-arrow-center"
										id="carausel-4-columns-3">
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-8-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-8-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="hot">Hot</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Cotton Leaf Printed</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$238.85 </span> <span class="old-price">$245.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-13-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-13-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="new">New</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Smart Speaker</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$138.85 </span> <span class="old-price">$145.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-14-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-14-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="best">Best Sell</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Hugy Speaker</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$152.85 </span> <span class="old-price">$156.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-15-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-15-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="hot">-12%</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Smart Speaker</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$238.85 </span> <span class="old-price">$245.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
										<div class="product-cart-wrap">
											<div class="product-img-action-wrap">
												<div class="product-img product-img-zoom">
													<a href="shop-product-right.html"> <img
														class="default-img"
														src="./resources/imgs/shop/product-11-1.jpg" alt="" /> <img
														class="hover-img"
														src="./resources/imgs/shop/product-11-2.jpg" alt="" />
													</a>
												</div>
												<div class="product-action-1">
													<a aria-label="Quick view"
														class="action-btn small hover-up" data-bs-toggle="modal"
														data-bs-target="#quickViewModal"> <i class="fi-rs-eye"></i>
													</a> <a aria-label="Add To Card"
														class="action-btn small hover-up" href="cart.htm"><i
														class="fi-rs-heart"></i></a> <a aria-label="Compare"
														class="action-btn small hover-up" href="shop-compare.html"><i
														class="fi-rs-shuffle"></i></a>
												</div>
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="sale">Sale</span>
												</div>
											</div>
											<div class="product-content-wrap">
												<div class="product-category">
													<a href="shop-grid-right.html">Watch</a>
												</div>
												<h2>
													<a href="shop-product-right.html">Cotton Leaf Printed</a>
												</h2>
												<div class="rating-result" title="90%">
													<span> <span>70%</span>
													</span>
												</div>
												<div class="product-price">
													<span>$238.85 </span> <span class="old-price">$245.8</span>
												</div>
												<div class="product-action-1 show">
													<a aria-label="Add To Cart" class="action-btn hover-up"
														href="cart.htm"><i class="fi-rs-shopping-bag-add"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End tab-content-->
					</div>
					<!--End Col-lg-9-->
				</div>
			</div>
		</section>
	</main>

	<!--footer  -->
	<%@include file="./footer.jsp"%>
	<%@include file="./script.jsp"%>
	<!-- Quick view -->
	<div class="modal fade custom-modal" id="quickViewModal" tabindex="-1"
		aria-labelledby="quickViewModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6 col-sm-12 col-xs-12">
							<img
								src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
								class="rounded float-left" alt="..." />
						</div>
						<div class="col-md-6 col-sm-12 col-xs-12">
							<div class="detail-info">
								<h3 class="title-detail mt-30">Colorful Pattern Shirts
									HD450</h3>
								<div class="product-detail-rating">
									<div class="pro-details-brand">
										<span> Brands: <a href="shop-grid-right.html">Bootstrap</a></span>
									</div>
									<div class="product-rate-cover text-end">
										<div class="rating-result" title="90%">
											<span> <span>9/10</span>
											</span> <span class="font-small ml-5 text-muted"> (25
												reviews)</span>
										</div>
									</div>
								</div>
								<div class="clearfix product-price-cover">
									<div class="product-price primary-color float-left">
										<ins>
											<span class="text-brand">$120.00</span>
										</ins>
										<ins>
											<span class="old-price font-md ml-15">$200.00</span>
										</ins>
										<span class="save-price font-md color3 ml-15">25% Off</span>
									</div>
								</div>
								<div class="bt-1 border-color-1 mt-15 mb-15"></div>
								<div class="short-desc mb-30">
									<p class="font-sm">Lorem ipsum dolor, sit amet consectetur
										adipisicing elit. Aliquam rem officia, corrupti reiciendis
										minima nisi modi,!</p>
								</div>

								<div class="attr-detail attr-color mb-15">
									<strong class="mr-10">Color</strong>
									<ul class="list-filter color-filter">
										<li><a href="#" data-color="Red"><span
												class="product-color-red"></span></a></li>
										<li><a href="#" data-color="Yellow"><span
												class="product-color-yellow"></span></a></li>
										<li class="active"><a href="#" data-color="White"><span
												class="product-color-white"></span></a></li>
										<li><a href="#" data-color="Orange"><span
												class="product-color-orange"></span></a></li>
										<li><a href="#" data-color="Cyan"><span
												class="product-color-cyan"></span></a></li>
										<li><a href="#" data-color="Green"><span
												class="product-color-green"></span></a></li>
										<li><a href="#" data-color="Purple"><span
												class="product-color-purple"></span></a></li>
									</ul>
								</div>
								<div class="attr-detail attr-size">
									<strong class="mr-10">Dung tích</strong>
									<ul class="list-filter size-filter font-small text-lowercase">
										<li><a href="#">300 <span class="text-lowercase">ml</span></a></li>
										<li class="active"><a href="#">400 <span
												class="text-lowercase">ml</span>
										</a></li>
										<li><a href="#">500 <span class="text-lowercase">ml</span></a></li>
									</ul>
								</div>
								<div class="bt-1 border-color-1 mt-30 mb-30"></div>
								<div class="detail-extralink">
									<div class="detail-qty border radius">
										<a href="#" class="qty-down"><i
											class="fa-solid fa-angle-down"></i></a> <span class="qty-val">1</span>
										<a href="#" class="qty-up"><i class="fa-solid fa-angle-up"></i></a>
									</div>
									<div class="product-extra-link2">
										<button type="submit" class="button button-add-to-cart">
											Mua Ngay</button>
										<a aria-label="Add To Card" class="action-btn hover-up"
											href="cart.htm"><i class="fa-regular fa-cart-plus"></i></a> <a
											aria-label="Compare" class="action-btn hover-up"
											href="shop-compare.html"><i
											class="fa-regular fa-bags-shopping"></i></a>
									</div>
								</div>
								<ul class="product-meta font-xs color-grey mt-50">
									<li class="mb-5">Mã: <a href="#">SP0000001</a></li>
									<li class="mb-5">Tags: <a href="#" rel="tag">Cloth</a>, <a
										href="#" rel="tag">Women</a>, <a href="#" rel="tag">Dress</a>
									</li>
									<li>Sẵn hàng:<span class="in-stock text-success ml-5">8
											sản phẩm có sẵn</span>
									</li>
								</ul>
							</div>
							<!-- Detail Info -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>