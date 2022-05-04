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
							class="page-title text-truncate text-dark font-weight-medium mb-1">
							Khuyến Mãi</h4>
					</div>
					
				</div>
			</div>

			
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->

				<!-- basic table -->
				<button type="button"
					class="btn btn-secondary green-bg-color shadow-none"
					data-toggle="modal" data-target="#addsale">
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
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Garrett Winters</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>63</td>
												<td>2011/07/25</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Ashton Cox</td>
												<td>Junior Technical Author</td>
												<td>San Francisco</td>
												<td>66</td>
												<td>2009/01/12</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Cedric Kelly</td>
												<td>Senior Javascript Developer</td>
												<td>Edinburgh</td>
												<td>22</td>
												<td>2012/03/29</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Airi Satou</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>33</td>
												<td>2008/11/28</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Brielle Williamson</td>
												<td>Integration Specialist</td>
												<td>New York</td>
												<td>61</td>
												<td>2012/12/02</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Herrod Chandler</td>
												<td>Sales Assistant</td>
												<td>San Francisco</td>
												<td>59</td>
												<td>2012/08/06</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Rhona Davidson</td>
												<td>Integration Specialist</td>
												<td>Tokyo</td>
												<td>55</td>
												<td>2010/10/14</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Cara Stevens</td>
												<td>Sales Assistant</td>
												<td>New York</td>
												<td>46</td>
												<td>2011/12/06</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Hermione Butler</td>
												<td>Regional Director</td>
												<td>London</td>
												<td>47</td>
												<td>2011/03/21</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
											</tr>
											<tr>
												<td>Lael Greer</td>
												<td>Systems Administrator</td>
												<td>London</td>
												<td>21</td>
												<td>2009/02/27</td>
												<td><i class="fas fa-info-circle green-color"
													data-toggle="modal" data-target="#showsale"></i> <i
													class="fas fa-edit green-color" data-toggle="modal"
													data-target="#editsale"></i></td>
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
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
		
			<!-- Center modal content -->
			<div class="modal fade" id="addsale" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Thêm</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						 <div class="modal-body">
                            <div class="container tm-mt-big tm-mb-big h-100 align-items-center justify-content-center">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                                            <div class="row tm-edit-product-row">
                                                <div class="col-12">

                                                    <form action="" class="tm-edit-product-form">

                                                        <div class="row">

                                                            <div class="col-xl-6 col-lg-6 col-md-12">
                                                                <div class="form-group mb-3">
                                                                    <label for="name">Mã khuyễn mãi </label> <input
                                                                        id="name" name="name" type="text"
                                                                        class="form-control validate" required />
                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="name">Tên khuyến mãi </label> <input
                                                                        id="name" name="name" type="text"
                                                                        class="form-control validate" required />
                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="name">Giá trị khuyến mãi </label> <input
                                                                        id="name" name="name" type="text"
                                                                        class="form-control validate" required />
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                                                <div class="row">
                                                                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                                        <label for="stock">Ngày bắt đầu </label> <input
                                                                            id="stock" name="stock" type="date"
                                                                            class="form-control validate" required />
                                                                    </div>
                                                                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                                        <label for="stock">Ngày kết thúc </label> <input
                                                                            id="stock" name="stock" type="date"
                                                                            class="form-control validate" required />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="description">Mô tả</label>
                                                                    <textarea class="form-control validate" rows="3"
                                                                        required></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 mb-3">
                                                            <button class="btn btn-success shadow-none"
                                                                data-toggle="collapse" href="#filterproduct"
                                                                role="button" aria-expanded="false"
                                                                aria-controls="collapseExample">Chọn
                                                                sản phẩm</button>
                                                            <div class="collapse mt-3" id="filterproduct">
                                                                <div class="card card-body">
                                                                    <div
                                                                        class="container tm-mt-big tm-mb-big h-100 d-flex align-items-center justify-content-center">
                                                                        <div class="row">
                                                                            <div class="">
                                                                                <div
                                                                                    class="tm-bg-primary-dark tm-block tm-block-h-auto">
                                                                                    <div
                                                                                        class="row tm-edit-product-row">
                                                                                        <form action=""
                                                                                            class="tm-edit-product-form">
                                                                                            <div
                                                                                                class="col-xl-6 col-lg-6 col-md-12">
                                                                                                <div
                                                                                                    class="form-group mb-3">
                                                                                                    <label
                                                                                                        for="name">Nhãn
                                                                                                        hàng </label>
                                                                                                    <select
                                                                                                        class="form-select"
                                                                                                        multiple="multiple"
                                                                                                        id="languages-disabled-id"></select>
                                                                                                </div>
                                                                                                <div
                                                                                                    class="form-group mb-3">
                                                                                                    <label
                                                                                                        for="name">Loại
                                                                                                    </label> <select
                                                                                                        class="custom-select rounded tm-select-accounts"
                                                                                                        id="category">
                                                                                                        <option
                                                                                                            selected>
                                                                                                            Select
                                                                                                            category
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="1">
                                                                                                            New Arrival
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="2">
                                                                                                            Most Popular
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="3">
                                                                                                            Trending
                                                                                                        </option>
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div
                                                                                                class="col-lg-6 col-xs-12">
                                                                                                <label for="stock2">Giá
                                                                                                </label>
                                                                                                <div
                                                                                                    class="col-12 mx-auto mb-4">
                                                                                                    <div class="row">
                                                                                                        <div
                                                                                                            class="form-group mb-3 col-xs-12 col-sm-6">
                                                                                                            <div
                                                                                                                class="input-group mb-2">
                                                                                                                <div
                                                                                                                    class="input-group-prepend">
                                                                                                                    <div
                                                                                                                        class="input-group-text">
                                                                                                                        $
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <input
                                                                                                                    type="text"
                                                                                                                    class="form-control"
                                                                                                                    id="stock2" />
                                                                                                            </div>
                                                                                                        </div>

                                                                                                        <div
                                                                                                            class="form-group mb-3 col-xs-12 col-sm-6">
                                                                                                            <div
                                                                                                                class="input-group mb-2">
                                                                                                                <div
                                                                                                                    class="input-group-prepend">
                                                                                                                    <div
                                                                                                                        class="input-group-text">
                                                                                                                        $
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <input
                                                                                                                    type="text"
                                                                                                                    class="form-control"
                                                                                                                    id="stock2" />
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-12">
                                                                                                <div
                                                                                                    class="text-center">
                                                                                                    <button
                                                                                                        type="submit"
                                                                                                        class="btn btn-primary btn-block text-uppercase btn-green shadow-none"
                                                                                                        style="width: 78px; margin: 0 auto;">
                                                                                                        Lọc</button>
                                                                                                </div>
                                                                                            </div>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!-- /.modal -->
                                                                        </div>
                                                                    </div>
                                                                </div>
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
			<div class="modal fade" id="editsale" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Chỉnh Sửa</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						                        <div class="modal-body">
                            <div class="container tm-mt-big tm-mb-big h-100 align-items-center justify-content-center">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                                            <div class="row tm-edit-product-row">
                                                <div class="col-12">

                                                    <form action="" class="tm-edit-product-form">

                                                        <div class="row">

                                                            <div class="col-xl-6 col-lg-6 col-md-12">
                                                                <div class="form-group mb-3">
                                                                    <label for="name">Mã khuyễn mãi </label> <input
                                                                        id="name" name="name" type="text"
                                                                        class="form-control validate" required />
                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="name">Tên khuyến mãi </label> <input
                                                                        id="name" name="name" type="text"
                                                                        class="form-control validate" required />
                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="name">Giá trị khuyến mãi </label> <input
                                                                        id="name" name="name" type="text"
                                                                        class="form-control validate" required />
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                                                <div class="row">
                                                                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                                        <label for="stock">Ngày bắt đầu </label> <input
                                                                            id="stock" name="stock" type="date"
                                                                            class="form-control validate" required />
                                                                    </div>
                                                                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                                        <label for="stock">Ngày kết thúc </label> <input
                                                                            id="stock" name="stock" type="date"
                                                                            class="form-control validate" required />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="description">Mô tả</label>
                                                                    <textarea class="form-control validate" rows="3"
                                                                        required></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 mb-3">
                                                            <button class="btn btn-success shadow-none"
                                                                data-toggle="collapse" href="#filterproduct"
                                                                role="button" aria-expanded="false"
                                                                aria-controls="collapseExample">Chọn
                                                                sản phẩm</button>
                                                            <div class="collapse mt-3" id="filterproduct">
                                                                <div class="card card-body">
                                                                    <div
                                                                        class="container tm-mt-big tm-mb-big h-100 d-flex align-items-center justify-content-center">
                                                                        <div class="row">
                                                                            <div class="">
                                                                                <div
                                                                                    class="tm-bg-primary-dark tm-block tm-block-h-auto">
                                                                                    <div
                                                                                        class="row tm-edit-product-row">
                                                                                        <form action=""
                                                                                            class="tm-edit-product-form">
                                                                                            <div
                                                                                                class="col-xl-6 col-lg-6 col-md-12">
                                                                                                <div
                                                                                                    class="form-group mb-3">
                                                                                                    <label
                                                                                                        for="name">Nhãn
                                                                                                        hàng </label>
                                                                                                    <select
                                                                                                        class="form-select"
                                                                                                        multiple="multiple"
                                                                                                        id="languages-disabled-id"></select>
                                                                                                </div>
                                                                                                <div
                                                                                                    class="form-group mb-3">
                                                                                                    <label
                                                                                                        for="name">Loại
                                                                                                    </label> <select
                                                                                                        class="custom-select rounded tm-select-accounts"
                                                                                                        id="category">
                                                                                                        <option
                                                                                                            selected>
                                                                                                            Select
                                                                                                            category
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="1">
                                                                                                            New Arrival
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="2">
                                                                                                            Most Popular
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="3">
                                                                                                            Trending
                                                                                                        </option>
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div
                                                                                                class="col-lg-6 col-xs-12">
                                                                                                <label for="stock2">Giá
                                                                                                </label>
                                                                                                <div
                                                                                                    class="col-12 mx-auto mb-4">
                                                                                                    <div class="row">
                                                                                                        <div
                                                                                                            class="form-group mb-3 col-xs-12 col-sm-6">
                                                                                                            <div
                                                                                                                class="input-group mb-2">
                                                                                                                <div
                                                                                                                    class="input-group-prepend">
                                                                                                                    <div
                                                                                                                        class="input-group-text">
                                                                                                                        $
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <input
                                                                                                                    type="text"
                                                                                                                    class="form-control"
                                                                                                                    id="stock2" />
                                                                                                            </div>
                                                                                                        </div>

                                                                                                        <div
                                                                                                            class="form-group mb-3 col-xs-12 col-sm-6">
                                                                                                            <div
                                                                                                                class="input-group mb-2">
                                                                                                                <div
                                                                                                                    class="input-group-prepend">
                                                                                                                    <div
                                                                                                                        class="input-group-text">
                                                                                                                        $
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <input
                                                                                                                    type="text"
                                                                                                                    class="form-control"
                                                                                                                    id="stock2" />
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-12">
                                                                                                <div
                                                                                                    class="text-center">
                                                                                                    <button
                                                                                                        type="submit"
                                                                                                        class="btn btn-primary btn-block text-uppercase btn-green shadow-none"
                                                                                                        style="width: 78px; margin: 0 auto;">
                                                                                                        Lọc</button>
                                                                                                </div>
                                                                                            </div>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!-- /.modal -->
                                                                        </div>
                                                                    </div>
                                                                </div>
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
			<div class="modal fade" id="showsale" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myCenterModalLabel">Thông tin</h4>
							<button type="button" class="close v-close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<div class="container">
								<div class="row">
									<div class="col-12">
										<div class="col-12 text-center mb-3">
											<p class="m-b-10 f-w-600">Mã khuyến mãi</p>
											<div
												style="padding: 4px 8px; background-color: #088178; text-align: center; color: #fff; margin-left: 25%;"
												class="col-6">
												<h4 class="mt-2">SP001</h4>
											</div>
										</div>
										<div class="col-12 mb-3 mt-3">
											<p class="m-b-10 f-w-600">Tên khuyến mãi</p>
											<h6 class="text-muted f-w-400">Nước hoa</h6>
										</div>
										<div class="col-12 mb-3">
											<p class="m-b-10 f-w-600">Giá trị khuyến mãi</p>
											<h6 class="text-muted f-w-400">10%</h6>
										</div>
										<div class="col-12 mb-3">
											<div class="row">
												<div class="col-6">
													<p class="m-b-10 f-w-600">Ngày bắt đầu</p>
													<h6 class="text-muted f-w-400">23/2/3</h6>
												</div>
												<div class="col-6">
													<p class="m-b-10 f-w-600">Ngày kết thúc</p>
													<h6 class="text-muted f-w-400">23/2/3</h6>
												</div>
											</div>
										</div>
										<div class="col-12 mb-3">
											<p class="m-b-10 f-w-600">Mô tả</p>
											<h6 class="text-muted f-w-400">ihihsihisahfichihcfisdh</h6>
										</div>
										<div class="col-12 mb-3">
											<p class="m-b-10 f-w-600">Trạng thái</p>
											<h6 class="text-muted f-w-400">hihii</h6>
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