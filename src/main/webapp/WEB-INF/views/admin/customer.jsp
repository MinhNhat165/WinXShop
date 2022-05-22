<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./common/head.jsp"%>
</head>
<body>
	<!-- flag -->
	<div class="page-flag" data="customer"></div>
	<div class="modal-flag" idModal="${idModal}"></div>
	<div class="alert-flag" aType='${message.type}'
		aMessage="${message.message }"></div>
	<!-- End-flag -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<!-- sidebar  -->
		<%@include file="./common/sidebar.jsp"%>
		<!-- End sidebar  -->
		<div class="page-wrapper pt-0">


			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- basic table -->

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title fs-3">Danh sách khách hàng</h5>
								<div>
									<table id="zero_config"
										class="table table-striped table-bordered no-wrap green-color">
										<thead>
											<tr>
												<th>Mã khách hàng</th>
												<th>Họ và tên</th>
												<th>Username</th>
												<th>SĐT</th>
												<th>Trạng thái</th>
												<th>Option</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="u" items="${users }">
												<tr>
													<td>${u.maKH }</td>
													<td>${u.hoTen }</td>
													<td>${u.taiKhoan.email }</td>
													<td>${u.sdt }</td>

													<td><span
														class="badge rounded-pill ${u.taiKhoan.trangThai?'bg-primary': 'bg-secondary text-white'} "
														style="color: white !important">${u.taiKhoan.trangThai?'Còn hiệu lực': 'Hết hiệu lực' }</span></td>
													<td><a href="admin/customer/${u.maKH }.htm?linkShow">
															<button class="btn btn-light btn-outline-info btn-sm">
																<i class="fas fa-info-circle"></i>
															</button>
													</a> <a
														href="admin/change-status/${u.taiKhoan.email }.htm?linkEdit"><button
																class="btn btn-light btn-outline-warning btn-sm">
																<i class="fas fa-edit"></i>
															</button></a></td>

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
			<!--  Modal content for the above example -->
			<div class="modal fade" id="show-info" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content ">
						<div class="modal-header green-bg-color">
							<h4 class="modal-title text-white" id="myLargeModalLabel">Thông
								Tin</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>

						<div class="modal-body">
							<div class="page-content page-container" id="page-content">
								<div class="row container d-flex justify-content-center p-0 m-0">
									<div class="col-md-12">


										<div class="card user-card-full">

											<div class="row m-l-0 m-r-0">

												<div class="col-sm-4 bg-c-lite-green user-profile div-img">
													<div class="card-block text-center text-white">
														<div class="m-b-25">
															<img src=${user.anh } class="img-radius"
																alt="User-Profile-Image" style="width: 200px;">

														</div>
														<h6 class="f-w-600">user001</h6>
														<p>${user.maKH }</p>
														<i
															class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
													</div>
												</div>
												<div class="col-sm-8">
													<div class="card-block">
														<h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Thông
															tin cơ bản</h6>
														<div class="row">
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Họ và tên</p>
																<h6 class="text-muted f-w-400">${user.hoTen }</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Địa chỉ</p>
																<h6 class="text-muted f-w-400">${user.diaChi }</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Ngày sinh</p>
																<h6 class="text-muted f-w-400">${user.ngaySinh }</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Phái</p>
																<h6 class="text-muted f-w-400">${user.phai }</h6>
															</div>
														</div>

														<h6 class="m-b-20 p-b-5 b-b-default f-w-600 mt-3">Thông
															tin liên hệ</h6>
														<div class="row">

															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Email</p>
																<h6 class="text-muted f-w-400">${user.taiKhoan.email }</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">SĐT</p>
																<h6 class="text-muted f-w-400">${user.sdt }</h6>
															</div>
														</div>

														<ul class="social-link list-unstyled m-t-40 m-b-10">
															<li><a href="#!" data-toggle="tooltip"
																data-placement="bottom" title=""
																data-original-title="facebook" data-abc="true"><i
																	class="mdi mdi-facebook feather icon-facebook facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#!" data-toggle="tooltip"
																data-placement="bottom" title=""
																data-original-title="twitter" data-abc="true"><i
																	class="mdi mdi-twitter feather icon-twitter twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#!" data-toggle="tooltip"
																data-placement="bottom" title=""
																data-original-title="instagram" data-abc="true"><i
																	class="mdi mdi-instagram feather icon-instagram instagram"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>


											</div>


										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- footer -->
			<!-- ============================================================== -->

			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
			<!-- Center modal content -->
			<!--<c:forEach var="u" items="${users }">-->
			<div class="modal fade" id="editStatus" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered v-modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Modal title</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">

							<p>Thay đổi trạng thái</p>

						</div>
						<form method="post" modelAttribute="taiKhoan">
							<div class="modal-footer">

								<button type="submit" name="${btnStatus}"
									class="btn-green btn-primary">Lưu</button>


							</div>
						</form>
					</div>
				</div>
			</div>
			<!--</c:forEach>-->
			<!-- /.modal -->
			<!-- footer -->
			<!-- ============================================================== -->

			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
			<!-- Center modal content -->
			<!-- Chi Tiet Khach Hang -->

			<!-- /.modal -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>

	<!-- ============================================================== -->
	<!-- End Page wrapper  -->
	<!-- ============================================================== -->

	<%@include file="./common/script.jsp"%>
	<script type="text/javascript">
		if ($(".modal-flag").attr("idModal") === "modalCreate") {
			$("#editStatus").modal("show");
		} else if ($(".modal-flag").attr("idModal") === "modalShow") {
			$("#show-info").modal("show");
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