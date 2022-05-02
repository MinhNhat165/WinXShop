<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body>
	<%@include file="./header.jsp"%>
	<main class="main bg-light pt-50" style="height: 664px">
		<section class="mb-50">
			<div class="container">
				<div class="row">
					<div class="col-9">
						<div
							class="col-12 bg-white p-10 rounded mb-10 bg-brand text-white">
							<div class="row">
								<div class="col-1 text-center align-middle">
									<div
										class="bg-white d-inline-block check-box-all rounded-1 border"></div>
								</div>
								<div class="col-1 text-center">Ảnh</div>
								<div class="col-3 text-center">Tên</div>
								<div class="col-2 text-center">Giá</div>
								<div class="col-2 text-center">Số lượng</div>
								<div class="col-2 text-center">Thành tiền</div>
								<div class="col-1 text-center">Thao tác</div>
							</div>
						</div>
						<div
							class="col-12 bg-white p-10 rounded-1 mb-10 product border border-brand">
							<div class="row align-items-center custome-checkbox">
								<div class="col-1 text-center check-box">
									<input class="form-check-input" type="checkbox" name="checkbox"
										id="exampleCheckbox1" value="" /> <label
										class="form-check-label" for="exampleCheckbox1"></label>
								</div>
								<div class="col-1 text-center product-img">
									<img src="assets/imgs/shop/product-6-1.jpg" alt="#" />
								</div>
								<div class="col-3 text-center product-name">
									<h5 class="product-name">
										<a href="shop-product-right.html">Amazon
											Brand - Daily </a>
									</h5>
								</div>
								<div class="col-2 text-center product-price">
									<span>650.000đ </span>
								</div>
								<div class="col-2 text-center product-1uantity">
									<div class="detail-qty border radius m-auto">
										<a href="#" class="qty-down"> <i
											class="fa-solid fa-angle-down"></i></a> <span class="qty-val">1</span>
										<a href="#" class="qty-up"><i
											class="fa-solid fa-angle-up"></i></a>
									</div>
								</div>
								<div class="col-2 text-center">650.000đ</div>
								<div class="col-1 text-center product-cart-action">
									<a href="#" class="text-muted"><i
										class="fa-regular fa-trash-can"></i></a>
								</div>
							</div>
						</div>
						<div class="cart-action text-end">
							<a class="btn"><i
								class="fa-regular fa-bag-shopping mr-10"></i>Tiếp tục mua sắm</a>
						</div>
					</div>
					<div
						class="col-3 bg-white d-flex flex-column rounded mb-10 px-4 product border border-brand fs-6">
						<div class="row">
							<div class="col-12 pt-10 pb-10 px-0 border-bottom border-brand">
								<h4 class="text-brand">Tổng Kết</h4>
							</div>
						</div>
						<div class="row flex-grow-1">
							<div
								class="col-12 d-flex justify-content-between pt-20 pb-10 px-0">
								<span class="">Số Lượng</span> <span class=""><span
									class="text-brand">3 </span>Sản phẩm</span>
							</div>
							<div
								class="col-12 d-flex justify-content-between pt-20 pb-10 px-0">
								<span class="">Tổng thanh toán</span> <span class=""><span
									class="text-brand">2.000.000</span>đ</span>
							</div>
						</div>
						<div class="row">
							<div class="col-12 pt-10 pb-10 px-0 border-top border-brand">
								<a href="page-checkout.html"><button
										class="btn btn-brand col-12">Mua Ngay</button></a>
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