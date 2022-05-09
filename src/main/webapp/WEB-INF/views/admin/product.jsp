<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<body>
	<div class="modal-flag" idModal="${idModal}"></div>

	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<%@include file="./sidebar.jsp"%>
		<div class="page-wrapper pt-0">
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-12 align-self-center">
						<h4
							class="page-title text-truncate text-dark font-weight-medium mb-1">Sản
							Phẩm</h4>
					</div>

				</div>
			</div>

			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- basic table -->
				<a href="admin/product/add.htm"><button type="button"
					class="btn btn-secondary green-bg-color shadow-none">
					<i class=" fas fa-plus-circle"></i> Thêm
				</button></a>
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
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
													<td>${sp.getGia()}</td>
													<td>${sp.getLoai()}</td>
													<td>2009/02/27</td>
													<td><a
														href="admin/product/show/${sp.getMaSP() }.htm?linkShow">
															<i class="fas fa-info-circle green-color"
															data-toggle="modal" data-target="#showproduct"></i>
													</a> <a
														href="admin/product/update/${sp.getMaSP() }.htm?linkEdit">
															<i class=" fas fa-edit green-color"></i>
													</a></td>
												</tr>

											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<th>Mã sản phẩm</th>
												<th>Tên sản phẩm</th>
												<th>Giá</th>
												<th>Loại</th>
												<th>Trạng thái</th>
												<th>Option</th>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade" id="product" tabindex="-1" role="dialog"
						aria-hidden="true">
						<div class="modal-dialog modal-lg modal-dialog-centered">
							<div class="modal-content ">
								<div class="modal-header">
									<h4 class="modal-title" id="myCenterModalLabel">Sản Phẩm</h4>
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
															method="post" modelAttribute="sanpham">

															<div class="col-xl-6 col-lg-6 col-md-12">

																<div class="form-group mb-3">
																	<label for="name">Mã sản phẩm </label>
																	<form:input path="maSP" class="form-control validate"
																		required="true" />
																</div>
																<div class="form-group mb-3">
																	<label for="name">Tên sản phẩm </label>
																	<form:input path="tenSP" class="form-control validate"
																		required="true" />
																</div>
																<form:input path="ngayThem" type="date"
																	style="display: none" />
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="expire_date">Giá </label>
																		<form:input path="gia" class="form-control validate"
																			data-large-mode="true" />
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Số lượng tồn </label>
																		<form:input path="slt" class="form-control validate"
																			required="true" />
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
																		<form:input path="dungTich"
																			class="form-control validate" required="true" />
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
																<div class="tm-product-img-dummy mx-auto rounded">
																	<i class="fas fa-cloud-upload-alt tm-upload-icon"
																		onclick="document.getElementById('fileInput').click();"></i>
																</div>
																<div class="custom-file mt-3 mb-3">
																	<form:input path="anh" type="file"
																		style="display: none;" />
																	<form:input path="anh" type="button"
																		class="btn btn-primary btn-block mx-auto btn-green shadow-none"
																		value="Sửa ảnh"
																		onclick="document.getElementById('fileInput').click();" />
																</div>
																<div class="row mt-4">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Ngày sản xuất </label>
																		<form:input path="ngaySX" type="date"
																			class="form-control validate" required="true" />
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Ngày hết hạn </label>
																		<form:input path="ngayHH" type="date"
																			class="form-control validate" required="true" />
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
								<div class="modal-header">
									<h4 class="modal-title" id="myCenterModalLabel">Thông tin</h4>
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
																	<div class="tm-product-img-dummy mx-auto rounded">
																		<i class="fas fa-cloud-upload-alt tm-upload-icon"
																			onclick="document.getElementById('fileInput').click();"></i>
																	</div>
																	<div class="custom-file mt-3 mb-3">
																		<input id="fileInput" type="file"
																			style="display: none;" />
																		<div
																			Style="padding: 4px 8px; background-color: #088178; text-align: center; color: #fff">
																			<h4 class="mt-2">SP001</h4>
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
																			<h6 class="text-muted f-w-400">${sanpham.gia}
																				VND</h6>
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
		
	</script>
</body>
</html>