<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body>
	<%@include file="./header.jsp"%>
	<main class="main bg-light pt-20 pb-50">
		<section class="col-md-8 mx-auto bg-white p-20 pt-30 shadow rounded">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="product-detail accordion-detail">
							<div class="row mb-50">
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="detail-gallery">
										<!-- MAIN SLIDES -->
										<div class="product-image-slider rounded-3 overflow-hidden">
											<figure class="rounded">
												<img
													src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
													alt="product image" />
											</figure>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="detail-info">
										<h2 class="title-detail">Colorful Pattern Shirts HD450</h2>
										<div class="product-detail-rating">
											<div class="pro-details-brand">
												<span> Thương hiệu: <a href="shop-grid-right.html">Gucci</a></span>
											</div>
											<div class="product-rate-cover text-end">
												<i class="fa-solid fa-star text-warning"></i> 9/10 <span
													class="font-small ml-5 text-muted"> (25 reviews)</span>
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
												<span class="save-price font-md color3 ml-15">25%
													Off</span>
											</div>
										</div>
										<div class="bt-1 border-color-1 mt-15 mb-15"></div>

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
												<li><a href="#">300
														<span class="text-lowercase">ml</span>
												</a></li>
												<li class="active"><a href="#">400
														<span class="text-lowercase">ml</span>
												</a></li>
												<li><a href="#">500
														<span class="text-lowercase">ml</span>
												</a></li>
											</ul>
										</div>
										<div class="bt-1 border-color-1 mt-30 mb-30"></div>
										<div class="detail-extralink">
											<div class="detail-qty border radius">
												<a href="#" class="qty-down"><i
													class="fa-solid fa-angle-down"></i></a> <span class="qty-val">1</span>
												<a href="#" class="qty-up"><i
													class="fa-solid fa-angle-up"></i></a>
											</div>
											<div class="product-extra-link2">
												<button type="submit" class="button button-add-to-cart">
													Mua Ngay</button>
												<a aria-label="Add To Card" class="action-btn hover-up"
													href="shop-cart.html"><i
													class="fa-regular fa-cart-plus"></i></a> <a
													aria-label="Compare" class="action-btn hover-up"
													href="shop-compare.html"><i
													class="fa-regular fa-bags-shopping"></i></a>
											</div>
										</div>
										<ul class="product-meta font-xs color-grey mt-50">
											<li class="mb-5">Mã: <a href="#">SP0000001</a></li>
											<li class="mb-5">Tags: <a href="#" rel="tag">Women</a>
											</li>
											<li>Sẵn hàng:<span class="in-stock text-success ml-5">8
													sản phẩm có sẵn</span>
											</li>
										</ul>
									</div>
									<!-- Detail Info -->
								</div>
							</div>
							<div class="tab-style3">
								<ul class="nav nav-tabs text-uppercase">
									<li class="nav-item"><a class="nav-link active"
										id="Description-tab" data-bs-toggle="tab" href="#Description">Mô
											tả</a></li>

									<li class="nav-item"><a class="nav-link" id="Reviews-tab"
										data-bs-toggle="tab" href="#Reviews">Đánh
											giá (3)</a></li>
								</ul>
								<div class="tab-content shop_info_tab entry-main-content">
									<div class="tab-pane fade show active" id="Description">
										<div class="">
											<p class="text-dark">Uninhibited carnally hired played in
												whimpered dear gorilla koala depending and much yikes off
												far quetzal goodness and from for grimaced goodness
												unaccountably and meadowlark near unblushingly crucial
												scallop tightly neurotic hungrily some and dear furiously
												this apart.</p>
										</div>
									</div>

									<div class="tab-pane fade" id="Reviews">
										<!--Comments-->
										<div class="comments-area">
											<div class="row">
												<div class="col-lg-8">
													<h4 class="mb-30">Nhận xét</h4>
													<div class="comment-list ml-10">
														<!--single-comment -->
														<div class="row border-bottom mb-20">
															<div class="col-md-2 p-0 text-center">
																<img
																	src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
																	class="rounded-circle"
																	style="width: 50px; height: 50px" alt="Avatar" />
																<h6>
																	<a href="#">Nguyễn Minh Nhật</a>
																</h6>
															</div>
															<div class="desc col-md-9 p-0">
																<div class="product-rate d-inline-block">
																	<i class="fa-solid fa-star text-warning"></i>
																	<span class="text-brand-dark">9/10</span>
																</div>
																<p class="text-dark" style="font-size: 12px">Sản
																	phẩm này thật tuyệt vời, tôi có thằng anh sinh năm 96,
																	sau khi xịt loại nước hoa này dành cho nữ này nó có thể
																	tiếp cận dễ dàng với phụ nữ, và trở thành 1 trong số
																	họ.</p>
																<div class="d-flex justify-content-between">
																	<div class="d-flex align-items-center">
																		<p class="mr-30" style="font-size: 12px">December
																			4, 2020 at 3:12 pm</p>
																	</div>
																</div>
															</div>
														</div>
														<!--single-comment -->
														<div class="row border-bottom mb-20">
															<div class="col-md-2 p-0 text-center">
																<img
																	src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
																	class="rounded-circle"
																	style="width: 50px; height: 50px" alt="Avatar" />
																<h6>
																	<a href="#">Nguyễn Minh Nhật</a>
																</h6>
															</div>
															<div class="desc col-md-9 p-0">
																<div class="product-rate d-inline-block">
																	<i class="fa-solid fa-star text-warning"></i>
																	<span class="text-brand-dark">9/10</span>
																</div>
																<p class="text-dark" style="font-size: 12px">Sản
																	phẩm này thật tuyệt vời, tôi có thằng anh sinh năm 96,
																	sau khi xịt loại nước hoa này dành cho nữ này nó có thể
																	tiếp cận dễ dàng với phụ nữ, và trở thành 1 trong số
																	họ.</p>
																<div class="d-flex justify-content-between">
																	<div class="d-flex align-items-center">
																		<p class="mr-30" style="font-size: 12px">December
																			4, 2020 at 3:12 pm</p>
																	</div>
																</div>
															</div>
														</div>
														<!-- single-comment -->
														<div class="row border-bottom">
															<div class="col-md-2 p-0 text-center">
																<img
																	src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
																	class="rounded-circle"
																	style="width: 50px; height: 50px" alt="Avatar" />
																<h6>
																	<a href="#">Nguyễn Minh Nhật</a>
																</h6>
															</div>
															<div class="desc col-md-9 p-0">
																<div class="product-rate d-inline-block">
																	<i class="fa-solid fa-star text-warning"></i>
																	<span class="text-brand-dark">9/10</span>
																</div>
																<p class="text-dark" style="font-size: 12px">Sản
																	phẩm này thật tuyệt vời, tôi có thằng anh sinh năm 96,
																	sau khi xịt loại nước hoa này dành cho nữ này nó có thể
																	tiếp cận dễ dàng với phụ nữ, và trở thành 1 trong số
																	họ.</p>
																<div class="d-flex justify-content-between">
																	<div class="d-flex align-items-center">
																		<p class="mr-30" style="font-size: 12px">December
																			4, 2020 at 3:12 pm</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-4 text-center">
													<h4 class="mb-30">Điểm đánh giá</h4>
													<div
														class="card mx-auto col-8 bg-primary-light-winx h-50 shadow">
														<div
															class="card-body d-flex align-items-center bg-primary-light-winx gap-2 flex-column justify-content-center">
															<h1 class="text-brand">
																<span class="text-brand-dark">9</span>/10
															</h1>
															<span><h2>
																	<i class="fa-solid fa-star text-warning"></i>
																</h2></span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--comment form-->
										<div class="comment-form">
											<h4 class="mb-15">Đánh giá sản phẩm</h4>
											<div class="product-rate d-inline-block mb-20"></div>
											<div class="row">
												<div class="col-lg-8 col-md-12">
													<form class="form-contact comment_form" action="#"
														id="commentForm">
														<div class="row">
															<div class="form-group col-3">
																<div class="input-group input-group-sm">
																	<input type="number"
																		class="form-control text-center hidden-arrow" min="0"
																		max="10" value="10" />
																	<div
																		class="input-group-text w-50 justify-content-center">
																		<i class="fa-solid fa-star text-warning"></i>
																	</div>
																</div>
															</div>
															<div class="form-group">
																<textarea class="form-control w-100" name="comment"
																	id="comment" cols="30" rows="9"
																	placeholder="Viết nhận xét của bạn"></textarea>
															</div>
														</div>
														<div class="form-group">
															<button type="submit" class="btn btn-primary">
																Đánh giá</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-60">
								<div class="col-12">
									<h3 class="section-title style-1 mb-30">Sản phẩm liên quan
									</h3>
								</div>
								<div class="col-12">
									<div class="row related-products">
										<div class="col-lg-3 col-md-4 col-12 col-sm-6">
											<div class="product-cart-wrap small hover-up">
												<div class="product-img-action-wrap">
													<div class="product-img product-img-zoom">
														<a href="shop-product-right.html" tabindex="0"> <img
															class="default-img"
															src="assets/imgs/shop/product-2-1.jpg" alt="" />
															<img class="hover-img"
															src="assets/imgs/shop/product-2-2.jpg" alt="" />
														</a>
													</div>
													<div class="product-action-1">
														<a aria-label="Quick view"
															class="action-btn small hover-up" data-bs-toggle="modal"
															data-bs-target="#quickViewModal
"><i
															class="fi-rs-search"></i></a> <a aria-label="Add To Wishlist"
															class="action-btn small hover-up"
															href="shop-wishlist.html" tabindex="0"><i
															class="fi-rs-heart"></i></a> <a aria-label="Compare"
															class="action-btn small hover-up"
															href="shop-compare.html" tabindex="0"><i
															class="fi-rs-shuffle"></i></a>
													</div>
													<div
														class="product-badges product-badges-position product-badges-mrg">
														<span class="hot">Hot</span>
													</div>
												</div>
												<div class="product-content-wrap">
													<h2>
														<a href="shop-product-right.html" tabindex="0">Ulstra
															Bass Headphone</a>
													</h2>
													<div class="rating-result" title="90%">
														<span> </span>
													</div>
													<div class="product-price">
														<span>$238.85 </span> <span class="old-price">$245.8</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-3 col-md-4 col-12 col-sm-6">
											<div class="product-cart-wrap small hover-up">
												<div class="product-img-action-wrap">
													<div class="product-img product-img-zoom">
														<a href="shop-product-right.html" tabindex="0"> <img
															class="default-img"
															src="assets/imgs/shop/product-3-1.jpg" alt="" />
															<img class="hover-img"
															src="assets/imgs/shop/product-4-2.jpg" alt="" />
														</a>
													</div>
													<div class="product-action-1">
														<a aria-label="Quick view"
															class="action-btn small hover-up" data-bs-toggle="modal"
															data-bs-target="#quickViewModal
"><i
															class="fi-rs-search"></i></a> <a aria-label="Add To Wishlist"
															class="action-btn small hover-up"
															href="shop-wishlist.html" tabindex="0"><i
															class="fi-rs-heart"></i></a> <a aria-label="Compare"
															class="action-btn small hover-up"
															href="shop-compare.html" tabindex="0"><i
															class="fi-rs-shuffle"></i></a>
													</div>
													<div
														class="product-badges product-badges-position product-badges-mrg">
														<span class="sale">-12%</span>
													</div>
												</div>
												<div class="product-content-wrap">
													<h2>
														<a href="shop-product-right.html" tabindex="0">Smart
															Bluetooth Speaker</a>
													</h2>
													<div class="rating-result" title="90%">
														<span> </span>
													</div>
													<div class="product-price">
														<span>$138.85 </span> <span class="old-price">$145.8</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-3 col-md-4 col-12 col-sm-6">
											<div class="product-cart-wrap small hover-up">
												<div class="product-img-action-wrap">
													<div class="product-img product-img-zoom">
														<a href="shop-product-right.html" tabindex="0"> <img
															class="default-img"
															src="assets/imgs/shop/product-4-1.jpg" alt="" />
															<img class="hover-img"
															src="assets/imgs/shop/product-4-2.jpg" alt="" />
														</a>
													</div>
													<div class="product-action-1">
														<a aria-label="Quick view"
															class="action-btn small hover-up" data-bs-toggle="modal"
															data-bs-target="#quickViewModal
"><i
															class="fi-rs-search"></i></a> <a aria-label="Add To Wishlist"
															class="action-btn small hover-up"
															href="shop-wishlist.html" tabindex="0"><i
															class="fi-rs-heart"></i></a> <a aria-label="Compare"
															class="action-btn small hover-up"
															href="shop-compare.html" tabindex="0"><i
															class="fi-rs-shuffle"></i></a>
													</div>
													<div
														class="product-badges product-badges-position product-badges-mrg">
														<span class="new">New</span>
													</div>
												</div>
												<div class="product-content-wrap">
													<h2>
														<a href="shop-product-right.html" tabindex="0">HomeSpeak
															12UEA Goole</a>
													</h2>
													<div class="rating-result" title="90%">
														<span> </span>
													</div>
													<div class="product-price">
														<span>$738.85 </span> <span class="old-price">$1245.8</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-3 col-md-4 col-12 col-sm-6">
											<div class="product-cart-wrap small hover-up mb-0">
												<div class="product-img-action-wrap">
													<div class="product-img product-img-zoom">
														<a href="shop-product-right.html" tabindex="0"> <img
															class="default-img"
															src="assets/imgs/shop/product-5-1.jpg" alt="" />
															<img class="hover-img"
															src="assets/imgs/shop/product-3-2.jpg" alt="" />
														</a>
													</div>
													<div class="product-action-1">
														<a aria-label="Quick view"
															class="action-btn small hover-up" data-bs-toggle="modal"
															data-bs-target="#quickViewModal
"><i
															class="fi-rs-search"></i></a> <a aria-label="Add To Wishlist"
															class="action-btn small hover-up"
															href="shop-wishlist.html" tabindex="0"><i
															class="fi-rs-heart"></i></a> <a aria-label="Compare"
															class="action-btn small hover-up"
															href="shop-compare.html" tabindex="0"><i
															class="fi-rs-shuffle"></i></a>
													</div>
													<div
														class="product-badges product-badges-position product-badges-mrg">
														<span class="hot">Hot</span>
													</div>
												</div>
												<div class="product-content-wrap">
													<h2>
														<a href="shop-product-right.html" tabindex="0">Dadua
															Camera 4K 2021EF</a>
													</h2>
													<div class="rating-result" title="90%">
														<span> </span>
													</div>
													<div class="product-price">
														<span>$89.8 </span> <span class="old-price">$98.8</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<%@include file="./footer.jsp"%>
	<%@include file="./script.jsp"%>
</body>
</html>