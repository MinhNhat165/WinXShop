<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
<!DOCTYPE html>
<html>

<%@include file="./common/head.jsp"%>
<body>
	<%@include file="./common/header.jsp"%>
	<main class="main bg-light pt-20 pb-50">
		<section
			class="col-sm-12 col-md-10 col-lg-8 mx-auto bg-white p-20 pt-30 shadow rounded">
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
												<img src="./resources/imgs/${SP.anh}" alt="product image" />
											</figure>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="detail-info">
										<h2 class="title-detail">${SP.tenSP}</h2>
										<div class="product-detail-rating">
											<div class="pro-details-brand">
												<span> Thương hiệu: <a href="shop-grid-right.html">${SP.nhanHang.tenNH}</a></span>
											</div>
											<div class="product-rate-cover text-end">
												<i class="fa-solid fa-star text-warning"></i>
												${SP.dsCTDG.size() == 0? "chưa có đáng giá nào" : SP.diemDG  }/10
												<span class="font-small ml-5 text-muted"> (${ SP.dsCTDG.size()})
													đánh giá</span>
											</div>
										</div>
										<div class="clearfix product-price-cover">
											<div class="product-price primary-color float-left">
												<ins>
													<span class="text-brand"><fmt:formatNumber
															pattern="###,### đ"
															value="${SP.gia - SP.gia * SP.dsSPKM[0].khuyenMai.giaTriKM/100}"
															type="currency" /></span>
												</ins>
												<ins>
													<span class="old-price font-md ml-15"><fmt:formatNumber
															pattern="###,### đ" value="${SP.gia }" type="currency" /></span>
												</ins>
												<span class="save-price font-md color3 ml-15">Giảm
													${SP.dsSPKM[0].khuyenMai.giaTriKM} % </span>
											</div>
										</div>
										<div class="bt-1 border-color-1 mt-15 mb-15"></div>


										<div class="attr-detail attr-size">
											<strong class="mr-10">Dung tích</strong>
											<ul class="list-filter size-filter font-small text-lowercase">

												<li class="active"><a href="#">${SP.dungTich} <span
														class="text-lowercase">ml</span>
												</a></li>

											</ul>
										</div>
										<div class="bt-1 border-color-1 mt-30 mb-30"></div>
										<div class="detail-extralink">
											<form id="checkout" action="checkout.htm" method="post">

												<div class="quantity">
													<input type="number" name="soLuong" class="input-soLuong"
														min="1" max="${SP.slt }" step="1" value="1"
														style="width: 76px">
												</div>
												<input type="text" name="sanPham"
													class="invisible position-absolute" value="${SP.maSP }">

												<div class="product-extra-link2 ms-2">
													<button type="submit" form="checkout" name="btnCheckout"
														class="button button-add-to-cart ms-2">Mua Ngay</button>

													<button type="submit" form="formCart" name="btnCheckout"
														class=" action-btn p-btn hover-up">
														<i class="fa-regular fa-cart-plus"></i>
													</button>
													<a aria-label="Compare" class="action-btn hover-up"
														href="shop.htm"><i class="fa-regular fa-bags-shopping"></i></a>
												</div>
											</form>
										</div>

										<form id="formCart" action="cart/add/${SP.maSP}.htm">

											<input type="number"
												class="add-number invisible position-absolute" value="1"
												name="add-number">
										</form>


										<ul class="product-meta font-xs color-grey mt-50">
											<li class="">Đã bán: <span>
													${SP.dsCTDD.stream().map(t -> (t.soLuong)).sum()} sản phẩm
											</span><i class="fa-solid fa-badge-dollar"></i></li>
											<li class="mb-5">Mã: <a href="#">${SP.maSP }</a></li>
											<li class="mb-5">Tags: <a href="#" rel="tag"> <c:if
														test="${SP.loai  == 0 }">Nữ</c:if> <c:if
														test="${SP.loai  == 1 }">Nam</c:if> <c:if
														test="${SP.loai  == 2 }">Unisex</c:if>
											</a>
											</li>
											<li>Sẵn hàng:<span class="in-stock text-success ml-5">${SP.slt }
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
										data-bs-toggle="tab" href="#Reviews">Đánh giá
											(${SP.dsCTDG.size() })</a></li>
								</ul>
								<div class="tab-content shop_info_tab entry-main-content">
									<div class="tab-pane fade show active" id="Description">
										<div class="">
											<p class="text-dark">${SP.moTa }</p>
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
														<c:forEach var="p" items="${SP.dsCTDG}">
															<div class="row border-bottom mb-20">
																<div class="col-md-2 p-0 text-center">
																	<img src="./resources/imgs/${p.khachHang.anh}"
																		class="rounded-circle"
																		style="width: 50px; height: 50px" alt="Avatar" />
																	<h6>
																		<a href="#">${p.khachHang.hoTen}</a>
																	</h6>
																</div>
																<div class="desc col-md-9 p-0 ms-4">
																	<div class="product-rate d-inline-block">
																		<i class="fa-solid fa-star text-warning"></i> <span
																			class="text-brand-dark">${p.diemDG}/10</span>
																	</div>
																	<p class="text-dark" style="font-size: 12px">${p.moTa}</p>
																	<div class="d-flex justify-content-between">
																		<div class="d-flex align-items-center">
																			<p class="mr-30" style="font-size: 12px">${p.ngayDG}</p>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>



													</div>
												</div>
												<div class="col-lg-4 text-center">
													<h4 class="mb-30">Điểm đánh giá</h4>
													<div
														class="card mx-auto col-8 bg-primary-light-winx h-50 shadow"
														style="min-height: 200px">
														<div
															class="card-body d-flex align-items-center bg-primary-light-winx gap-2 flex-column justify-content-center">
															<h1 class="text-brand">
																<span class="text-brand-dark">${SP.diemDG}</span>/10
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
										<c:if test="${user != null}">
											<div class="comment-form">
												<h4 class="mb-15">Đánh giá sản phẩm</h4>
												<div class="product-rate d-inline-block mb-20"></div>
												<div class="row">
													<div class="col-lg-8 col-md-12">
														<form class="form-contact comment_form"
															action="product-detail/review/${SP.maSP }.htm"
															method="post" id="commentForm">
															<div class="row">
																<div class="form-group col-3">
																	<div class="input-group input-group-sm">
																		<input type="number" name="score" min="1" max="10"
																			value="10"
																			class="form-control text-center hidden-arrow" />
																		<div
																			class="input-group-text w-50 justify-content-center">
																			<i class="fa-solid fa-star text-warning"></i>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<textarea class="form-control w-100" id="comment"
																		cols="30" rows="9" name="content"
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
										</c:if>
										<c:if test="${user == null}">
											<a href="login.htm">
												<button class="btn btn-outline">Đăng nhập để đánh
													giá</button>
											</a>

										</c:if>

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
										<c:forEach var="p" items="${productList }">
											<div class="col-lg-3 col-md-4 col-12 col-sm-6">
												<div data-name="${p.tenSP }"
													data-brand="${p.nhanHang.tenNH}"
													data-review="${p.diemDG == 0? " chưa có đáng giá
													nào" : "hihih" }"
									data-price="${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}"
													data-old-price="${p.gia }" data-ml="${p.dungTich }"
													data-id="${maSP }" data-quantity="${p.slt }"
													data-type="${p.loai}" data-description="ádfasd"
													data-img="${p.anh }"
													class="product-cart-wrap product small hover-up">
													<div class="product-img-action-wrap">
														<div class="product-img product-img-zoom">
															<a href="product-detail/${p.maSP }.htm"> <img
																class="default-img" src="./resources/imgs/${p.anh}"
																alt="" />
															</a>
														</div>
														<div class="product-action-1">
															<a aria-label="Quick view"
																class="action-btn small hover-up" data-bs-toggle="modal"
																onclick="handleQuickView(this)"
																data-bs-target="#quickViewModal"><i
																class="fa-regular fa-eye"></i></a> <a
																aria-label="Add To Card"
																class="action-btn small hover-up" href="cart.htm"><i
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
														<h2>
															<a href="shop-product-right.html">${p.tenSP }</a>
														</h2>
														<div class="rating-result" title="90%">
															<span> </span>
														</div>
														<div class="product-price">

															<span> <fmt:formatNumber pattern="###,### đ"
																	value="${p.gia - p.gia * p.dsSPKM[0].khuyenMai.giaTriKM/100}"
																	type="currency" />
															</span> <span class="old-price"> <fmt:formatNumber
																	pattern="###,### đ" value="${p.gia }" type="currency" />
															</span>
														</div>
													</div>
												</div>
											</div>


										</c:forEach>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<%@include file="./common/footer.jsp"%>
	<%@include file="./common/script.jsp"%>

	<script type="text/javascript">
		$(".input-soLuong").change(function() {
			$(".add-number").val(this.value)
		})
	</script>
</body>
</html>