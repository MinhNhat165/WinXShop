<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="./head.jsp"%>
<body>

	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<%@include file="./sidebar.jsp"%>
		<div class="page-wrapper pt-0">
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<h4
							class="page-title text-truncate text-dark font-weight-medium mb-1">Khách
							Hàng</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html"
										class="text-muted">Apps</a></li>
									<li class="breadcrumb-item text-muted active"
										aria-current="page">Ticket List</li>
								</ol>
							</nav>
						</div>
					</div>
					<!-- <div class="col-5 align-self-center">
                        <div class="customize-input float-right">
                            <select
                                class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
                                <option selected>Aug 19</option>
                                <option value="1">July 19</option>
                                <option value="2">Jun 19</option>
                            </select>
                        </div>
                    </div> -->
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
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
								<div class="table-responsive">
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
											<tr>
												<td>Tiger Nixon</td>
												<td>System Architect</td>
												<td>Edinburgh</td>
												<td>61</td>
												<td><button type="button" class="btn btn-status-locked">
														Khóa</button></td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#informodal"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#bs-example-modal-lg"></i></td>
											</tr>
											<tr>
												<td>Garrett Winters</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>63</td>
												<td><button type="button"
														class="btn btn-status-activate">Hoạt động</button></td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#informodal"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#bs-example-modal-lg"></i></td>
											</tr>
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
													data-toggle="modal" data-target="#informodal"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#bs-example-modal-lg"></i></td>
											</tr>


										</tbody>
										<tfoot>
											<tr>
												<th>Mã khách hàng</th>
												<th>Họ và tên</th>
												<th>Username</th>
												<th>SĐT</th>
												<th>Trạng thái</th>
												<th>Option</th>
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
			<!--  Modal content for the above example -->
			<div class="modal fade" id="informodal" tabindex="-1" role="dialog"
				aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myLargeModalLabel">Thông Tin</h4>
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
															<img
																src="https://img.icons8.com/bubbles/100/000000/user.png"
																class="img-radius" alt="User-Profile-Image">
														</div>
														<h6 class="f-w-600">uer001</h6>
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
																<h6 class="text-muted f-w-400">Nguyễn Thị Khánh Vi</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Địa chỉ</p>
																<h6 class="text-muted f-w-400">453 Lê Văn Việt,quận
																	9,TP.HCM</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Ngày sinh</p>
																<h6 class="text-muted f-w-400">29/04/2001</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Phái</p>
																<h6 class="text-muted f-w-400">Nữ</h6>
															</div>
														</div>

														<h6 class="m-b-20 p-b-5 b-b-default f-w-600 mt-3">Thông
															tin liên hệ</h6>
														<div class="row">

															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">Email</p>
																<h6 class="text-muted f-w-400">rntng@gmail.com</h6>
															</div>
															<div class="col-sm-6">
																<p class="m-b-10 f-w-600">SĐT</p>
																<h6 class="text-muted f-w-400">98979989898</h6>
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
			<div class="modal fade" id="bs-example-modal-lg" tabindex="-1"
				role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered v-modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Chỉnh sửa</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<div class="card">
								<div class="card-body">
									<div class="e-profile">
										<div class="row">
											<div class="col-12 col-sm-auto mb-3">
												<div class="mx-auto" style="width: 140px;">
													<div
														class="d-flex justify-content-center align-items-center rounded"
														style="height: 140px; background-color: rgb(233, 236, 239);">
														<span
															style="color: rgb(166, 168, 170); font: bold 8pt Arial;">140x140</span>
													</div>
												</div>
											</div>
											<div
												class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
												<div class="text-center text-sm-left mb-2 mb-sm-0">
													<h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">John Smith</h4>
													<p class="mb-0">@johnny.s</p>
													<div class="mt-2">
														<button class="btn shadow-none btn-green" type="button">
															<i class="fa fa-fw fa-camera"></i> <span
																style="color: #fff !important">Đổi ảnh </span>
														</button>
													</div>
												</div>

											</div>
										</div>

										<div class="tab-content pt-3">
											<div class="tab-pane active">
												<form class="form" novalidate="">
													<div class="row">
														<div class="col">
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>Họ và tên</label> <input class="form-control"
																			type="text" name="name" placeholder="John Smith"
																			value="John Smith">
																	</div>
																</div>
																<div class="col">
																	<div class="form-group">
																		<label>Username</label> <input class="form-control"
																			type="text" name="username" placeholder="johnny.s"
																			value="johnny.s">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>Email</label> <input class="form-control"
																			type="text" placeholder="user@example.com">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>Địa chỉ</label> <input class="form-control"
																			type="text" placeholder="user@example.com">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col">
																	<div class="form-group">
																		<label>Ngày sinh</label> <input class="form-control"
																			type="text" placeholder="user@example.com">
																	</div>
																</div>

																<div class="col">
																	<div class="form-group">
																		<label>Phái</label>
																		<div class="form-control">
																			<div
																				class="custom-control custom-radio custom-control-inline">
																				<input type="radio" id="customRadioInline1"
																					name="customRadioInline1"
																					class="custom-control-input"> <label
																					class="custom-control-label"
																					for="customRadioInline1">Nam</label>
																			</div>
																			<div
																				class="custom-control custom-radio custom-control-inline">
																				<input type="radio" id="customRadioInline2"
																					name="customRadioInline1"
																					class="custom-control-input"> <label
																					class="custom-control-label"
																					for="customRadioInline2">Nữ</label>
																			</div>
																		</div>

																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="row">
														<div class="col d-flex justify-content-end">
															<button class="btn btn-green" type="submit">Lưu</button>
														</div>
													</div>
												</form>

											</div>
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
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<%@include file="./script.jsp"%>
</body>
</html>