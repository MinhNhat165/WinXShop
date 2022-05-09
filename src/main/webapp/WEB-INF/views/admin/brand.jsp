<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>
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
							class="page-title text-truncate text-dark font-weight-medium mb-1">
							Nhãn hàng</h4>
					</div>
				</div>
			</div>

			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- basic table -->
				<a href="admin/brand/add.htm">
				<button type="button"
					class="btn btn-secondary green-bg-color shadow-none"
					data-toggle="modal" data-target="#addbrand">
					<i class="fas fa-plus-circle"></i> Thêm
				</button>
				</a>
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table id="zero_config"
										class="table table-striped table-bordered no-wrap green-color">
										<thead>
											<tr>
												<th>Mã nhãn hàng</th>
												<th>Tên nhãn hàng</th>
												<th>Trạng thái</th>
												<th class="text-center">Option</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="b" items="${dsnhanhang}">
												<tr>
													<td>${b.getMaNH()}</td>
													<td>${b.getTenNH()}</td>
													<td><c:choose>
															<c:when test="${ b.getTrangThai()==true}">
																<button type="button" class="btn btn-status-activate">Hợp
																	tác</button>
															</c:when>
															<c:otherwise>
																<button type="button" class="btn btn-status-locked">
																	Ngừng hợp tác</button>
															</c:otherwise>
														</c:choose></td>
													<td class="text-center">
													<a href="admin/brand/update/${b.getMaNH() }.htm?linkEdit">
															<i class="fas fa-edit green-color"> </i>
													</a></td>


													<button></button>
												</tr>
											</c:forEach>

										</tbody>
										<tfoot>
											<tr>
												<th>Mã nhãn hàng</th>
												<th>Tên nhãn hàng</th>
												<th>Trạng thái</th>
												<th class="text-center">Option</th>
											</tr>
										</tfoot>
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

			<!-- ============================================================== -->
			<!-- /.modal -->
			<div class="modal fade" id="addbrand" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Thêm Nhãn
								Hàng</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<div
								class="container tm-mt-big tm-mb-big h-100 align-items-center justify-content-center">
								<div class="row">
									<div class="col-12">
										<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
											<div class=" tm-edit-product-row">

												<form:form class="tm-edit-product-form"
													modelAttribute="nhanhang" method="post">
													<div class="row col-12">
														<div class="col-xl-6 col-lg-6 col-md-12">
															<div class="form-group mb-3">
																<label for="name">Mã nhãn hàng </label>
																<form:input path="maNH" class="form-control validate" />
															</div>
															<div class="form-group mb-3">
																<label for="name">Tên nhãn hàng </label>
																<form:input path="tenNH" type="text"
																	class="form-control validate" />
															</div>
														</div>
														<div class="col-xl-6 col-lg-6 col-md-12">
															<div class="tm-product-img-dummy mx-auto rounded">
																<i class="fas fa-cloud-upload-alt tm-upload-icon"
																	onclick="document.getElementById('fileInput').click();"></i>
															</div>
															<div class="custom-file mt-3 mb-3">
																<form:input path="anh" type="file"
																	style="display: none;" />
																<form:input path="anh" type="button"
																	class="btn btn-primary btn-block mx-auto btn-green shadow-none"
																	value="Thêm ảnh"
																	onclick="document.getElementById('fileInput').click();" />
															</div>

														</div>
														<div class="col-12 mt-4">
															<button type="submit"
																class="btn btn-primary btn-block text-uppercase btn-green shadow-none"
																name="btnAdd">Thêm</button>
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

			<div class="modal fade" id="editbrand" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Chỉnh Sửa</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<div
								class="container tm-mt-big tm-mb-big h-100 align-items-center justify-content-center">
								<div class="row">
									<div class="col-12">
										<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
											<div class=" tm-edit-product-row">

												<form:form class="tm-edit-product-form"
													modelAttribute="nhanhang" method="post">
													<div class="row col-12">
														<div class="col-xl-6 col-lg-6 col-md-12">
															<div class="form-group mb-3">
																<label for="name">Mã nhãn hàng </label>
																<form:input path="maNH" class="form-control validate"
																	required="true" />
															</div>
															<div class="form-group mb-3">
																<label for="name">Tên nhãn hàng </label>
																<form:input path="tenNH" class="form-control validate"
																	required="true" />

															</div>
														
															<div class="form-group mb-3">
																<label for="category">Trạng thái</label>
																<div class="row">
																	<div
																		class="form-check col-5 custom-control custom-radio custom-control-inline">
																		<form:radiobutton value="1" path="trangThai"
																			class="form-check-input validate custom-control-input"
																			required="true" id="1" />
																		<label class="form-check-label  custom-control-label"
																			for="1"> Hợp tác </label>
																	</div>
																	<div
																		class="form-check col-5 custom-control custom-radio custom-control-inline">
																		<form:radiobutton value="0" id="0" path="trangThai"
																			class="form-check-input validate custom-control-input"
																			required="true" />
																		<label class="form-check-label custom-control-label"
																			for="0"> Ngừng hợp tác</label>
																	</div>

																</div>

															</div>
														</div>
														<div class="col-xl-6 col-lg-6 col-md-12">
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

														</div>

														<div class="col-12 mt-4">
															<button type="submit" name="btnEdit"
																class="btn btn-primary btn-block text-uppercase btn-green shadow-none">Lưu</button>
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
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<%@include file="./script.jsp"%>
	<script>
		if ($(".modal-flag").attr("idModal") === "modalCreate") {
			$("#editbrand").modal("show");
		}
		else if($(".modal-flag").attr("idModal") === "modalShow") {
			$("#addbrand").modal("show");
		}
	</script>
</body>
</html>
