<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>
<body>
	<!-- flag -->
	<div class="page-flag" data="customer"></div>
	<div class="modal-flag" idModal="${idModal}"></div>
	<!-- End-flag -->
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
							class="page-title text-truncate text-dark font-weight-medium mb-1">Khách
							Hàng</h4>
					</div>

				</div>
			</div>

			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- basic table -->

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div>
									<table id="zero_config"
										class="table table-striped table-bordered no-wrap green-color">
										<thead>
											<tr>
												<th>Mã khách hàng${message }</th>
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
													<td><button type="button"
															class="btn btn-status-activate">${u.taiKhoan.trangThai }</button></td>
													<td>
													<a href="admin/customer/${u.maKH }.htm?linkShow">
													<i class="fas fa-info-circle green-color"
														></i> 
													</a>
													
														<a href="admin/change-status/${u.taiKhoan.email }.htm?linkEdit"><i
															class=" fas fa-edit green-color"
															></i></a>
													</td>

												</tr>
											</c:forEach>
											<tr>
												<td>Ashton Cox</td>
												<td>Junior Technical Author</td>
												<td>San Francisco</td>
												<td>66</td>
												<td><button type="button"
														class="btn btn-status-activate">Hoạt động</button></td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#informodal"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#bs-example-modal-lg"></i></td>
											</tr>
											<tr>
												<td>Cedric Kelly</td>
												<td>Senior Javascript Developer</td>
												<td>Edinburgh</td>
												<td>22</td>
												<td><button type="button" class="btn btn-status-locked">
														Khóa</button></td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#informodal"></i>
													<a><i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#bs-example-modal-lg"></i></a>
													
												</td>
											</tr>
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
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myLargeModalLabel">Thông Tin</h4>
								<button type="button" class="close v-close" data-dismiss="modal"
									aria-hidden="true">×</button>
							</div>

							<div class="modal-body">
								<div class="page-content page-container" id="page-content">
									<div
										class="row container d-flex justify-content-center p-0 m-0">
										<div class="col-md-12">
										
										
											<div class="card user-card-full">

												<div class="row m-l-0 m-r-0">

													<div class="col-sm-4 bg-c-lite-green user-profile div-img">
														<div class="card-block text-center text-white">
															<div class="m-b-25">
																<img
																	src=${user.anh }
																	class="img-radius" alt="User-Profile-Image">
																	
															</div>
															<h6 class="f-w-600">user001</h6>
															<p>NV001</p>
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
			<div class="modal fade" id="editStatus" tabindex="-1"
				role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered v-modal-dialog">
					<div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title">Modal title</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			      
			        <p>Muốn đổi trạng thái k ??</p>
			        
			      </div>
			      <form method="post" modelAttribute="taiKhoan">
			      <div class="modal-footer">
			      	
				      	<button type="button"  class="btn btn-danger" data-dismiss="modal">Close</button>
				        <button type="submit" name="${btnStatus}" class="btn btn-primary">Save changes</button>
			      	
			        
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
	
	<%@include file="./script.jsp"%>
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