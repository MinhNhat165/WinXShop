<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>
<body>
	<!-- flag -->
	<div class="page-flag" data="news"></div>
	<div class="modal-flag" idModal="${idModal}"></div>
	<div class="alert-flag" aType='${message.type}'
		aMessage="${message.message }"></div>
	<!-- End-flag -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<%@include file="./sidebar.jsp"%>
		<div class="page-wrapper pt-0">

			<!-- ============================================================== -->
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
								<h5 class="card-title fs-3">Danh sách tin mới</h5>
								<div>
									<table id="zero_config"
										class="table table-striped table-bordered no-wrap green-color">
										<thead>
											<tr>
												<th>Mã tin</th>
												<th>Tên tin</th>
												<th>Ngày tạo</th>
												<th>Thao tác</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="n" items="${newsList }">
												<tr>
													<td>${n.maTin }</td>
													<td>${n.tenTin }</td>
													<td>${n.ngayTao }</td>
													<td><a>
															<button class="btn btn-light btn-outline-info btn-sm">
																<i class="fas fa-info-circle" data-toggle="modal"
																	data-target=#${n.maTin}></i>
															</button>
													</a> <a href="admin/news/update/${n.maTin}.htm?linkEdit">
															<button class="btn btn-light btn-outline-warning btn-sm">
																<i class="fas fa-edit"></i>
															</button>

													</a> <a href="admin/news/delete/${n.maTin }.htm?linkDelete">
															<button class="btn btn-light btn-outline-danger btn-sm">
																<i class="fa-solid fa-trash"></i>
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
			<div class="modal fade" id="addproduct" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header green-bg-color">
							<h4 class="modal-title text-white" id="myCenterModalLabel">Thêm
								Tin</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<div
								class="container tm-mt-big tm-mb-big h-100 align-items-center justify-content-center">
								<div class="row">
									<div class="col-12">
										<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
											<div class="row tm-edit-product-row">
												<div class="col-12">

													<form:form action="admin/news/add-news.htm" modelAttribute="news"
														method="post" enctype="multipart/form-data"
														class="tm-edit-product-form">
														<div class="row mb-4">

															<div class="col-xl-6 col-lg-6 col-md-12">
																<div class="form-group mb-3">
																	<label>Mã tin </label>
																	<form:input path="maTin" id="maTin" type="text"
																		class="form-control validate" required="true" />
																</div>
																<div class="form-group mb-3">
																	<label for="name">Tên tin </label>
																	<form:input path="tenTin" id="tenTin" name="tenTin"
																		type="text" class="form-control validate"
																		required="true" />
																</div>
																<div class="form-group mb-3">
																	<label for="description">Mô tả</label>
																	<form:textarea id="noiDung" path="noiDung"
																		name="noiDung" class="form-control validate" rows="3"
																		required="true"></form:textarea>
																</div>
															</div>
															<div class="col-xl-6 col-lg-6 col-md-12">
																<div
																	class="tm-product-img-dummy mx-auto rounded profile-pic">
																	<i
																		class="fas fa-cloud-upload-alt upload-button tm-upload-icon"></i>
																</div>
																<div class="custom-file mt-3 mb-3">
																	<label style="position: absolute;background-color: #088178;color: #fff;cursor: pointer;padding: 10px 141px;">Thêm ảnh</label>
																	<input
																		style="opacity: 0;position: absolute;cursor: pointer;"
																		type="file"
																		name="anh"
																		id="anh"
																		class="file-upload"
																		value="Thêm ảnh" />
																</div>
																</div>
															</div>
														</div>
														<div class="col-12">
															<button type="submit"
																class="btn btn-primary btn-block text-uppercase btn-green shadow-none">
																Thêm</button>
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
			</div>
			<!-- /.modal -->
			<!-- Center modal content -->

				<div class="modal fade" id="show-news" tabindex="-1" role="dialog"
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
												<div class="row tm-edit-product-row">
													<div class="col-12">
														<form:form action="admin/news/update/${news.maTin }.htm" modelAttribute="news"
														method="post" enctype="multipart/form-data"
														class="tm-edit-product-form">
														<div class="row mb-4">

															<div class="col-xl-6 col-lg-6 col-md-12">
																<div class="form-group mb-3">
																	<label for="name">Mã tin </label>
																	<form:input path="maTin" id="maTin" type="text"
																		class="form-control validate" required="true" />
																</div>
																<div class="form-group mb-3">
																	<label for="name">Tên tin </label>
																	<form:input path="tenTin" id="tenTin" name="tenTin"
																		type="text" class="form-control validate"
																		required="true" />
																</div>
																<div class="form-group mb-3">
																	<label for="description">Mô tả</label>
																	<form:textarea id="noiDung" path="noiDung"
																		name="noiDung" class="form-control validate" rows="3"
																		required="true"></form:textarea>
																</div>
															</div>
															<div class="col-xl-6 col-lg-6 col-md-12">
																<div
																	class="tm-product-img-dummy mx-auto rounded profile-pic" style="background-image: url('.//resources//imgs//${news.anh}');background-size: cover">
																	
																</div>
																<div class="custom-file mt-3 mb-3">
																	<label style="position: absolute;background-color: #088178;color: #fff;cursor: pointer;padding: 10px 141px;">Thêm ảnh</label>
																	<input
																		style="opacity: 0;position: absolute;cursor: pointer;"
																		type="file"
																		name="anh1"
																		id="anh1"
																		class="file-upload"
																		value="Thêm ảnh" />
																</div>
															</div>
														</div>
														<div class="col-12">
																<button type="submit" name="${btnStatus}"
																	class="btn btn-primary btn-block text-uppercase btn-green shadow-none">
																	Cập nhật</button>
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
				</div>
				<!-- /.modal-dialog -->
			</div>

			<!-- /.modal -->
			<!-- Center modal content -->
			<c:forEach var="n" items="${newsList }">
				<div class="modal fade" id=${n.maTin } tabindex="-1" role="dialog"
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
								<div
									class="">
									<div class="row">
										<div class="">
											<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
												<div class="row tm-edit-product-row">

													<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
														<div class="tm-product-img-dummy mx-auto rounded"
															style="background-image: url('.//resources//imgs//${n.anh}');background-size: cover">

														</div>
														<div class="custom-file mt-3 mb-3">
															<input id="fileInput" type="file" style="display: none;" />
															<div
																Style="padding: 4px 8px; background-color: #088178; text-align: center; color: #fff">
																<h4 class="mt-2">${n.maTin}</h4>
															</div>

														</div>

													</div>

													<div class="col-xl-6 col-lg-6 col-md-12">
														<div class="row mt-4">

															<div class="form-group mb-3 col-xs-12 col-sm-6">
																<p class="m-b-10 f-w-600">Ngày tạo</p>
																<h6 class="text-muted f-w-400">${n.ngayTao }</h6>
															</div>
														</div>
														<div class="form-group mb-3">
															<p class="m-b-10 f-w-600">Tên tin</p>
															<h6 class="text-muted f-w-400">${n.tenTin}</h6>
														</div>

														<div class="form-group mb-3">
															<p class="m-b-10 f-w-600">Nội dung</p>
															<h6 class="text-muted f-w-400">${n.noiDung }</h6>
														</div>

														<div class="row">
															<div class="form-group mb-3 col-xs-12 col-sm-6">
																<p class="m-b-10 f-w-600">Trạng thái</p>
																<h6 class="text-muted f-w-400">unisex</h6>
															</div>

														</div>


													</div>

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
			</c:forEach>
			<!-- /.modal -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	
	<%@include file="./common/script.jsp"%>
	<script type="text/javascript">
	if ($(".modal-flag").attr("idModal") === "modalShow") {
		$("#show-news").modal("show");
	} else if ($(".modal-flag").attr("idModal") === "modalCreate") {
		$("#addproduct").modal("show");
	}

	$(".btn-create").remove();
	searchBar.append(`<a href="/Winx/admin/news/add-news.htm"><button type="button"
			class="btn btn-secondary mb-0 green-bg-color shadow-none">
			<i class="fas fa-plus-circle"></i> Thêm
		</button></a>`);
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
	</script>
</body>
</html>