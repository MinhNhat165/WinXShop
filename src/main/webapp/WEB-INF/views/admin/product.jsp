<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>

<body>
	<!-- flag -->
	<div class="page-flag" data="product"></div>
	<div class="modal-flag" idModal="${idModal}"></div>
	<!-- End-flag -->

	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<%@include file="./sidebar.jsp"%>
		<div class="page-wrapper pt-0">


			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- basic table -->

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title fs-3">Danh sách sản phẩm</h5>
								<div>
									<table id="zero_config"
										class="table table-striped table-bordered no-wrap green-color">
										<thead>
											<tr>
												<th>Mã sản phẩm</th>
												<th>Tên sản phẩm</th>
												<th>Giá</th>
												<th>Loại</th>
												<th>Trạng thái</th>
												<th>Option</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="sp" items="${dssanpham }">

												<tr>
													<td>${sp.getMaSP()}</td>
													<td>${sp.getTenSP()}</td>
													<td><fmt:formatNumber pattern="###,### đ"
															value="${sp.getGia()}" type="currency" /></td>
													<td><c:choose>
															<c:when test="${sp.loai==0}">
																						Nam
																					</c:when>
															<c:when test="${sp.loai==1}">
																						Nữ
																					</c:when>
															<c:when test="${sp.loai==2}">
																						Unisex
																					</c:when>
														</c:choose></td>
													<td>2009/02/27</td>
													<td><a
														href="admin/product/show/${sp.getMaSP() }.htm?linkShow">
															<button class="btn btn-light btn-outline-info btn-sm">
																<i class="fas fa-info-circle"></i>
															</button>

													</a> <a
														href="admin/product/update/${sp.getMaSP() }.htm?linkEdit">
															<button class="btn btn-light btn-outline-warning btn-sm">
																<i class="fas fa-edit"></i>
															</button>
													</a></td>
												</tr>

											</c:forEach>
										</tbody>

									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade" id="product" tabindex="-1" role="dialog"
						aria-hidden="true">
						<div class="modal-dialog modal-lg modal-dialog-centered">
							<div class="modal-content ">
								<div class="modal-header green-bg-color">
									<h4 class="modal-title text-white" id="myCenterModalLabel">Sản
										Phẩm</h4>
									<button type="button" class="close v-close"
										data-dismiss="modal" aria-hidden="true">×</button>
								</div>
								<div class="modal-body">
									<div
										class="container tm-mt-big tm-mb-big h-100 d-flex align-items-center justify-content-center">
										<div class="row">
											<div class="">
												<div class="tm-bg-primary-dark tm-block tm-block-h-auto">

													<div class="row tm-edit-product-row">
														<form:form class="tm-edit-product-form col-12 row"
															method="post" enctype="multipart/form-data"
															modelAttribute="sanpham">

															<div class="col-xl-6 col-lg-6 col-md-12">

																<div class="form-group mb-3">
																	<label for="name">Mã sản phẩm </label>
																	<form:input path="maSP" class="form-control validate"
																		required="true" readonly="${status }" />
																	<span class="text-danger"><form:errors
																			path="maSP"></form:errors></span>
																</div>
																<div class="form-group mb-3">
																	<label for="name">Tên sản phẩm </label>
																	<form:input path="tenSP" class="form-control validate"
																		required="true" />
																	<span class="text-danger"><form:errors
																			path="tenSP"></form:errors></span>
																</div>
																<form:input path="ngayThem" type="date"
																	style="display: none" />
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="expire_date">Giá </label>
																		<form:input path="gia" class="form-control validate"
																			data-large-mode="true" />
																		<span class="text-danger"><form:errors
																				path="gia"></form:errors></span>
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Số lượng tồn </label>
																		<form:input type="number" min="0"
																			oninput="this.value=this.value.replace(/[^0-9]/g,'');"
																			path="slt" class="form-control validate"
																			required="true" />
																		<span class="text-danger"><form:errors
																				path="slt"></form:errors></span>
																	</div>
																</div>
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="category">Loại</label>
																		<form:select
																			class="custom-select rounded tm-select-accounts"
																			path="loai">
																			<option value="0">Nam</option>
																			<option value="1">Nữ</option>
																			<option value="2">Unisex</option>
																		</form:select>
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Dung tích </label>
																		<form:input path="dungTich" type="number" min="1"
																			oninput="this.value=this.value.replace(/[^0-9]/g,'');"
																			class="form-control validate" required="true" />
																		<span class="text-danger"><form:errors
																				path="dungTich"></form:errors></span>
																	</div>
																</div>

																<div class="form-group mb-3">
																	<label for="category">Nhãn hàng</label>
																	<form:select class='fstdropdown-select'
																		path="nhanHang.maNH" items="${dsnhanhang }"
																		itemLabel="tenNH" itemValue="maNH">
																	</form:select>

																</div>
																<div class="form-group mb-3">
																	<label for="description">Mô tả</label>
																	<form:textarea path="moTa"
																		class="form-control validate" rows="3" required="true"></form:textarea>
																</div>

															</div>
															<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
															<form:input class="invisible position-absolute" path="anh"/>
																<div
																	class="tm-product-img-dummy mx-auto rounded profile-pic"
																	style="background-image: url('.//resources//imgs//${sanpham.anh}');background-size: cover">

																	<i class="fas fa-cloud-upload-alt tm-upload-icon"
																		onclick="document.getElementById('fileInput').click();"></i>
																</div>
																<div class="custom-file mt-3 mb-3">
																	<input name="anh3" type="file" class="file-upload"
																		style="display: none;" /> <span class="text-danger"><form:errors
																			path="anh"></form:errors></span>
																	<button type="button"
																		class="btn btn-primary btn-block mx-auto btn-green shadow-none upload-button">Tải
																		ảnh lên</button>
																</div>
																<div class="row mt-4">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Ngày sản xuất </label>
																		<form:input path="ngaySX" type="date"
																			class="form-control validate" required="true" />
																		<form:errors path="ngaySX"></form:errors>
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Ngày hết hạn </label>
																		<form:input path="ngayHH" type="date"
																			class="form-control validate" required="true" />
																		<span class="text-danger"><form:errors
																				path="ngayHH"></form:errors></span>
																	</div>

																</div>
															</div>
															<div class="col-12">
																<button name="${btnStatus}" type="submit"
																	class="btn btn-primary btn-block text-uppercase btn-green shadow-none">Lưu
																</button>
															</div>
														</form:form>
													</div>
												</div>
											</div>
											<!-- /.modal -->
										</div>
										<!-- ============================================================== -->
										<!-- End Page wrapper  -->
										<!-- ============================================================== -->
									</div>
								</div>
							</div>
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!-- Center modal content -->
					<div class="modal fade" id="showproduct" tabindex="-1"
						role="dialog" aria-hidden="true">
						<div class="modal-dialog modal-lg modal-dialog-centered">
							<div class="modal-content ">
								<div class="modal-header green-bg-color">
									<h4 class="modal-title text-white" id="myCenterModalLabel">Thông
										tin</h4>
									<button type="button" class="close v-close"
										data-dismiss="modal" aria-hidden="true">×</button>
								</div>
								<div class="modal-body">
									<div
										class="container tm-mt-big tm-mb-big h-100 d-flex align-items-center justify-content-center">
										<div class="row">
											<div class="col-12">
												<div class="tm-bg-primary-dark tm-block tm-block-h-auto">

													<div class="row tm-edit-product-row">

														<form:form modelAttribute="nhanhang"
															class="tm-edit-product-form">
															<div class="row col-12">
																<div class="col-xl-6 col-lg-6 col-md-12">
																	<div class="tm-product-img-dummy mx-auto rounded"
																		style="background-image: url('.//resources//imgs//${sanpham.anh}');background-size: cover">

																	</div>
																	<div class="custom-file mt-3 mb-3">
																		<input id="fileInput" type="file"
																			style="display: none;" />
																		<div
																			Style="padding: 4px 8px; background-color: #088178; text-align: center; color: #fff">
																			<h4 class="mt-2">${sanpham.maSP}</h4>
																		</div>

																	</div>
																	<div class="row mt-4">
																		<div class="form-group mb-3 col-xs-12 col-sm-6">
																			<p class="m-b-10 f-w-600">Ngày sản xuất</p>
																			<h6 class="text-muted f-w-400">${sanpham.ngaySX}</h6>
																		</div>
																		<div class="form-group mb-3 col-xs-12 col-sm-6">
																			<p class="m-b-10 f-w-600">Ngày hết hạn</p>
																			<h6 class="text-muted f-w-400">${sanpham.ngayHH}</h6>
																		</div>
																		<div class="form-group mb-3 col-xs-12 col-sm-6">
																			<p class="m-b-10 f-w-600">Ngày thêm</p>
																			<h6 class="text-muted f-w-400">${sanpham.ngayThem}</h6>
																		</div>
																	</div>
																</div>

																<div class="col-xl-6 col-lg-6 col-md-12">
																	<div class="form-group mb-3">
																		<p class="m-b-10 f-w-600">Mã sản phẩm</p>
																		<h6 class="text-muted f-w-400">${sanpham.maSP}</h6>
																	</div>
																	<div class="form-group mb-3">
																		<p class="m-b-10 f-w-600">Tên sản phẩm</p>
																		<h6 class="text-muted f-w-400">${sanpham.tenSP}</h6>
																	</div>
																	<div class="row">
																		<div class="form-group mb-3 col-xs-12 col-sm-6">
																			<p class="m-b-10 f-w-600">Giá</p>
																			<h6 class="text-muted f-w-400">
																				<fmt:formatNumber pattern="###,### đ"
																					value="${sanpham.gia}" type="currency" />

																			</h6>
																		</div>
																		<div class="form-group mb-3 col-xs-12 col-sm-6">
																			<p class="m-b-10 f-w-600">Số lượng tồn</p>
																			<h6 class="text-muted f-w-400">${sanpham.slt}</h6>
																		</div>
																	</div>
																	<div class="form-group mb-3">
																		<p class="m-b-10 f-w-600">Mô tả</p>
																		<h6 class="text-muted f-w-400">${sanpham.moTa}</h6>
																	</div>

																	<div class="row">
																		<div class="form-group mb-3 col-xs-12 col-sm-6">
																			<p class="m-b-10 f-w-600">Loại</p>
																			<h6 class="text-muted f-w-400">
																				<c:choose>
																					<c:when test="${sanpham.loai==0}">
																						Nam
																					</c:when>
																					<c:when test="${sanpham.loai==1}">
																						Nữ
																					</c:when>
																					<c:when test="${sanpham.loai==2}">
																						Unisex
																					</c:when>
																				</c:choose>


																			</h6>
																		</div>
																		<div class="form-group mb-3 col-xs-12 col-sm-6">
																			<p class="m-b-10 f-w-600">Dung tích</p>
																			<h6 class="text-muted f-w-400">${sanpham.dungTich}</h6>
																		</div>
																	</div>

																	<div class="form-group mb-3">
																		<p class="m-b-10 f-w-600">Nhãn hàng</p>
																		<h6 class="text-muted f-w-400">${sanpham.getNhanHang().getTenNH()}</h6>
																	</div>
																</div>
															</div>

														</form:form>
													</div>

												</div>
											</div>
											<!-- /.modal -->
										</div>
										<!-- ============================================================== -->
										<!-- End Page wrapper  -->
										<!-- ============================================================== -->
									</div>
								</div>
							</div>
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<%@include file="./script.jsp"%>
	<script>
		if ($(".modal-flag").attr("idModal") === "modalCreate") {
			$("#product").modal("show");
		} else if ($(".modal-flag").attr("idModal") === "modalShow") {
			$("#showproduct").modal("show");
		}

		var readURL = function(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$(".profile-pic").attr("src", e.target.result);
					$(".profile-pic").css({
						'background-image' : 'url(' + e.target.result + ')',
						'background-size' : 'cover'
					});

				};

				reader.readAsDataURL(input.files[0]);
			}
		};

		$(".file-upload").on("change", function() {
			readURL(this);
		});

		$(".upload-button").on("click", function() {
			$(".file-upload").click();
		});
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
	
	</script>
</body>
</html>