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
				<button type="button"
					class="btn btn-secondary green-bg-color shadow-none"
					data-toggle="modal" data-target="#addproduct">
					<i class=" fas fa-plus-circle"></i> Thêm
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
												<th>Name</th>
												<th>Position</th>
												<th>Office</th>
												<th>Age</th>
												<th>Status</th>
												<th>Option</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Tiger Nixon</td>
												<td>System Architect</td>
												<td>Edinburgh</td>
												<td>61</td>
												<td>2011/04/25</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Garrett Winters</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>63</td>
												<td>2011/07/25</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Ashton Cox</td>
												<td>Junior Technical Author</td>
												<td>San Francisco</td>
												<td>66</td>
												<td>2009/01/12</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Cedric Kelly</td>
												<td>Senior Javascript Developer</td>
												<td>Edinburgh</td>
												<td>22</td>
												<td>2012/03/29</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Airi Satou</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>33</td>
												<td>2008/11/28</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Brielle Williamson</td>
												<td>Integration Specialist</td>
												<td>New York</td>
												<td>61</td>
												<td>2012/12/02</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Herrod Chandler</td>
												<td>Sales Assistant</td>
												<td>San Francisco</td>
												<td>59</td>
												<td>2012/08/06</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Rhona Davidson</td>
												<td>Integration Specialist</td>
												<td>Tokyo</td>
												<td>55</td>
												<td>2010/10/14</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Cara Stevens</td>
												<td>Sales Assistant</td>
												<td>New York</td>
												<td>46</td>
												<td>2011/12/06</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Hermione Butler</td>
												<td>Regional Director</td>
												<td>London</td>
												<td>47</td>
												<td>2011/03/21</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
											<tr>
												<td>Lael Greer</td>
												<td>Systems Administrator</td>
												<td>London</td>
												<td>21</td>
												<td>2009/02/27</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showproduct"></i> <i
													class=" fas fa-edit green-color" data-toggle="modal"
													data-target="#editproduct"></i></td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<th>Name</th>
												<th>Position</th>
												<th>Office</th>
												<th>Age</th>
												<th>Start date</th>
												<th>Salary</th>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade" id="addproduct" tabindex="-1" role="dialog"
						aria-hidden="true">
						<div class="modal-dialog modal-lg modal-dialog-centered">
							<div class="modal-content ">
								<div class="modal-header">
									<h4 class="modal-title" id="myCenterModalLabel">Thêm Sản
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
														<div class="col-xl-6 col-lg-6 col-md-12">
															<form action="" class="tm-edit-product-form">
																<div class="form-group mb-3">
																	<label for="name">Mã sản phẩm </label> <input id="name"
																		name="name" type="text" class="form-control validate"
																		required />
																</div>
																<div class="form-group mb-3">
																	<label for="name">Tên sản phẩm </label> <input
																		id="name" name="name" type="text"
																		class="form-control validate" required />
																</div>
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="expire_date">Giá </label> <input
																			id="expire_date" name="expire_date" type="text"
																			class="form-control validate" data-large-mode="true" />
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Số lượng </label> <input id="stock"
																			name="stock" type="text"
																			class="form-control validate" required />
																	</div>
																</div>
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="category">Loại</label> <select
																			class="custom-select rounded tm-select-accounts"
																			id="category">
																			<option selected>Select category</option>
																			<option value="1">New Arrival</option>
																			<option value="2">Most Popular</option>
																			<option value="3">Trending</option>
																		</select>
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Dung tích </label> <input
																			id="stock" name="stock" type="text"
																			class="form-control validate" required />
																	</div>
																</div>

																<div class="form-group mb-3">
																	<label for="category">Nhãn hàng</label> <select
																		class='fstdropdown-select' id="fst">
																		<option value="">Select option</option>
																		<option value="1">1 First 2</option>
																		<option value="2">Second</option>
																		<option value="3">Third</option>
																	</select>
																</div>
																<div class="form-group mb-3">
																	<label for="description">Mô tả</label>
																	<textarea class="form-control validate" rows="3"
																		required></textarea>
																</div>

																
														</div>
														<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
															<div class="tm-product-img-dummy mx-auto rounded">
																<i class="fas fa-cloud-upload-alt tm-upload-icon"
																	onclick="document.getElementById('fileInput').click();"></i>
															</div>
															<div class="custom-file mt-3 mb-3">
																<input id="fileInput" type="file" style="display: none;" />
																<input type="button"
																	class="btn btn-primary btn-block mx-auto btn-green shadow-none"
																	value="Thêm ảnh"
																	onclick="document.getElementById('fileInput').click();" />
															</div>
															<div class="row mt-4">
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<label for="stock">Ngày sản xuất </label> <input
																		id="stock" name="stock" type="date"
																		class="form-control validate" required />
																</div>
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<label for="stock">Ngày hết hạn </label> <input
																		id="stock" name="stock" type="date"
																		class="form-control validate" required />
																</div>
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<label for="stock">Ngày thêm </label> <input id="stock"
																		name="stock" type="date" class="form-control validate"
																		required />
																</div>
															</div>
														</div>
														<div class="col-12">
															<button type="submit"
																class="btn btn-primary btn-block text-uppercase btn-green shadow-none">Thêm
															</button>
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
					<!-- /.modal -->
					<!-- Center modal content -->
					<div class="modal fade" id="editproduct" tabindex="-1"
						role="dialog" aria-hidden="true">
						<div class="modal-dialog modal-lg modal-dialog-centered">
							<div class="modal-content ">
								<div class="modal-header">
									<h4 class="modal-title" id="myCenterModalLabel">Chỉnh Sửa</h4>
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
														<div class="col-xl-6 col-lg-6 col-md-12">
															<form action="" class="tm-edit-product-form">
																<div class="form-group mb-3">
																	<label for="name">Mã sản phẩm </label> <input id="name"
																		name="name" type="text" class="form-control validate"
																		required />
																</div>
																<div class="form-group mb-3">
																	<label for="name">Tên sản phẩm </label> <input
																		id="name" name="name" type="text"
																		class="form-control validate" required />
																</div>
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="expire_date">Giá </label> <input
																			id="expire_date" name="expire_date" type="text"
																			class="form-control validate" data-large-mode="true" />
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Số lượng tồn </label> <input
																			id="stock" name="stock" type="text"
																			class="form-control validate" required />
																	</div>
																</div>
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="category">Loại</label> <select
																			class="custom-select rounded tm-select-accounts"
																			id="category">
																			<option selected>Select category</option>
																			<option value="1">New Arrival</option>
																			<option value="2">Most Popular</option>
																			<option value="3">Trending</option>
																		</select>
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<label for="stock">Dung tích </label> <input
																			id="stock" name="stock" type="text"
																			class="form-control validate" required />
																	</div>
																</div>

																<div class="form-group mb-3">
																	<label for="category">Nhãn hàng</label> <select
																		class='fstdropdown-select' id="first">
																		<option value="">Select option</option>
																		<option value="1">1 First 2</option>
																		<option value="2">Second</option>
																		<option value="3">Third</option>
																	</select>

																</div>
																<div class="form-group mb-3">
																	<label for="description">Mô tả</label>
																	<textarea class="form-control validate" rows="3"
																		required></textarea>
																</div>

																
														</div>
														<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
															<div class="tm-product-img-dummy mx-auto rounded">
																<i class="fas fa-cloud-upload-alt tm-upload-icon"
																	onclick="document.getElementById('fileInput').click();"></i>
															</div>
															<div class="custom-file mt-3 mb-3">
																<input id="fileInput" type="file" style="display: none;" />
																<input type="button"
																	class="btn btn-primary btn-block mx-auto btn-green shadow-none"
																	value="Sửa ảnh"
																	onclick="document.getElementById('fileInput').click();" />
															</div>
															<div class="row mt-4">
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<label for="stock">Ngày sản xuất </label> <input
																		id="stock" name="stock" type="date"
																		class="form-control validate" required />
																</div>
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<label for="stock">Ngày hết hạn </label> <input
																		id="stock" name="stock" type="date"
																		class="form-control validate" required />
																</div>
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<label for="stock">Ngày thêm </label> <input id="stock"
																		name="stock" type="date" class="form-control validate"
																		required />
																</div>
															</div>
														</div>
														<div class="col-12">
															<button type="submit"
																class="btn btn-primary btn-block text-uppercase btn-green shadow-none">Lưu
															</button>
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
											<div class="">
												<div class="tm-bg-primary-dark tm-block tm-block-h-auto">

													<div class="row tm-edit-product-row">
														<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
															<div class="tm-product-img-dummy mx-auto rounded">
																<i class="fas fa-cloud-upload-alt tm-upload-icon"
																	onclick="document.getElementById('fileInput').click();"></i>
															</div>
															<div class="custom-file mt-3 mb-3">
																<input id="fileInput" type="file" style="display: none;" />
																<div
																	Style="padding: 4px 8px; background-color: #088178; text-align: center; color: #fff">
																	<h4 class="mt-2">SP001</h4>
																</div>

															</div>
															<div class="row mt-4">
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<p class="m-b-10 f-w-600">Ngày sản xuất</p>
																	<h6 class="text-muted f-w-400">23/2/3</h6>
																</div>
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<p class="m-b-10 f-w-600">Ngày hết hạn</p>
																	<h6 class="text-muted f-w-400">23/2/3</h6>
																</div>
																<div class="form-group mb-3 col-xs-12 col-sm-6">
																	<p class="m-b-10 f-w-600">Ngày thêm</p>
																	<h6 class="text-muted f-w-400">23/2/3</h6>
																</div>
															</div>
														</div>

														<div class="col-xl-6 col-lg-6 col-md-12">
															<form action="" class="tm-edit-product-form">
																<div class="form-group mb-3">
																	<p class="m-b-10 f-w-600">Mã sản phẩm</p>
																	<h6 class="text-muted f-w-400">SP001</h6>
																</div>
																<div class="form-group mb-3">
																	<p class="m-b-10 f-w-600">Tên sản phẩm</p>
																	<h6 class="text-muted f-w-400">Nước hoa</h6>
																</div>
																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<p class="m-b-10 f-w-600">Giá</p>
																		<h6 class="text-muted f-w-400">1.230.000 VND</h6>
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<p class="m-b-10 f-w-600">Số lượng</p>
																		<h6 class="text-muted f-w-400">23</h6>
																	</div>
																</div>
																<div class="form-group mb-3">
																	<p class="m-b-10 f-w-600">Mô tả</p>
																	<h6 class="text-muted f-w-400">
																		ihihsihisahfichihcfisdh</h6>
																</div>

																<div class="row">
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<p class="m-b-10 f-w-600">Loại</p>
																		<h6 class="text-muted f-w-400">unisex</h6>
																	</div>
																	<div class="form-group mb-3 col-xs-12 col-sm-6">
																		<p class="m-b-10 f-w-600">Dung tích</p>
																		<h6 class="text-muted f-w-400">320ml</h6>
																	</div>
																</div>

																<div class="form-group mb-3">
																	<p class="m-b-10 f-w-600">Nhãn hàng</p>
																	<h6 class="text-muted f-w-400">Dior</h6>
																</div>
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
</body>
</html>