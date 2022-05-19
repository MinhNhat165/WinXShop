<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body>
	<!-- flag   -->
	<div class="page-flag" data="cart"></div>
	<!-- end flag  -->
	<%@include file="./header.jsp"%>
	<main class="main bg-light pt-50" style="height: 664px">
		<section class="mb-50">
			<div class="container">
				<form action="checkout.htm" method="post" class="row">
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
								<div class="col-2">Số lượng</div>
								<div class="col-2 text-center">Thành tiền</div>
								<div class="col-1 text-center">Thao tác</div>
							</div>
						</div>
						<c:forEach var="p" items="${user.dsGHSP}">
							<div
								class="col-12 bg-white p-10 rounded-1 mb-10 product border border-brand">
								<div class="row align-items-center custome-checkbox">
									<div class="col-1 text-center check-box">
										<input class="form-check-input" name="sanPham" checked
											type="checkbox" name="checkbox" id="${p.sanPham.maSP }"
											value="${p.sanPham.maSP }" /> <label
											class="form-check-label" for="${p.sanPham.maSP }"></label>
									</div>
									<div class="col-1 text-center product-img">
										<img src="./resources/imgs/${p.sanPham.anh}" alt="#" />
									</div>
									<div class="col-3 text-center product-name">
										<h5 class="product-name">
											<a href="product-detail/${p.sanPham.maSP }.htm">${p.sanPham.tenSP}</a>
										</h5>
									</div>
									<div class="col-2 text-center product-price">
										<span><fmt:formatNumber pattern="###,### đ"
												value="${p.sanPham.gia}" type="currency" /></span>
									</div>
									<div class="col-2 text-center product-1uantity">
										<div class="quantity">
											<input type="number" name="soLuong" min="1"
												max="${p.sanPham.slt }" step="1" value="${p.soLuong }">
										</div>
									</div>
									<div class="col-2 text-center">

										<fmt:formatNumber pattern="###,### đ"
											value="${(p.sanPham.gia-(p.sanPham.gia*p.sanPham.dsSPKM[0].khuyenMai.giaTriKM)/100)*p.soLuong}"
											type="currency" />

									</div>
									<div class="col-1 text-center product-cart-action">
										<a href="cart/remove/${p.sanPham.maSP }.htm"
											class="text-muted"><i class="fa-regular fa-trash-can"></i></a>
									</div>
								</div>
							</div>
						</c:forEach>

						<div class="cart-action text-end">
							<a class="btn" href="shop.htm"><i
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
									class="text-brand">${user.dsGHSP.size()} </span>Sản phẩm</span>
							</div>
							<div
								class="col-12 d-flex justify-content-between pt-20 pb-10 px-0">
								<span class="">Tổng thanh toán</span> <span class=""><span
									class="text-brand"> <fmt:formatNumber
											pattern="###,### đ"
											value="${user.dsGHSP.stream().map(p -> (p.sanPham.gia-(p.sanPham.gia*p.sanPham.dsSPKM[0].khuyenMai.giaTriKM)/100) * p.soLuong).sum()}"
											type="currency" />
								</span></span>
							</div>
						</div>
						<div class="row">
							<div class="col-12 pt-10 pb-10 px-0 border-top border-brand">
								<button name="btnCheckout" class="btn btn-brand col-12">Mua
									Ngay</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
	</main>
	<%@include file="./footer.jsp"%>
	<%@include file="./script.jsp"%>
</body>
</html>