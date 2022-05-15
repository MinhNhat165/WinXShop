<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body style="max-width: 100vw; overflow-x: hidden;">
	<%@include file="./header.jsp"%>
	<!-- main -->

	<div class="alert-flag" aType='${message.type}'
		aMessage="${message.message }"></div>
	<!-- end flag  -->
	<!-- end flag -->

	<main class="main" style="max-width: 100vw; overflow-x: hidden;">
		<!-- Bản tin -->
		<section class="home-slider position-relative pt-50">
			<div class="hero-slider-1 dot-style-1 dot-style-1-position-1">
				<c:forEach var="news" items="${newsList }">
					<div class="single-hero-slider single-animation-wrap">
						<div class="container">
							<div class="row align-items-center slider-animated-1">
								<div class="col-lg-5 col-md-6">
									<div class="hero-slider-content-2">
										<h1 class="animated fw-900 text-brand title">${news.tenTin}</h1>
										<p class="animated content">${news.noiDung}</p>
										<a class="animated btn btn-brush btn-brush-3"
											style="background-image: url('http://wp.alithemes.com/html/evara/evara-frontend/assets/imgs/theme/btn-brush-bg-2.png');"
											href="shop.htm"> Shop Now </a>
									</div>
								</div>
								<div class="col-lg-7 col-md-6">
									<div class="single-slider-img single-slider-img-1">
										<img class="animated slider-1-1"
											src="./resources/imgs/${news.anh}" alt="" />
									</div>
								</div>
							</div>
						</div>

					</div>
				</c:forEach>


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
							<h4 class="bg-1">Miễn phí vận chuyển</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-2.png" alt="" />
							<h4 class="bg-3">Đặt hàng online</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-3.png" alt="" />
							<h4 class="bg-2">Tiết kiệm tiền</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-4.png" alt="" />
							<h4 class="bg-4">Quảng bá rộng rãi</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-5.png" alt="" />
							<h4 class="bg-5">Bán hàn vui vẻ</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 mb-md-3 mb-lg-0">
						<div class="banner-features wow fadeIn animated hover-up">
							<img src="./resources/imgs/theme/icons/feature-6.png" alt="" />
							<h4 class="bg-6">Hổ trợ 24/7</h4>
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
						<c:forEach var="p" items="${brandList}">
							<div class="brand-logo">
								<img class="img-grey-hover" src="./resources/imgs/${p.anh}"
									alt="" />
							</div>
						</c:forEach>
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
					<a href="shop.htm" class="view-more d-none d-md-flex">Xem thêm<svg
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
							<c:forEach var="p" items="${productList}">
								<form id="checkout${p.maSP }"
									class="invisible position-absolute" action="checkout.htm"
									method="post">
									<input class="invisible position-absolute" type="number"
										name="soLuong" min="1" step="1" value="1" style="width: 76px">
									<input type="text" name="sanPham"
										class="invisible position-absolute" value="${p.maSP}">
								</form>
								<div data-name="${p.tenSP }" data-brand="${p.nhanHang.tenNH}"
									data-review="${p.diemDG==0?'chưa có đáng giá
									nào': p.diemDG }"
									data-price="${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}"
									data-old-price="${p.gia }" data-ml="${p.dungTich }"
									data-id="${p.maSP }" data-quantity="${p.slt }"
									data-type="${p.loai}" data-description="${p.moTa }"
									data-img="${p.anh }"
									class="col-lg-3 col-md-4 col-12 col-sm-6 product product-cart">
									<div class="product-cart-wrap mb-30">
										<div class="product-img-action-wrap">
											<div class="product-img product-img-zoom">
												<a href="product-detail/${p.maSP }.htm"> <img
													style="min-height: 260px" class="default-img"
													src="./resources/imgs/${p.anh}" alt="" />
												</a>
											</div>
											<div class="product-action-1">
												<a aria-label="Quick view" class="action-btn hover-up"
													data-bs-toggle="modal" onclick="handleQuickView(this)"
													data-bs-target="#quickViewModal"><i
													class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
													class="action-btn hover-up" href="cart/add/${p.maSP}.htm"><i
													class="fa-regular fa-cart-plus"></i> </a>
											</div>
											<div
												class="product-badges product-badges-position product-badges-mrg">
												<span class="new">New </span>
											</div>
											<c:if test="${p.dsSPKM[0].khuyenMai.giaTriKM > 0 }">
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="hot" style="min-width: 44px">-${p.dsSPKM[0].khuyenMai.giaTriKM}%</span>
												</div>
											</c:if>
											<c:if
												test="${p.dsCTDD.stream().map(t -> (t.soLuong)).sum() > 10 }">
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="best">Best Sell</span>
												</div>
											</c:if>

										</div>
										<div class="product-content-wrap">
											<div class="product-category">
												<a href="shop-grid-right.html">${p.nhanHang.tenNH}</a>
											</div>
											<h2>
												<a href="product-detail/${p.maSP }.htm">${p.tenSP}</a>
											</h2>
											<div class="">
												<i class="fa-solid fa-star text-warning"></i> <span>
													${p.diemDG == 0? "chưa có đáng giá nào" : p.diemDG } </span>
											</div>
											<div class="">
												<span><i class="fa-solid fa-badge-dollar"></i>
													${p.dsCTDD.stream().map(t -> (t.soLuong)).sum()} đã bán</span>
											</div>
											<div class="product-price">
												<span>${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}
												</span> <span class="old-price">${p.gia } </span>
											</div>
											<div class="product-action-1 show">
												<button aria-label="Mua ngay" type="submit" title="Mua ngay"
													form="checkout${p.maSP }" name="btnCheckout"
													class="action-btn hover-up text-brand hover-white">
													<i class="fa-regular  fa-credit-card hover-white"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<!--End product-grid-4-->
					</div>
					<!--En tab one (Featured)-->
					<div class="tab-pane fade" id="tab-two" role="tabpanel"
						aria-labelledby="tab-two">

						<div class="row product-grid-4">
							<c:forEach var="p" items="${bestSaleProductList}">
								<form id="checkout${p.maSP }"
									class="invisible position-absolute" action="checkout.htm"
									method="post">
									<input class="invisible position-absolute" type="number"
										name="soLuong" min="1" step="1" value="1" style="width: 76px">
									<input type="text" name="sanPham"
										class="invisible position-absolute" value="${p.maSP}">
								</form>
								<div data-name="${p.tenSP }" data-brand="${p.nhanHang.tenNH}"
									data-review="${p.diemDG==0?'chưa có đáng giá
									nào': p.diemDG }"
									data-price="${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}"
									data-old-price="${p.gia }" data-ml="${p.dungTich }"
									data-id="${p.maSP }" data-quantity="${p.slt }"
									data-type="${p.loai}" data-description="${p.moTa }"
									data-img="${p.anh }"
									class="col-lg-3 col-md-4 col-12 col-sm-6 product product-cart">
									<div class="product-cart-wrap mb-30">
										<div class="product-img-action-wrap">
											<div class="product-img product-img-zoom">
												<a href="product-detail/${p.maSP }.htm"> <img
													style="min-height: 260px" class="default-img"
													src="./resources/imgs/${p.anh}" alt="" />
												</a>
											</div>
											<div class="product-action-1">
												<a aria-label="Quick view" class="action-btn hover-up"
													data-bs-toggle="modal" onclick="handleQuickView(this)"
													data-bs-target="#quickViewModal"><i
													class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
													class="action-btn hover-up" href="cart/add/${p.maSP}.htm"><i
													class="fa-regular fa-cart-plus"></i> </a>
											</div>

											<div
												class="product-badges product-badges-position product-badges-mrg">
												<span class="new">New </span>
											</div>
											<c:if test="${p.dsSPKM[0].khuyenMai.giaTriKM > 0 }">
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="hot">-${p.dsSPKM[0].khuyenMai.giaTriKM}</span>
												</div>
											</c:if>
											<c:if
												test="${p.dsCTDD.stream().map(t -> (t.soLuong)).sum() > 10 }">
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="best">Best Sell</span>
												</div>
											</c:if>
										</div>
										<div class="product-content-wrap">
											<div class="product-category">
												<a href="shop-grid-right.html">${p.nhanHang.tenNH}</a>
											</div>
											<h2>
												<a href="product-detail/${p.maSP }.htm">${p.tenSP}</a>
											</h2>
											<div class="">
												<i class="fa-solid fa-star text-warning"></i> <span>
													${p.diemDG == 0? "chưa có đáng giá nào" : p.diemDG } </span>
											</div>
											<div class="">
												<span><i class="fa-solid fa-badge-dollar"></i>
													${p.dsCTDD.stream().map(t -> (t.soLuong)).sum()} đã bán</span>
											</div>
											<div class="product-price">
												<span>${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}
												</span> <span class="old-price">${p.gia } </span>
											</div>
											<div class="product-action-1 show">
												<button aria-label="Mua ngay" type="submit" title="Mua ngay"
													form="checkout${p.maSP }" name="btnCheckout"
													class="action-btn hover-up text-brand hover-white">
													<i class="fa-regular  fa-credit-card hover-white"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<!--End product-grid-4-->
					</div>
					<!--En tab two (Popular)-->
					<div class="tab-pane fade" id="tab-three" role="tabpanel"
						aria-labelledby="tab-three">
						<div class="row product-grid-4">
							<c:forEach var="p" items="${newProductList}">
								<form id="checkout${p.maSP }"
									class="invisible position-absolute" action="checkout.htm"
									method="post">
									<input class="invisible position-absolute" type="number"
										name="soLuong" min="1" step="1" value="1" style="width: 76px">
									<input type="text" name="sanPham"
										class="invisible position-absolute" value="${p.maSP}">
								</form>
								<div data-name="${p.tenSP }" data-brand="${p.nhanHang.tenNH}"
									data-review="${p.diemDG==0?'chưa có đáng giá
									nào': p.diemDG }"
									data-price="${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}"
									data-old-price="${p.gia }" data-ml="${p.dungTich }"
									data-id="${p.maSP }" data-quantity="${p.slt }"
									data-type="${p.loai}" data-description="${p.moTa }"
									data-img="${p.anh }"
									class="col-lg-3 col-md-4 col-12 col-sm-6 product product-cart">
									<div class="product-cart-wrap mb-30">
										<div class="product-img-action-wrap">
											<div class="product-img product-img-zoom">
												<a href="product-detail/${p.maSP }.htm"> <img
													style="min-height: 260px" class="default-img"
													src="./resources/imgs/${p.anh}" alt="" />
												</a>
											</div>
											<div class="product-action-1">
												<a aria-label="Quick view" class="action-btn hover-up"
													data-bs-toggle="modal" onclick="handleQuickView(this)"
													data-bs-target="#quickViewModal"><i
													class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
													class="action-btn hover-up" href="cart/add/${p.maSP}.htm"><i
													class="fa-regular fa-cart-plus"></i> </a>
											</div>

											<div
												class="product-badges product-badges-position product-badges-mrg">
												<span class="new">New </span>
											</div>
											<c:if test="${p.dsSPKM[0].khuyenMai.giaTriKM > 0 }">
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="hot" style="min-width: 44px">-${p.dsSPKM[0].khuyenMai.giaTriKM}%</span>
												</div>
											</c:if>
											<c:if
												test="${p.dsCTDD.stream().map(t -> (t.soLuong)).sum() > 10 }">
												<div
													class="product-badges product-badges-position product-badges-mrg">
													<span class="best">Best Sell</span>
												</div>
											</c:if>
										</div>
										<div class="product-content-wrap">
											<div class="product-category">
												<a href="shop-grid-right.html">${p.nhanHang.tenNH}</a>
											</div>
											<h2>
												<a href="product-detail/${p.maSP }.htm">${p.tenSP}</a>
											</h2>
											<div class="">
												<i class="fa-solid fa-star text-warning"></i> <span>
													${p.diemDG == 0? "chưa có đáng giá nào" : p.diemDG } </span>
											</div>
											<div class="">
												<span><i class="fa-solid fa-badge-dollar"></i>
													${p.dsCTDD.stream().map(t -> (t.soLuong)).sum()} đã bán</span>
											</div>
											<div class="product-price">
												<span>${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}
												</span> <span class="old-price">${p.gia } </span>
											</div>
											<div class="product-action-1 show">
												<button aria-label="Mua ngay" type="submit" title="Mua ngay"
													form="checkout${p.maSP }" name="btnCheckout"
													class="action-btn hover-up text-brand hover-white">
													<i class="fa-regular  fa-credit-card hover-white"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
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
						<c:forEach var="p" items="${newProductList}">

							<div data-name="${p.tenSP }" data-brand="${p.nhanHang.tenNH}"
								data-review="${p.diemDG==0?'chưa có đáng giá
									nào': p.diemDG }"
								data-price="${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}"
								data-old-price="${p.gia }" data-ml="${p.dungTich }"
								data-id="${p.maSP }" data-quantity="${p.slt }"
								data-type="${p.loai}" data-description="${p.moTa }"
								data-img="${p.anh }"
								class="product-cart-wrap product small hover-up">
								<div class="product-img-action-wrap">
									<div class="product-img product-img-zoom">
										<a href="product-detail/${p.maSP }.htm"> <img
											class="default-img" src="./resources/imgs/${p.anh}" alt="" />
										</a>
									</div>
									<div class="product-action-1">
										<a aria-label="Quick view" class="action-btn small hover-up"
											data-bs-toggle="modal" onclick="handleQuickView(this)"
											data-bs-target="#quickViewModal"><i
											class="fa-regular fa-eye"></i></a> <a aria-label="Add To Card"
											class="action-btn small hover-up"
											href="cart/add/${p.maSP}.htm"><i
											class="fa-regular fa-cart-plus"></i> </a>
									</div>

									<div
										class="product-badges product-badges-position product-badges-mrg">
										<span class="new">New</span>
									</div>
									<c:if
										test="${p.dsCTDD.stream().map(t -> (t.soLuong)).sum() > 10 }">
										<div
											class="product-badges product-badges-position product-badges-mrg">
											<span class="best">Best Sell</span>
										</div>
									</c:if>
								</div>
								<div class="product-content-wrap">
									<h2>
										<a href="product-detail/${p.maSP }.htm">${p.tenSP }</a>
									</h2>
									<div class="rating-result" title="90%">
										<span> </span>
									</div>
									<div class="product-price">
										<span>${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}
										</span> <span class="old-price">${p.gia } </span>
									</div>
								</div>
							</div>


						</c:forEach>


					</div>
				</div>
			</div>
		</section>
		<section class="deals section-padding">
			<div class="container">
				<div class="row">
					<c:forEach var="s" items="${saleList }">
						<div class="col-lg-6 deal-co mb-5">
							<div class="deal wow fadeIn animated mb-md-4 mb-sm-4 mb-lg-0"
								style="height: 380px; background-color: #edf4f4; background-image: url('./resources/imgs/image-from-rawpixel-id-2255880-original.png'); background-size: cover;">
								<div class="deal-top text-center">
									<h2 class="text-brand"
										style="background-size: cover; text-shadow: 0 0 2px black; color: wheat !important; background-image: url('http://wp.alithemes.com/html/evara/evara-frontend/assets/imgs/theme/btn-brush-bg-2.png');">${s.tenKM }</h2>
								</div>
								<div class="deal-content">
									<h6 class="product-title " style="max-width: 100%;">
										<a href="product-detail/${p.maSP }.htm"
											style="color: #0c7772; text-shadow: 0px 0px 5px;">${s.moTa}</a>
									</h6>
								</div>
								<div class="deal-bottom">
									<p>Hết hạn trong:</p>
									<div class="deals-countdown"
										data-countdown="${s.ngayKT } 00:00:00"></div>
									<a href="shop.htm" style="background: white;"
										class="btn hover-up">Shop Now<i
										class="fa-solid fa-bag-shopping"></i></i>
									</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>

		<section class=" section-padding" style="background: #04696312">
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
										<c:forEach var="p" items="${bestSaleProductList}">
											<form id="checkout${p.maSP }"
												class="invisible position-absolute" action="checkout.htm"
												method="post">
												<input class="invisible position-absolute" type="number"
													name="soLuong" min="1" step="1" value="1"
													style="width: 76px"> <input type="text"
													name="sanPham" class="invisible position-absolute"
													value="${p.maSP}">
											</form>
											<div data-name="${p.tenSP }" data-brand="${p.nhanHang.tenNH}"
												data-review="${p.diemDG==0?'chưa có đáng giá
									nào': p.diemDG }"
												data-price="${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}"
												data-old-price="${p.gia }" data-ml="${p.dungTich }"
												data-id="${p.maSP }" data-quantity="${p.slt }"
												data-type="${p.loai}" data-description="${p.moTa }"
												data-img="${p.anh }" class="product-cart-wrap small product">
												<div class="product-img-action-wrap">
													<div class="product-img product-img-zoom">
														<a href="product-detail/${p.maSP }.htm"> <img
															class="default-img" src="./resources/imgs/${p.anh}"
															alt="" />
														</a>
													</div>
													<div class="product-action-1">
														<a aria-label="Quick view" class="action-btn hover-up"
															data-bs-toggle="modal" onclick="handleQuickView(this)"
															data-bs-target="#quickViewModal"><i
															class="fa-regular fa-eye"></i></a> <a
															aria-label="Add To Card" class="action-btn hover-up"
															href="cart/add/${p.maSP}.htm"> <i
															class="fa-regular fa-cart-plus"></i>
														</a>
													</div>
													<div
														class="product-badges product-badges-position product-badges-mrg">
														<span class="new">New</span>
													</div>
													<c:if
														test="${p.dsCTDD.stream().map(t -> (t.soLuong)).sum() > 10 }">
														<div
															class="product-badges product-badges-position product-badges-mrg">
															<span class="best">Best Sell</span>
														</div>
													</c:if>
												</div>
												<div class="product-content-wrap">
													<h2>
														<a href="product-detail/${p.maSP }.htm">${p.tenSP}</a>
													</h2>
													<div class="rating-result" title="90%">
														<span> <span> ${p.diemDG == 0? "chưa có đáng giá nào" : p.diemDG }</span>
														</span>
													</div>
													<div class="product-price">
														<span>${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}
														</span> <span class="old-price">${p.gia }</span>
													</div>
												</div>
											</div>
										</c:forEach>


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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Cotton Leaf
														Printed 2</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Smart Speaker</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Hugy Speaker</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Smart Speaker</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Cotton Leaf
														Printed</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Cotton Leaf
														Printed</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Smart Speaker</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Hugy Speaker</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Smart Speaker</a>
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
													<a href="product-detail/${p.maSP }.htm"> <img
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
													<a href="product-detail/${p.maSP }.htm">Cotton Leaf
														Printed</a>
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
		<div class="modal-dialog rounded">
			<div class="modal-content rounded">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
				<div class="modal-body" style="background: #00800014;">
					<div class="row">
						<div class="col-md-6 col-sm-12 col-xs-12">
							<img
								src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
								class="rounded float-left image-detail" alt="..." />
						</div>
						<div class="col-md-6 col-sm-12 col-xs-12">
							<div class="detail-info">
								<h3 class="title-detail mt-30">Colorful Pattern Shirts
									HD450</h3>
								<div class="product-detail-rating">
									<div class="pro-details-brand">
										<span> Brands: <a href="shop-grid-right.html"
											class="brand-detail">Bootstrap</a></span>
									</div>
									<div class="product-rate-cover text-end">
										<div class="rating-result" title="90%">
											<span> <span class="review-score">9</span>/10
											</span> <span class="font-small ml-5 text-muted"> (25
												reviews)</span>
										</div>
									</div>
								</div>
								<div class="clearfix product-price-cover">
									<div class="product-price primary-color float-left">
										<ins>
											<span class="text-brand price-detail">$120.00</span>
										</ins>
										<ins>
											<span class="old-price font-md ml-15 old-price-detail">$200.00</span>
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


							</div>
							<div class="attr-detail attr-size">
								<strong class="mr-10">Dung tích</strong>
								<ul class="list-filter size-filter font-small text-lowercase">

									<li class="active "><a href="#"> <span
											class="capacity-detail">400</span> <span
											class="text-lowercase">ml</span>
									</a></li>

								</ul>
							</div>
							<div class="bt-1 border-color-1 mt-30 mb-30"></div>
							<div class="detail-extralink">

								<form>
									<div class="quantity">
										<input type="number" min="1" max="5" step="1" value="1">
									</div>

								</form>

								<div class="product-extra-link2 ms-2">
									<button type="submit" class="button button-add-to-cart">
										Mua Ngay</button>
									<a aria-label="Add To Card"
										class="action-btn hover-up add-to-cart" href="cart.htm"><i
										class="fa-regular fa-cart-plus"></i></a> <a aria-label="Compare"
										class="action-btn hover-up" href="shop-compare.html"><i
										class="fa-regular fa-bags-shopping"></i></a>
								</div>
							</div>
							<ul class="product-meta font-xs color-grey mt-50">
								<li class="mb-5">Mã: <a href="#" class="id-detail">SP0000001</a></li>
								<li class="mb-5">Tags: <a href="#" rel="tag"
									class="type-detail">Cloth</a>
								</li>
								<li>Sẵn hàng:<span class="in-stock text-success ml-5"><span
										class="quantity-detail">8</span> sản phẩm có sẵn</span>
								</li>
							</ul>
						</div>
						<!-- Detail Info -->
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		
	</script>
</body>
</html>