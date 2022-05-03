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
							class="page-title text-truncate text-dark font-weight-medium mb-1">
							Nhãn hàng</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html"
										class="text-muted">Apps</a></li>
									<li class="breadcrumb-item text-muted active"
										aria-current="page">Nhãn hàng</li>
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
			<!-- addnew -->

			<!-- end addnew -->
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- basic table -->
				<button type="button"
					class="btn btn-secondary green-bg-color shadow-none"
					data-toggle="modal" data-target="#addbrand">
					<i class="fas fa-plus-circle"></i> Thêm
				</button>
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
											<tr>
												<td>Tiger Nixon</td>
												<td>System Architect</td>
												<td>
													<button type="button" class="btn btn-status-locked">
														Khóa</button>
												</td>
												<td class="text-center"><i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editbrand"></i>
												</td>
											</tr>
											<tr>
												<td>Garrett Winters</td>
												<td>Accountant</td>
												<td>
													<button type="button" class="btn btn-status-locked">
														Khóa</button>
												</td>
												<td class="text-center"><i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editbrand"></i>
												</td>
											</tr>
											<tr>
												<td>Ashton Cox</td>
												<td>Junior Technical Author</td>
												<td>
													<button type="button" class="btn btn-status-activate">
														Hoạt động</button>
												</td>
												<td class="text-center"><i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editbrand"></i>
												</td>
											</tr>
											<tr>
												<td>Cedric Kelly</td>
												<td>Senior Javascript Developer</td>
												<td>
													<button type="button" class="btn btn-status-activate">
														Hoạt động</button>
												</td>
												<td class="text-center"><i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editbrand"></i>
												</td>
											</tr>
											<tr>
												<td>Airi Satou</td>
												<td>Accountant</td>
												<td>
													<button type="button" class="btn btn-status-activate">
														Hoạt động</button>
												</td>
												<td class="text-center"><i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editbrand"></i>
												</td>
											</tr>
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
			<!-- Center modal content -->
			<div class="modal fade" id="centermodal" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Center modal
							</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<h5>Overflowing text to show scroll behavior</h5>
							<p>Cras mattis consectetur purus sit amet fermentum. Cras
								justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
								leo risus, porta ac consectetur ac, vestibulum at eros.</p>
							<p>Praesent commodo cursus magna, vel scelerisque nisl
								consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
								faucibus dolor auctor.</p>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
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
								class="container tm-mt-big tm-mb-big h-100 d-flex align-items-center justify-content-center">
								<div class="row">
									<div class="">
										<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
											<div class="row tm-edit-product-row">
												<form action="" class="tm-edit-product-form">
													<div class="col-12">
														<div class="form-group mb-3">
															<label for="name">Mã nhãn hàng </label> <input id="name"
																name="name" type="text" class="form-control validate"
																required />
														</div>
														<div class="form-group mb-3">
															<label for="name">Tên nhãn hàng </label> <input id="name"
																name="name" type="text" class="form-control validate"
																required />
														</div>

														<div class="form-group mb-3">
															<label for="category">Trạng thái</label> <select
																class="custom-select rounded tm-select-accounts"
																id="category">
																<option selected>Select category</option>
																<option value="1">New Arrival</option>
																<option value="2">Most Popular</option>
															</select>
														</div>
													</div>
													<div class="col-12">
														<button type="submit"
															class="btn btn-primary btn-block text-uppercase btn-green shadow-none">
															Thêm</button>
													</div>
												</form>
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
								class="container tm-mt-big tm-mb-big h-100 d-flex align-items-center justify-content-center">
								<div class="row">
									<div class="">
										<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
											<div class="row tm-edit-product-row">
												<form action="" class="tm-edit-product-form">
													<div class="col-12">
														<div class="form-group mb-3">
															<label for="name">Mã nhãn hàng </label> <input id="name"
																name="name" type="text" class="form-control validate"
																required />
														</div>
														<div class="form-group mb-3">
															<label for="name">Tên nhãn hàng </label> <input id="name"
																name="name" type="text" class="form-control validate"
																required />
														</div>

														<div class="form-group mb-3">
															<label for="category">Trạng thái</label> <select
																class="custom-select rounded tm-select-accounts"
																id="category">
																<option selected>Select category</option>
																<option value="1">New Arrival</option>
																<option value="2">Most Popular</option>
															</select>
														</div>
													</div>
													<div class="col-12">
														<button type="submit"
															class="btn btn-primary btn-block text-uppercase btn-green shadow-none">
															Lưu</button>
													</div>
												</form>
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
</body>
</html>