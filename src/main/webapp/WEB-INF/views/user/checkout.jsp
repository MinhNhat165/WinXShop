<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<%@include file="./common/head.jsp"%>
<body>
	<%@include file="./common/header.jsp"%>
	<!-- flag -->


	<main class="main bg-light pt-50" style="height: 664px">
		<section class="mb-50">
			<div class="container">
				<form action="checkout.htm" method="post"
					class="row needs-validation">
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
						<c:forEach var="p" items="${dsGHSP}">
							<div
								class="col-12 bg-white p-10 rounded-1 mb-10 product border border-brand">
								<input type="checkbox" class="invisible position-absolute"
									value="${p.sanPham.maSP }" checked name="dsSanPham" /> <input
									class="invisible position-absolute" type="checkbox"
									value="${p.soLuong }" checked name="soLuong" /> <input
									class="invisible position-absolute" type="checkbox"
									value="${p.sanPham.dsSPKM[0].khuyenMai.maKM }" checked
									name="khuyenMai" />
								<div class="row align-items-center custome-checkbox">
									<div class="col-1 text-center product-img">
										<img src="./resources/imgs/${p.sanPham.anh}" alt="#" />
									</div>
									<div class="col-4 text-center product-name">
										<h5 class="product-name">
											<a href="shop-product-right.html">${p.sanPham.tenSP} </a>
										</h5>
									</div>
									<div class="col-2 text-center product-price">
										<span> <fmt:formatNumber pattern="###,### đ"
												value="${p.sanPham.gia}" type="currency" />

										</span>
									</div>
									<div class="col-2 text-center product-1uantity">
										${p.soLuong}</div>
									<div class="col-2 text-center">

										<fmt:formatNumber pattern="###,### đ"
											value="${(p.sanPham.gia-(p.sanPham.gia*p.sanPham.dsSPKM[0].khuyenMai.giaTriKM)/100)*p.soLuong}"
											type="currency" />
									</div>
									<div class="col-1 text-center product-cart-action">
										<a href="#" class="text-muted"><i
											class="fa-regular fa-trash-can"></i></a>
									</div>
								</div>
							</div>
						</c:forEach>
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
									<input type="text" name="tenNguoiNhan"
										class="form-control form-control-sm input-receiver-name"
										placeholder="Tên người nhận" aria-label="name" required />
									<div class="invalid-feedback">Please choose a username.</div>
								</div>
								<div class="col-12 px-0">
									<input type="text" name="sdtNguoiNhan"
										class="form-control form-control-sm input-receiver-phone-number"
										placeholder="SĐT người nhận" aria-label="name" required />
								</div>
								<div class="col-12 px-0">
									<input type="text" name="diaChiNguoiNhan"
										class="form-control form-control-sm input-receiver-address"
										placeholder="Địa chỉ người nhận" aria-label="name" required />
								</div>
								<div class="col-12 mb-4 px-0 text-end">
									<button type="button"
										class="btn btn-sm save-edit-info-receiver">Lưu</button>
									<button type="button"
										class="btn btn-sm btn-secondary cancel-edit-info-receiver">
										Huỷ</button>
								</div>
							</div>
							<div class="row flex-grow-1 info-receiver-content">
								<div
									class="col-12 d-flex justify-content-between pt-20 pb-10 px-0">
									<span class="text-brand-dark receiver-name">${user.hoTen }</span>
									<span class="receiver-phone-number">${user.sdt }</span>
								</div>
								<div class="col-12 d-flex j pt-5 pb-10 px-0 ">
									<span class="receiver-address">${user.diaChi }</span>
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
									<input class="form-check-input" value="0" type="radio" checked
										name="phuongThucTT" id="flexRadioDefault1" /> <label
										class="form-check-label" for="flexRadioDefault1">
										Thanh toán khi nhận hàng </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" value="1"
										name="phuongThucTT" id="flexRadioDefault2" /> <label
										class="form-check-label" for="flexRadioDefault2">
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
										class="text-brand">${dsGHSP.size()} </span>Sản phẩm</span>
								</div>
								<div
									class="col-12 d-flex justify-content-between pt-20 pb-10 px-0">
									<span class="">Tổng thanh toán</span> <span class=""><span
										class="text-brand"> <fmt:formatNumber
												pattern="###,### đ"
												value="${dsGHSP.stream().map(p -> (p.sanPham.gia-(p.sanPham.gia*p.sanPham.dsSPKM[0].khuyenMai.giaTriKM)/100) * p.soLuong).sum()}"
												type="currency" />

									</span></span>
								</div>
							</div>
							<div class="row">
								<div class="col-12 pt-10 pb-10 px-0 border-top border-brand">
									<a name="btnCheckout"><button class="btn btn-brand col-12">Mua
											Ngay</button></a>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
	</main>
	<%@include file="./common/footer.jsp"%>

	<%@include file="./common/script.jsp"%>
	<script type="text/javascript">
		if ($(".alert-flag").attr("aType")) {
			alertify.notify($(".alert-flag").attr("aMessage"), $(".alert-flag")
					.attr("aType"), 100, function() {
				console.log('dismissed');
			});
			alertify.set('notifier', 'position', 'top-right');
		}
	</script>
</body>
</html>