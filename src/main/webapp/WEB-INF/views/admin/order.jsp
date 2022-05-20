<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>
<body>
	<!-- flag -->
	<div class="page-flag" data="order"></div>
	<div class="modal-flag" idModal="${idModal}"></div>
	<!-- End-flag -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<%@include file="./sidebar.jsp"%>
		<div class="page-wrapper pt-0">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- basic table -->

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title fs-3">Danh sách đơn đặt</h5>
								<div>
									<table id="zero_config"
										class="table table-striped table-bordered no-wrap green-color">
										<thead>
											<tr>
												<th>Mã đơn đặt</th>
												<th>Khách đặt</th>
												<th>Ngày đặt</th>
												<th>Giá</th>
												<th>Trạng thái</th>
												<th class="text-center">Option</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="o" items="${orders }">
												<tr>
													<td>${o.maDD }</td>
													<td>${o.tenNguoiNhan }</td>
													<td>${o.ngayDat }</td>
													<td><fmt:formatNumber pattern="###,### đ"
															value="${o.tongTien }" type="currency" /></td>
													<td><c:if test="${o.trangThai == 0}">
															<span class="badge rounded-pill bg-danger"
																style="color: white !important">Chờ xác nhận</span>
														</c:if> <c:if test="${o.trangThai == 1}">
															<span class="badge rounded-pill bg-primary"
																style="color: white !important">Đang vận chuyển</span>
														</c:if> <c:if test="${o.trangThai == 2}">
															<span class="badge rounded-pill bg-success"
																style="color: white !important">Đã giao</span>
														</c:if> <c:if test="${o.trangThai == 3}">
															<span class="badge rounded-pill bg-secondary"
																style="color: white !important">Huỷ</span>
														</c:if>
													<td class="text-center">
														<button class="btn btn-light btn-outline-info btn-sm"
															data-toggle="modal" data-target=#${o.maDD}>
															<i class="fas fa-info-circle"></i>
														</button> <a
														href="admin/order/change-status/${o.maDD }.htm?linkEdit">
															<button class="btn btn-light btn-outline-warning btn-sm">
																<i class="fas fa-edit"></i>
															</button>

													</a>
													</td>
												</tr>
											</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->

			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
			<!-- Center modal content -->
			<c:forEach var="o" items="${orders }">
				<div class="modal fade" id=${o.maDD } tabindex="-1" role="dialog"
					aria-hidden="true">
					<div class="modal-dialog modal-lg modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header green-bg-color">
								<h4 class="modal-title text-white" id="myCenterModalLabel">Thông
									tin</h4>
								<button type="button" class="close v-close" data-dismiss="modal"
									aria-hidden="true">×</button>
							</div>
							<div class="modal-body">
								<div class="row py-5 p-4 bg-white rounded shadow-sm">
									<div class="col-lg-12">
										<div
											class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold green-bg-color"
											style="color: #fff !important">Đơn đặt</div>
										<div class="p-4">
											<ul class="list-unstyled mb-4">
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Mã đơn đặt </strong><strong>${o.maDD }</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Khách hàng </strong><strong>${o.khachHang.hoTen }</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Ngày đặt </strong><strong>${o.ngayDat }</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Địa chỉ giao hàng</strong><strong>${o.diaChi }</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Tổng tiền</strong>
													<h5 class="font-weight-bold"
														style="font-weight: 800 !important;">${o.tongTien }</h5>
												</li>
											</ul>

										</div>
									</div>
								</div>

								<div class="px-4 px-lg-0">

									<div class="pb-5">
										<div class="container">
											<div class="row">
												<div
													class="col-lg-12 p-5 mt-5 bg-white rounded shadow-sm mb-5">

													<!-- Shopping cart table -->
													<div class="table-responsive">
														<table class="table">
															<thead>
																<tr>
																	<th scope="col" class="border-0 bg-light">
																		<div class="p-2 px-3 text-uppercase">Sản phẩm</div>
																	</th>
																	<th scope="col" class="border-0 bg-light ">
																		<div class="py-2 text-uppercase text-center">Số
																			lượng</div>
																	</th>
																	<th scope="col" class="border-0 bg-light">
																		<div class="py-2 text-uppercase text-center">Khuyến
																			mãi</div>
																	</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th scope="row" class="border-0">
																		<div class="p-2">
																			<img
																				src="https://bootstrapious.com/i/snippets/sn-cart/product-1.jpg"
																				alt="" width="70"
																				class="img-fluid rounded shadow-sm">
																			<div class="ml-3 d-inline-block align-middle">
																				<h5 class="mb-0">
																					<a href="#"
																						class="text-dark d-inline-block align-middle">Timex
																						Unisex Originals</a>
																				</h5>
																				<span
																					class="text-muted font-weight-normal font-italic d-block">Category:
																					Watches</span>
																			</div>
																		</div>
																	</th>
																	<td class="align-middle text-center"><strong>3</strong>
																	</td>
																	<td class="align-middle text-center"><strong>10%</strong></td>
																</tr>
																<tr>
																	<th scope="row">
																		<div class="p-2">
																			<img
																				src="https://bootstrapious.com/i/snippets/sn-cart/product-2.jpg"
																				alt="" width="70"
																				class="img-fluid rounded shadow-sm">
																			<div class="ml-3 d-inline-block align-middle">
																				<h5 class="mb-0">
																					<a href="#" class="text-dark d-inline-block">Lumix
																						camera lense</a>
																				</h5>
																				<span
																					class="text-muted font-weight-normal font-italic">Category:
																					Electronics</span>
																			</div>
																		</div>
																	</th>
																	<td class="align-middle text-center"><strong>3</strong>
																	</td>
																	<td class="align-middle text-center"><strong>30%</strong></td>

																</tr>
																<tr>
																	<th scope="row">
																		<div class="p-2">
																			<img
																				src="https://bootstrapious.com/i/snippets/sn-cart/product-3.jpg"
																				alt="" width="70"
																				class="img-fluid rounded shadow-sm">
																			<div class="ml-3 d-inline-block align-middle">
																				<h5 class="mb-0">
																					<a href="#" class="text-dark d-inline-block">Gray
																						Nike running shoe</a>
																				</h5>
																				<span
																					class="text-muted font-weight-normal font-italic">Category:
																					Fashion</span>
																			</div>
																		</div>
																	<td class="align-middle text-center"><strong>3</strong>
																	</td>
																	<td class="align-middle text-center"><strong>20%</strong></td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- End -->
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.modal-dialog -->
				</div>
			</c:forEach>
			<!-- /.modal -->
			<div class="modal fade" id="editStatus" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered v-modal-dialog">
					<div class="modal-content">
						<div class="modal-header green-bg-color">
							<h5 class="modal-title text-white">Đổi trạng thái</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form method="post" modelAttribute="order">
							<div class="modal-body">
								<label for="trangThai">Chọn trạng thái:</label> <select
									name="trangThai" path="trangThai" id="trangThai">
									<option value="0">Chờ xác nhận</option>
									<option value="1">Đang vận chuyển</option>
									<option value="2">Đã giao</option>
									<option value="3">Đã hủy</option>
								</select>

							</div>

							<div class="modal-footer">


								<button type="submit" name="${btnStatus}"
									class="btn btn-primary btn-green">Lưu</button>


							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<%@include file="./script.jsp"%>
	<script type="text/javascript">
	if ($(".modal-flag").attr("idModal") === "modalCreate") {
		$("#editStatus").modal("show");
	}
	var idOrderStatus = document.querySelector('#order-status');
	if(idOrderStatus.textContent == "0"){
		idOrderStatus.textContent = "Chờ xác nhận";
	} else if(idOrderStatus.textContent == "1"){
		idOrderStatus.textContent = "Đang vận chuyển";
	}else if(idOrderStatus.textContent == "2"){
		idOrderStatus.textContent = "Đã giao"
	}else if(idOrderStatus.textContent == "3"){
		idOrderStatus.textContent = "Đã hủy"
	}
	
	var arr = document.querySelectorAll('#order-status');
	for (let i = 0; i < arr.length; i++) {
	    if(arr[i].innerText == 0){
	    	arr[i].innerText = "Chờ xác nhận"
	    } else if(arr[i].innerText == 1){
	    	arr[i].innerText = "Đang vận chuyển"
	    }else if(arr[i].innerText == 2){
	    	arr[i].innerText = "Đã giao"
	    }else if(arr[i].innerText == 3){
	    	arr[i].innerText = "Đã hủy"
	    }
	}
	
	 $("#zero_config_filter")
     .append(`<div class="search-bar-table d-flex align-items-stretch">
	        	    <div class="position-relative">
	                <button type="button" class="btn btn-green text-white btn-filter" data-toggle="collapse" data-target="#filter-table">
	                    <i class="fa-regular fa-filter-list"></i>
	                    <span class="text-white"></span>
	                </button>
	                <!-- filter table -->
	                <div class="card position-absolute text-start collapse shadow-lg end-100 top-0 filter-block" id="filter-table" style="z-index: 100; min-width: 24rem;">
	                    <div class="card-header p-2 fs-5 green-color" style="background-color: #c4f0d5">
	                        Bộ lọc
	                    </div>
	                    <div class="card-body">
	                        <form action="admin/sale/index.htm" method="post" class="row g-3" id="form-filter">
	                            <div class="col-12 mt-0 px-0">
	                                <label for="input-start-date" class="form-label">Ngày bắt đầu</label>
	
	                                <div class="col-12 px-0 d-flex gap-1 justify-content-around align-items-stretch">
	                                    <div class="input-group">
	                                        <input type="date" name="ngayBDLeft" class="form-control" />
	                                    </div>
	                                    <button type="button" class="btn btn-green btn-sm btn-range-filter" data-toggle="collapse" data-target="#input-start-date-right">
	                                        Đến
	                                    </button>
	
	                                    <div class="input-group collapse range-filter-right" id="input-start-date-right">
	                                        <input type="date" name="ngayBDRight" class="form-control" />
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-12 mt-0 px-0">
	                                <label for="input-start-date" class="form-label">Ngày kết thúc </label>
	
	                                <div class="col-12 px-0 d-flex gap-1 justify-content-around align-items-stretch">
	                                    <div class="input-group">
	                                        <input type="date" name="ngayKTLeft" class="form-control" />
	                                    </div>
	                                    <button type="button" class="btn btn-green btn-sm btn-range-filter" data-toggle="collapse" data-target="#input-end-date-right">
	                                        Đến
	                                    </button>
	
	                                    <div class="input-group collapse range-filter-right" id="input-end-date-right">
	                                        <input type="date" class="form-control" name="ngayKTRight" />
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-12 px-0">
	                                <label for="inputAddress" class="form-label">Trạng thái</label>
	                                <div class="col-md-12 d-flex px-0">
	                                    <div class="form-check pl-1">
	                                        <input name="trangThai" type="radio" class="form-check-input-filter invisible position-absolute" id="trangThai" value="2" checked />
	                                        <label class="py-1 px-2" for="trangThai">
	                                            Tất cả
	                                        </label>
	                                    </div>
	                                    <div class="form-check pl-1">
	                                        <input name="trangThai" type="radio" class="form-check-input-filter invisible position-absolute" id="trangThai0" value="0" />
	                                        <label class="form-check-label py-1 px-2" for="trangThai0">
	                                            <div class="d-inline">Hết hiệu lực</div>
	                                        </label>
	                                    </div>
	                                    <div class="form-check pl-1">
	                                        <input value="1" name="trangThai" type="radio" class="form-check-input-filter invisible position-absolute" id="trangThai1" />
	                                        <label class="form-check-label py-1 px-2" for="trangThai1">
	                                            <div class="d-inline">Còn hiệu lực</div>
	                                        </label>
	                                    </div>
	                                </div>
	                            </div>
	                        </form>
	                    </div>
	                    <div class="card-footer text-end p-2">
	                        <button type="submit" form="form-filter" name="btnFilter" class="btn btn-green">
	                            Lọc
	                        </button>
	                        <button type="reset" class="btn btn-secondary mb-0">
	                            Đặt lại
	                        </button>
	                    </div>
	                </div>
	            </div>
	        </div>`);
	 $(".btn-create").remove();
	 </script>
</body>
</html>

