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
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<h4
							class="page-title text-truncate text-dark font-weight-medium mb-1">Đơn
							Đặt</h4>
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

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
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
											<tr>
												<td>Tiger Nixon</td>
												<td>System Architect</td>
												<td>Edinburgh</td>
												<td>61</td>
												<td><button type="button" class="btn btn-status-locked">
														Khóa</button></td>
												<td class="text-center"><i
													class="fas fa-info-circle green-color" data-toggle="modal"
													data-target="#showorder"></i></td>
											</tr>
											<tr>
												<td>Garrett Winters</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>63</td>
												<td><button type="button" class="btn btn-status-locked">
														Khóa</button></td>
												<td class="text-center"><i
													class="fas fa-info-circle green-color" data-toggle="modal"
													data-target="#showorder"></i></td>
											</tr>
											<tr>
												<td>Ashton Cox</td>
												<td>Junior Technical Author</td>
												<td>San Francisco</td>
												<td>66</td>
												<td><button type="button" class="btn btn-status-locked">
														Khóa</button></td>
												<td class="text-center"><i
													class="fas fa-info-circle green-color" data-toggle="modal"
													data-target="#showorder"></i></td>
											</tr>
											<tr>
												<td>Cedric Kelly</td>
												<td>Senior Javascript Developer</td>
												<td>Edinburgh</td>
												<td>22</td>
												<td><button type="button"
														class="btn btn-status-activate">Hoạt động</button></td>
												<td class="text-center"><i
													class="fas fa-info-circle green-color" data-toggle="modal"
													data-target="#showorder"></i></td>
											</tr>
											<tr>
												<td>Airi Satou</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>33</td>
												<td><button type="button"
														class="btn btn-status-activate">Hoạt động</button></td>
												<td class="text-center"><i
													class="fas fa-info-circle green-color" data-toggle="modal"
													data-target="#showorder"></i></td>
											</tr>
											<tr>
												<td>Brielle Williamson</td>
												<td>Integration Specialist</td>
												<td>New York</td>
												<td>61</td>
												<td><button type="button"
														class="btn btn-status-activate">Hoạt động</button></td>
												<td class="text-center"><i
													class="fas fa-info-circle green-color" data-toggle="modal"
													data-target="#showorder"></i></td>
											</tr>
											<tr>
												<td>Herrod Chandler</td>
												<td>Sales Assistant</td>
												<td>San Francisco</td>
												<td>59</td>
												<td><button type="button"
														class="btn btn-status-activate">Hoạt động</button></td>
												<td class="text-center"><i
													class="fas fa-info-circle green-color" data-toggle="modal"
													data-target="#showorder"></i></td>
											</tr>

										</tbody>
										<tfoot>
											<tr>
												<th>Mã đơn đặt</th>
												<th>Khách đặt</th>
												<th>Ngày đặt</th>
												<th>Giá</th>
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
			<!-- footer -->
			<!-- ============================================================== -->

			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
			<!-- Center modal content -->
			<div class="modal fade" id="showorder" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content ">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Thông tin</h4>
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
											<li class="d-flex justify-content-between py-3 border-bottom">
												<strong class="text-muted">Mã đơn đặt </strong><strong>DH001</strong>
											</li>
											<li class="d-flex justify-content-between py-3 border-bottom">
												<strong class="text-muted">Khách hàng </strong><strong>Nguyễn
													Thị hihi</strong>
											</li>
											<li class="d-flex justify-content-between py-3 border-bottom">
												<strong class="text-muted">Ngày đặt </strong><strong>20/02/2022</strong>
											</li>
											<li class="d-flex justify-content-between py-3 border-bottom">
												<strong class="text-muted">Địa chỉ giao hàng</strong><strong>453
													lê văn việt q9</strong>
											</li>
											<li class="d-flex justify-content-between py-3 border-bottom">
												<strong class="text-muted">Tổng tiền</strong>
												<h5 class="font-weight-bold"
													style="font-weight: 800 !important;">$400.00</h5>
											</li>
										</ul>
										<a href="#" class="btn btn-dark rounded-pill py-2 btn-block">Procceed
											to checkout</a>
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
																			alt="" width="70" class="img-fluid rounded shadow-sm">
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
																			alt="" width="70" class="img-fluid rounded shadow-sm">
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
																			alt="" width="70" class="img-fluid rounded shadow-sm">
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
			<!-- /.modal -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<%@include file="./script.jsp"%>
</body>
</html>