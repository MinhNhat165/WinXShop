<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
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
								<div class="col-1 text-center">Ảnh</div>
								<div class="col-4 text-center">Tên</div>
								<div class="col-2 text-center">Giá</div>
								<div class="col-2 text-center">Số lượng</div>
								<div class="col-2 text-center">Thành tiền</div>
								<div class="col-1 text-center">Thao tác</div>
							</div>
						</div>
						<div
							class="col-12 bg-white p-10 rounded-1 mb-10 product border border-brand">
							<div class="row align-items-center custome-checkbox">
								<div class="col-1 text-center product-img">
									<img src="./resources/imgs/shop/product-6-1.jpg" alt="#" />
								</div>
								<div class="col-4 text-center product-name">
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
					</div>
					<div class="col-3">
						<!-- Thông tin nguoi nhan -->
						<div
							class="bg-white d-flex flex-column rounded mb-10 px-4 product shadow fs-6 info-receiver">
							<div class="row">
								<div
									class="col-12 pt-10 pb-10 px-0 border-bottom border-brand d-flex justify-content-between align-items-center">
									<h4 class="text-dark">Thông tin giao hàng</h4>
									<div class="fs-5 edit-info-receiver">
										<i class="fa-regular fa-pen-to-square text-brand"></i>
									</div>
								</div>
							</div>
							<div class="row g-3 form-info-receiver mt-5 d-none">
								<div class="col-12 px-0">
									<input type="text"
										class="form-control form-control-sm input-receiver-name"
										placeholder="Tên người nhận" aria-label="name" />
								</div>
								<div class="col-12 px-0">
									<input type="text"
										class="form-control form-control-sm input-receiver-phone-number"
										placeholder="SĐT người nhận" aria-label="name" />
								</div>
								<div class="col-12 px-0">
									<input type="text"
										class="form-control form-control-sm input-receiver-address"
										placeholder="Địa chỉ người nhận" aria-label="name" />
								</div>
								<div class="col-12 mb-4 px-0 text-end">
									<button class="btn btn-sm save-edit-info-receiver">
										Lưu</button>
									<button
										class="btn btn-sm btn-secondary cancel-edit-info-receiver">
										Huỷ</button>
								</div>
							</div>
							<div class="row flex-grow-1 info-receiver-content">
								<div
									class="col-12 d-flex justify-content-between pt-20 pb-10 px-0">
									<span class="text-brand-dark receiver-name">Nguyễn
										Minh Nhật</span> <span class="receiver-phone-number">0865181658</span>
								</div>
								<div class="col-12 d-flex j pt-5 pb-10 px-0 receiver-address">
									<span class="">C3 Man Thiện,
										Phường Hiệp Phú, TP.Thủ Đức</span>
								</div>
							</div>
						</div>
						<!-- Phương thức thanh toán -->
						<div
							class="bg-white d-flex flex-column rounded mb-10 px-4 product shadow fs-6">
							<div class="row">
								<div
									class="col-12 pt-10 pb-10 px-0 border-bottom border-brand d-flex justify-content-between align-items-center">
									<h4 class="text-dark">Phương thức thanh toán</h4>
								</div>
							</div>
							<div class="row g-2 mt-5">
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1" />
									<label class="form-check-label" for="flexRadioDefault1">
										Thanh toán khi nhận hàng </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault2" checked />
									<label class="form-check-label" for="flexRadioDefault2">
										Thanh toán online qua WinxPay </label>
								</div>
							</div>
						</div>

						<!-- Tổng kết -->
						<div
							class="bg-white d-flex flex-column rounded mb-10 px-4 product shadow fs-6">
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
			</div>
		</section>
	</main>
	<%@include file="./footer.jsp"%>

	<%@include file="./script.jsp"%>
</body>
</html>