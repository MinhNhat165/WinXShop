<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<%@include file="./common/head.jsp"%>
<body>
	<%@include file="./common/header.jsp"%>
	<div class="tab-flag" data="${tabId}"></div>
	<div class="page-flag" data="account"></div>
	<main class="main bg-light vh-90">
		<section class="pt-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-md-3">
								<div class="dashboard-menu">
									<ul class="nav flex-column" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="account-detail-tab" data-bs-toggle="tab"
											href="#account-detail" role="tab"
											aria-controls="account-detail" aria-selected="true"><i
												class="fa-regular fa-user mr-10"></i>Thông tin cá nhân</a></li>
										<li class="nav-item"><a class="nav-link"
											id="change-pwd-tab" data-bs-toggle="tab" href="#change-pwd"
											role="tab" aria-controls="change-pwd" aria-selected="false"><i
												class="fa-regular fa-arrows-rotate mr-10"></i> Đổi mật khẩu</a>
										</li>
										<li class="nav-item"><a class="nav-link" id="orders-tab"
											data-bs-toggle="tab" href="#orders" role="tab"
											aria-controls="orders" aria-selected="false"><i
												class="fa-regular fa-ballot-check mr-10"></i>Đơn đặt</a></li>
										<li class="nav-item"><a class="nav-link"
											href="logout.htm"><i
												class="fa-regular fa-arrow-right-from-bracket mr-10"></i>Đăng
												xuất</a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-9">
								<div class="tab-content change-pwd-content">
									<div class="tab-pane fade" id="change-pwd" role="tabpanel"
										aria-labelledby="change-pwd-tab">

										<div class="card shadow">
											<div class="card-header">
												<h5 class="mb-0">Đổi mật khẩu</h5>
											</div>

											<div class="card-body">
												<div class="row">
													<form class="col-4 mx-auto pt-5 card" method="post">
														<div class="form-group col-md-12">
															<label for="input-current-password">Mật khẩu hiện
																tại</label> <input type="password" name="cpassword"
																class="form-control" id="input-current-password" /> <span
																class="text-danger"> ${message1}</span>
														</div>
														<div class="form-group col-md-12">
															<label for="input-new-password">Mật khẩu mới</label> <input
																type="password" name="npassword" class="form-control"
																id="input-new-password" /> <span class="text-danger">
																${message3}</span>
														</div>
														<div class="form-group col-md-12">
															<label for="input-confirm-new-password">Xác nhận
																mật khẩu mới</label> <input type="password" name="renpassword"
																class="form-control" id="input-confirm-new-password" />
															<span class="text-danger">${message2}</span>
														</div>

														<div class="form-group col-12">
															<button type="submit" name="btnpw"
																class="btn btn-primary col-12">Lưu thay đổi</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="orders" role="tabpanel"
										aria-labelledby="orders-tab">
										<div class="card shadow">
											<div class="card-header">
												<h5 class="mb-0 d-flex justify-content-between align-center">
													Đơn đặt của bạn
													<form:form class="row popup">
														<div class="d-flex gap-1">
															<div class="input-group">
																<input type="text" class="form-control"
																	id="order-search" placeholder="Search" />
																<div class="input-group-text bg-brand text-white">
																	<i class="fa-regular fa-magnifying-glass"></i>
																</div>
															</div>
															<div class="popup-btn">
																<button class="btn">
																	<i class="fa-regular fa-filter-list"></i>
																</button>
																<div class="popup-card p-10"></div>
															</div>
														</div>
													</form:form>
												</h5>
											</div>
											<div class="card-body shadow">
												<div
													class="col-12 bg-white p-10 rounded mb-10 bg-brand text-white">
													<div class="row">
														<div class="col-2 text-center">Mã đơn</div>
														<div class="col-3 text-center">Ngày đặt</div>
														<div class="col-2 text-center">Trạng thái</div>
														<div class="col-3 text-center">Tổng</div>

														<div class="col-2 text-center">Thao tác</div>
													</div>
												</div>
												<c:forEach var="o" items="${orders }">
													<div class="col-12">
														<div
															class="col-12 bg-white p-10 rounded-1 mb-5 product border border-brand">
															<div class="row align-items-center custome-checkbox">
																<div class="col-2 text-center product-name">
																	<h5 class="order-id">
																		<a href="shop-product-right.html">${o.maDD } </a>
																	</h5>
																</div>
																<div class="col-3 text-center order-date">
																	<span>${o.ngayDat} </span>
																</div>
																<div class="col-2 text-center product-state">
																	<c:if test="${o.trangThai == 0}">
																		<span
																			class="badge rounded-pill bg-warning order-status"
																			id="order-status">Đang chờ xác nhận </span>
																	</c:if>
																	<c:if test="${o.trangThai == 1}">
																		<span
																			class="badge rounded-pill bg-primary order-status"
																			id="order-status">Đang giao </span>
																	</c:if>
																	<c:if test="${o.trangThai == 2}">
																		<span class="badge rounded-pill bg-brand order-status"
																			id="order-status">Đã giao </span>
																	</c:if>
																	<c:if test="${o.trangThai == 3}">
																		<span
																			class="badge rounded-pill bg-secondary order-status"
																			id="order-status">Huỷ </span>
																	</c:if>

																</div>
																<div class="col-3 text-center">

																	<fmt:formatNumber pattern="###,### đ"
																		value="${o.tongTien }" type="currency" />

																</div>
																<div
																	class="col-2 d-flex justify-content-center gap-md-3 order-action">
																	<a
																		href="order/change-status/${o.getMaDD()}.htm?linkEdit"
																		class="text-muted my-tooltip" aria-label="Huỷ đơn"
																		data-bs-toggle="modal" data-bs-target=#${o.getMaDD()}>
																		<i class="fa-regular fa-ban"></i>
																	</a> <a href="#" class="text-muted my-tooltip"
																		data-bs-toggle="modal"
																		data-bs-target=#d-${o.getMaDD()} aria-label="Chi tiết"><i
																		class="fa-regular fa-circle-info"></i></a>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>

									<div class="tab-pane fade active show" id="account-detail"
										role="tabpanel" aria-labelledby="account-detail-tab">
										<div class="card shadow">
											<div class="card-header">
												<h5>Thông tin cá nhân</h5>
											</div>
											<div class="card-body">
												<form:form action="account/update.htm" modelAttribute="kh"
													method="post" enctype="multipart/form-data"
													class="needs-validation">
													<div class="row">

														<div class="col-md-4">
															<div class="avatar-wrapper">
																<img class="profile-pic"
																	src="./resources/imgs/${user.anh }" />
																<div class="upload-button">
																	<i class="fa fa-arrow-circle-up" aria-hidden="true"></i>
																</div>
																<input class="file-upload" id="profile-img"
																	name="profile-img" type="file" />
															</div>
															<div class="col-12 text-center text-brand-dark">
																<span class="fs-5">${user.taiKhoan.email}</span>
															</div>
														</div>

														<div class="col-8">


															<div class="row">
																<div class="form-group col-md-12">
																	<label>Họ và tên <span class="required">*</span>
																	</label> <input class="form-control" name="hoTen" id="hoTen"
																		type="text" value="${user.hoTen}" />
																</div>

																<fieldset class="col-md-12">
																	<legend class="col-form-label col-sm-2 pt-0">
																		Giới tính </legend>

																	<div class="col-sm-12 d-flex gap-4 ml-10">
																		<div class="form-check custom-radio">
																			<input class="form-check-input" type="radio"
																				name="phai" id="female" value="0"
																				${user.phai? '':'checked' } /> <label
																				class="form-check-label" for="female"> Nữ </label>
																		</div>

																		<div class="form-check custom-radio">
																			<input class="form-check-input" type="radio"
																				name="phai" id="male" ${user.phai?'checked':'' }
																				value="1" /> <label class="form-check-label"
																				for="male"> Nam </label>
																		</div>
																	</div>
																</fieldset>
																<div class="form-group col-md-12">
																	<label>Ngày sinh <span class="required">*</span>
																	</label> <input id="ngaySinh" class="form-control"
																		name="ngaySinh" type="date" value="${user.ngaySinh}" />
																</div>
																<div class="form-group col-md-12">
																	<label>Địa chỉ <span class="required">*</span>
																	</label> <input class="form-control" name="diaChi" id="diaChi"
																		type="text" value="${user.diaChi }" />
																</div>
																<div class="form-group col-md-12">
																	<label>SDT <span class="required">*</span>
																	</label> <input id="sdt" class="form-control" name="sdt"
																		type="text" value="${user.sdt}" />
																</div>

																<div class="col-md-12">
																	<button type="submit" class="btn">Xác nhận</button>
																</div>
															</div>

														</div>
													</div>
												</form:form>
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
	<!-- confirm modal -->
	<c:forEach var="o" items="${orders }">
		<div class="modal fade" id=${o.getMaDD() } tabindex="-1" role="dialog"
			aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-sm">
				<div class="modal-content">
					<form method="post" modelAttribute="donDat"
						action="order/change-status/${o.getMaDD()}.htm">
						<div class="modal-body">Bạn có chắn chắn muốn hủy sản phẩm
							đang chọn</div>
						<div class="text-end p-10">
							<button type="submit" class="btn" name="${btnStatus}">Xác
								nhận</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">huỷ</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</c:forEach>
	<!-- order details modal -->
	<c:forEach var="o" items="${orders}">
		<div class="modal fade" id="d-${o.maDD}" tabindex="-1"
			aria-labelledby="confirm-modal" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="row">
						<div class="col-md-12 mx-auto">
							<div class="order_review border-0">
								<div class="mb-20 d-flex justify-content-between">
									<h4>
										Mã đơn: <span class="text-brand">${o.maDD}</span>
									</h4>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="table-responsive order_table text-center">
									<table class="table">
										<thead>
											<tr>
												<th colspan="2">Sản phẩm</th>
												<th>Tổng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="c" items="${o.dsCTDD}">
												<tr>
													<td class="image product-thumbnail"><img
														src="./resources/imgs/${c.sanPham.anh}" alt="#" /></td>
													<td>
														<h5>
															<a href="shop-product-full.html">${c.sanPham.tenSP}</a>
														</h5> <span class="product-qty align-middle"><i
															class="fa-regular fa-xmark"></i> ${c.soLuong}</span>
													</td>
													<td><fmt:formatNumber pattern="###,### đ"
															value="${(c.sanPham.gia-(c.sanPham.gia*c.khuyenMai.giaTriKM)/100)*c.soLuong}"
															type="currency" /></td>
												</tr>
											</c:forEach>


											<tr>
												<th>Tổng</th>
												<td class="product-subtotal" colspan="2"><fmt:formatNumber
														pattern="###,### đ" value="${o.tongTien}" type="currency" /></td>
											</tr>
											<tr>
												<th>Phí vận chuyển</th>
												<td colspan="2"><em>Miễn phí</em></td>
											</tr>
											<tr>
												<th>Tổng thanh toán</th>
												<td colspan="2" class="product-subtotal"><span
													class="font-xl text-brand fw-900"> <fmt:formatNumber
															pattern="###,### đ" value="${o.tongTien}" type="currency" />


												</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="bt-1 border-color-1 mt-30 mb-30"></div>
								<div class="payment_method">
									<div class="mb-25">
										<h5>
											Địa chỉ giao hàng: <span class="text-brand">${o.diaChi}</span>
										</h5>
									</div>
								</div>
								<div class="bt-1 border-color-1 mt-30 mb-30"></div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>



	<%@include file="./common/footer.jsp"%>
	<%@include file="./common/script.jsp"%>
	<script type="text/javascript">
		if ($(".modal-flag").attr("idModal") === "modalCreate") {
			console.log("active");
			$("#edit-status").modal("show");
		} else if ($(".modal-flag").attr("idModal") === "modalShow") {
			$("#order-details").modal("show");
		}
		let tabId = $(".tab-flag").attr("data")
		$(".tab-pane").removeClass("active show")
		$(".nav-link").removeClass("active")
		$('a[href=#' + tabId + ']').addClass("active show")
		$("#" + tabId).addClass("active show")
	</script>
</body>
</html>