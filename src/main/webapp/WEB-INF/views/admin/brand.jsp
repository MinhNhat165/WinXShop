<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>
<body>

	<!-- flag -->
	<div class="modal-flag" idModal="${idModal}"></div>
	<div class="page-flag" data="brand"></div>
	<!-- End flag -->
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
								<div>
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
													<td class="text-center"><a
														href="admin/brand/update/${b.getMaNH() }.htm?linkEdit">
															<i class="fas fa-edit green-color"> </i>
													</a></td>

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

												<form:form action="admin/brand/add.htm"
													class="tm-edit-product-form" modelAttribute="nhanhang"
													method="POST">
													<div class="row col-12">
														<div class="col-xl-6 col-lg-6 col-md-12">
															<div class="form-group mb-3">
																<label for="name">Mã nhãn hàng </label>
																<form:input path="maNH" class="form-control validate"
																	required="true" />
																<span class="text-danger"><form:errors
																		path="maNH"></form:errors></span>
															</div>
															<div class="form-group mb-3">
																<label for="name">Tên nhãn hàng </label>
																<form:input path="tenNH" type="text"
																	class="form-control validate" required="true" />
																<span class="text-danger"><form:errors
																		path="tenNH"></form:errors></span>
															</div>
														</div>
														<div class="col-xl-6 col-lg-6 col-md-12">
																<div
																	class="tm-product-img-dummy mx-auto rounded profile-pic">

																	<i class="fas fa-cloud-upload-alt tm-upload-icon"
																		onclick="document.getElementById('fileInput').click();"></i>
																</div>
																<div class="custom-file mt-3 mb-3">
																	<form:input  name="anh" path="anh" type="file" class="file-upload"
																		style="display: none;" />
																	<button type="button"
																		class="btn btn-primary btn-block mx-auto btn-green shadow-none upload-button">Tải
																		ảnh lên</button>
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
																	required="true" readonly="true" />

															</div>
															<div class="form-group mb-3">
																<label for="name">Tên nhãn hàng </label>
																<form:input path="tenNH" class="form-control validate"
																	required="true" />
																<span class="text-danger"><form:errors
																		path="tenNH"></form:errors></span>
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
																<div
																	class="tm-product-img-dummy mx-auto rounded profile-pic">

																	<i class="fas fa-cloud-upload-alt tm-upload-icon"
																		onclick="document.getElementById('fileInput').click();"></i>
																</div>
																<div class="custom-file mt-3 mb-3">
																	<form:input path="anh" name="anh" type="file" class="file-upload2"
																		style="display: none;" />
																	<button type="button"
																		class="btn btn-primary btn-block mx-auto btn-green shadow-none upload-button2">Tải
																		ảnh lên</button>
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
		} else if ($(".modal-flag").attr("idModal") === "modalShow") {
			$("#addbrand").modal("show");
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
			
			$(".file-upload2").on("change", function() {
				readURL(this);
			});

			$(".upload-button2").on("click", function() {
				$(".file-upload2").click();
			});
	</script>
</body>
</html>
