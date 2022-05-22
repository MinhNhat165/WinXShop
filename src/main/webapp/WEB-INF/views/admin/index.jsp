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
	<div class="page-flag" data="dashboard"></div>
	<!-- End-flag -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<%@include file="./common/sidebar.jsp"%>
		<div class="page-wrapper pt-0">


			<div class="container-fluid">
				<h5 class="card-title fs-3 green-color">Trang chủ</h5>

				<div class="card-group">
					<div class="card border-right tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<div class="d-inline-flex align-items-center">
										<h2 class="text-dark mb-1 font-weight-medium">${countCustomer }</h2>

									</div>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">
										Khách Hàng</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7"><i data-feather="user-plus"></i></span>
								</div>
							</div>
						</div>
						<a href="admin/customer.htm">
							<div class="dashbroad-more">
								More <i class="fas fa-arrow-circle-right"> </i>
							</div>
						</a>

					</div>
					<div class="card border-right tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<h2
										class="text-dark mb-1 w-100 text-truncate font-weight-medium">
										${countProduct }</h2>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">
										Sản Phẩm</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7"><i class=" icon-social-dropbox"
										style="font-size: 21px"></i></span>
								</div>
							</div>
						</div>
						<a href="admin/product.htm">
							<div class="dashbroad-more">
								More <i class="fas fa-arrow-circle-right"> </i>
							</div>
						</a>
					</div>
					<div class="card border-right tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<div class="d-inline-flex align-items-center">
										<h2 class="text-dark mb-1 font-weight-medium">${countOrder }</h2>

									</div>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">Đơn
										Đặt</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7 text-muted"><i
										data-feather="file-plus"></i></span>
								</div>
							</div>
						</div>
						<a href="admin/order.htm">
							<div class="dashbroad-more">
								More <i class="fas fa-arrow-circle-right"> </i>
							</div>
						</a>
					</div>

				</div>
				<!-- *************************************************************** -->
				<div class="card-group">
					<div class="card border-right tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<div class="d-inline-flex align-items-center">
										<h2 class="text-dark mb-1 font-weight-medium">${countBrand }</h2>
									</div>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">
										Nhãn Hàng</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7"><i class=" fas fa-handshake"
										style="font-size: 21px;"></i></span>
								</div>
							</div>
						</div>
						<a href="admin/brand.htm">
							<div class="dashbroad-more">
								More <i class="fas fa-arrow-circle-right"> </i>
							</div>
						</a>

					</div>
					<div class="card border-right tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<h2
										class="text-dark mb-1 w-100 text-truncate font-weight-medium">
										${countSale }</h2>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">
										Khuyến Mãi</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7"><i class="icon-tag"
										style="font-size: 21px"></i></span>
								</div>
							</div>
						</div>
						<a href="admin/sale.htm">
							<div class="dashbroad-more">
								More <i class="fas fa-arrow-circle-right"> </i>
							</div>
						</a>
					</div>
					<div class="card border-right tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<div class="d-inline-flex align-items-center">
										<h2 class="text-dark mb-1 font-weight-medium">${countNews }</h2>

									</div>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">Tin
										Mới</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7 text-muted"><i
										class=" icon-book-open" style="font-size: 21px"></i></span>
								</div>
							</div>
						</div>
						<a href="admin/news.htm">
							<div class="dashbroad-more">
								More <i class="fas fa-arrow-circle-right"> </i>
							</div>
						</a>
					</div>

				</div>
				<!-- *************************************************************** -->
				<!-- End First Cards -->

			</div>

		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<%@include file="./common/script.jsp"%>
</body>
</html>