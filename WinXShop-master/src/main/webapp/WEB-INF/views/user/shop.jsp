<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body>
	<%@include file="./header.jsp"%>
	<main class="main bg-light pt-50 pb-50">
		<section class="mb-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="shop-product-fillter">
							<div class="totall-product">
								<p>
									Có <strong class="text-brand">688</strong> sản phẩm cho bạn!
								</p>
							</div>
							<div class="sort-by-product-area">
								<div class="sort-by-cover mr-10">
									<div class="sort-by-product-wrap shadow">
										<div class="sort-by">
											<span><i class="fa-regular fa-grid-2"></i>Hiện:</span>
										</div>
										<div class="sort-by-dropdown-wrap">
											<span> 50 <i class="fa-solid fa-angle-down"></i></span>
										</div>
									</div>
									<div class="sort-by-dropdown">
										<ul>
											<li><a class="active" href="#">50</a></li>
											<li><a href="#">100</a></li>
											<li><a href="#">150</a></li>
											<li><a href="#">200</a></li>
											<li><a href="#">All</a></li>
										</ul>
									</div>
								</div>
								<div class="sort-by-cover">
									<div class="sort-by-product-wrap shadow">
										<div class="sort-by">
											<span><i class="fa-regular fa-arrow-down-arrow-up"></i>Sắp
												xếp theo:</span>
										</div>
										<div class="sort-by-dropdown-wrap">
											<span> Tên <i class="fa-solid fa-angle-down"></i></span>
										</div>
									</div>
									<div class="sort-by-dropdown">
										<ul>
											<li><a class="active" href="#">Tên</a></li>
											<li><a href="#">Giá: Thấp đến Cao</a></li>
											<li><a href="#">Giá: Cao xuống Thấp</a></li>
											<li><a href="#">Ngày bán</a></li>
											<li><a href="#">Đánh giá</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="row product-grid-3">
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-1-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="shop-cart.html"> <i
												class="fa-regular fa-cart-plus"></i>
											</a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">Hot</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Clothing</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Colorful Pattern Shirts</a>
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
												href="shop-cart.html"><i
												class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img"
												src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-1-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
												class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
												class="action-btn hover-up" href="shop-cart.html"> <i
												class="fa-regular fa-cart-plus"></i>
											</a>
										</div>
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="hot">Hot</span>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Clothing</a>
										</div>
										<h2>
											<a href="shop-product-right.html">Colorful Pattern Shirts</a>
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
												href="shop-cart.html"><i
												class="fa-regular fa-credit-card"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-7-1.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-7-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Plain Striola Shirts</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>95%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$338.85 </span> <span class="old-price">$445.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-1-2.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-1-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Landscape Painting
												Shirt</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$123.85 </span> <span class="old-price">$235.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-4-1.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-3-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Letter Print T-Shirt</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>70%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$28.85 </span> <span class="old-price">$45.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-5-2.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-5-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Element Pattern Print
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
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-8-2.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-8-1.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Vintage Henley Shirt</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>98%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$1275.85 </span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-11-1.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-11-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Accessories </a>
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
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-13-1.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-13-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
										</div>
									</div>
									<div class="product-content-wrap">
										<div class="product-category">
											<a href="shop-grid-right.html">Accessories </a>
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
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-3-1.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-3-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Colorful Pattern Shirts</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>90%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$238.85 </span> <span class="old-price">$245.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-2-1.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-2-2.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Cartoon Astronaut
												T-Shirts</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>50%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$138.85 </span> <span class="old-price">$255.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-12 col-sm-6 product-cart">
								<div class="product-cart-wrap mb-30">
									<div class="product-img-action-wrap">
										<div class="product-img product-img-zoom">
											<a href="shop-product-right.html"> <img
												class="default-img" src="assets/imgs/shop/product-7-2.jpg"
												alt="" /> <img class="hover-img"
												src="assets/imgs/shop/product-7-1.jpg" alt="" />
											</a>
										</div>
										<div class="product-action-1">
											<a aria-label="Quick view" class="action-btn hover-up"
												data-bs-toggle="modal" data-bs-target="#quickViewModal">
												<i class="fi-rs-search"></i>
											</a> <a aria-label="Add To Wishlist" class="action-btn hover-up"
												href="shop-wishlist.html"><i class="fi-rs-heart"></i></a> <a
												aria-label="Compare" class="action-btn hover-up"
												href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
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
											<a href="shop-product-right.html">Plain Striola Shirts</a>
										</h2>
										<div class="rating-result" title="90%">
											<span> <span>95%</span>
											</span>
										</div>
										<div class="product-price">
											<span>$338.85 </span> <span class="old-price">$445.8</span>
										</div>
										<div class="product-action-1 show">
											<a aria-label="Add To Cart" class="action-btn hover-up"
												href="shop-cart.html"><i class="fi-rs-shopping-bag-add"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--pagination-->
						<div class="pagination-area mt-15 mb-sm-5 mb-lg-0">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-start">
									<li class="page-item active"><a class="page-link" href="#">01</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">02</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">03</a>
									</li>
									<li class="page-item"><a class="page-link dot" href="#">...</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">16</a>
									</li>
									<li class="page-item"><a class="page-link" href="#"><i
											class="fa-regular fa-chevron-right"></i></a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-lg-3 primary-sidebar sticky-sidebar">
						<!-- my filter -->
						<form class="row d-flex justify-content-center filter-shop">
							<div class="col-md-12">
								<div class="card">
									<article class="filter-group">
										<header class="card-header">
											<a href="#" data-bs-toggle="collapse"
												data-bs-target="#collapse_aside1" data-abc="true"
												aria-expanded="false" class="collapsed"> <i
												class="icon-control fa fa-chevron-down"></i>
												<h4 class="title text-brand-dark">Nhãn hàng</h4>
											</a>
										</header>
										<div class="filter-content collapse" id="collapse_aside1">
											<div class="card-body">
												<div class="pl-10 pr-10">
													<label class="checkbox-btn"> <input type="checkbox" />
														<span class="btn btn-light"> XS </span>
													</label> <label class="checkbox-btn"> <input
														type="checkbox" /> <span class="btn btn-light"> SM
													</span>
													</label> <label class="checkbox-btn"> <input
														type="checkbox" /> <span class="btn btn-light"> LG
													</span>
													</label> <label class="checkbox-btn"> <input
														type="checkbox" /> <span class="btn btn-light">
															Nguyễn Minh Nhật </span>
													</label> <label class="checkbox-btn"> <input
														type="checkbox" /> <span class="btn btn-light">
															XXXL </span>
													</label>
												</div>
											</div>
										</div>
									</article>
									<article class="filter-group">
										<header class="card-header">
											<a href="#" data-bs-toggle="collapse"
												data-bs-target="#collapse_aside2" data-bs-abc="true"
												aria-expanded="false" class="collapsed"> <i
												class="icon-control fa fa-chevron-down"></i>
												<h4 class="title text-brand-dark">Giá</h4>
											</a>
										</header>
										<div class="filter-content collapse show" id="collapse_aside2">
											<div class="card-body">
												<div class="row">
													<div class="col-12 price_range range">
														<div class="price-filter pl-10 pr-10 mt-0">
															<div class="price-filter-inner">
																<div class="pl-10">
																	<div id="slider-range" class=""></div>
																</div>
																<div class="price_slider_amount">
																	<div class="label-input">
																		<span>Khoản giá:</span>
																		<div class="row">
																			<div class="input-group input-group-sm w-50">
																				<input type="text" class="form-control text-center"
																					id="price-start" />
																				<div class="input-group-text">000đ</div>
																			</div>

																			<div class="input-group input-group-sm w-50">
																				<input type="text" class="form-control text-center"
																					id="price-end" />
																				<div class="input-group-text">000đ</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="list-group">
																<div class="list-group-item mb-10 mt-10">
																	<label class="fw-900 mt-15">Điều kiện</label>
																	<div class="custome-checkbox">
																		<input class="form-check-input" type="checkbox"
																			name="checkbox" id="exampleCheckbox11" value="" /> <label
																			class="form-check-label" for="exampleCheckbox11"><span>Mới
																				(1506)</span></label> <br /> <input class="form-check-input"
																			type="checkbox" name="checkbox"
																			id="exampleCheckbox21" value="" /> <label
																			class="form-check-label" for="exampleCheckbox21"><span>Phổ
																				biến (27)</span></label>
																	</div>
																</div>
															</div>
															<button type="submit"
																class="btn btn-outline hover-up col-12">Lộc</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</article>
									<article class="filter-group">
										<header class="card-header">
											<a href="#" data-bs-toggle="collapse"
												data-bs-target="#collapse_aside3" data-bs-abc="true"
												aria-expanded="false" class="collapsed"> <i
												class="icon-control fa fa-chevron-down"></i>
												<h4 class="title text-brand-dark">Dung tích</h4>
											</a>
										</header>
										<div class="filter-content collapse" id="collapse_aside3">
											<div class="card-body">
												<div class="pl-10 pr-10">
													<label class="checkbox-btn"> <input type="checkbox" />
														<span class="btn btn-light"> 300 ml </span>
													</label> <label class="checkbox-btn"> <input
														type="checkbox" /> <span class="btn btn-light">
															400 ml</span>
													</label> <label class="checkbox-btn"> <input
														type="checkbox" /> <span class="btn btn-light">
															500 ml</span>
													</label>
												</div>
											</div>
										</div>
									</article>
									<article class="filter-group">
										<header class="card-header">
											<a href="#" data-bs-toggle="collapse"
												data-bs-target="#collapse_aside4" data-bs-abc="true"
												class="collapsed" aria-expanded="false"> <i
												class="icon-control fa fa-chevron-down"></i>
												<h4 class="title text-brand-dark">Đánh giá</h4>
											</a>
										</header>
										<div class="filter-content collapse" id="collapse_aside4">
											<div class="card-body">
												<form class="row">
													<div class="col-12 price_range range">
														<div class="price-filter p-10 mt-0">
															<div class="price-filter-inner">
																<div class="pl-10">
																	<div id="review-range" class=""></div>
																</div>
																<div class="price_slider_amount">
																	<div class="label-input">
																		<span>Khoản điểm:</span>
																		<div class="row">
																			<div class="input-group input-group-sm w-50">
																				<input type="text" class="form-control text-center"
																					id="review-start" />
																				<div class="input-group-text">
																					<i class="fa-solid fa-star text-warning"></i>
																				</div>
																			</div>

																			<div class="input-group input-group-sm w-50">
																				<input type="text" class="form-control text-center"
																					id="review-end" />
																				<div class="input-group-text">
																					<i class="fa-solid fa-star text-warning"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<button type="submit"
																class="btn btn-outline hover-up col-12 mt-20">
																Lộc</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</article>
								</div>
							</div>
						</form>

						<!-- end my filter -->

						<!-- Product sidebar Widget -->
						<div
							class="sidebar-widget product-sidebar mb-30 p-30 bg-white border-radius-10">
							<div class="widget-header position-relative mb-20 pb-10 bg-white">
								<h5 class="widget-title mb-10">New products</h5>
								<div class="bt-1 border-color-1"></div>
							</div>
							<div class="single-post clearfix">
								<div class="image">
									<img src="assets/imgs/shop/product-16-2.jpg" alt="#" />
								</div>
								<div class="content pt-10">
									<h5>
										<a href="shop-product-detail.html">Chen Cardigan</a>
									</h5>
									<p class="price mb-0 mt-5">$99.50</p>
								</div>
							</div>
							<div class="single-post clearfix">
								<div class="image">
									<img src="assets/imgs/shop/product-7-1.jpg" alt="#" />
								</div>
								<div class="content pt-10">
									<h6>
										<a href="shop-product-detail.html">Chen Sweater</a>
									</h6>
									<p class="price mb-0 mt-5">$89.50</p>
									<div class="product-rate">
										<div class="product-rating" style="width: 80%"></div>
									</div>
								</div>
							</div>
							<div class="single-post clearfix">
								<div class="image">
									<img src="assets/imgs/shop/product-7-1.jpg" alt="#" />
								</div>
								<div class="content pt-10">
									<h6>
										<a href="shop-product-detail.html">Colorful Jacket</a>
									</h6>
									<p class="price mb-0 mt-5">$25</p>
									<div class="product-rate">
										<div class="product-rating" style="width: 60%"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
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
											href="shop-cart.html"><i class="fa-regular fa-cart-plus"></i></a>
										<a aria-label="Compare" class="action-btn hover-up"
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
	<%@include file="./footer.jsp"%>
	<%@include file="./script.jsp"%>
</body>
</html>