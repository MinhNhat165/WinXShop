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
							class="page-title text-truncate text-dark font-weight-medium mb-1">Ticket
							List</h4>
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
					<div class="col-5 align-self-center">
						<div class="customize-input float-right">
							<select
								class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
								<option selected>Aug 19</option>
								<option value="1">July 19</option>
								<option value="2">Jun 19</option>
							</select>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid">

				<div class="card-group">
					<div class="card border-right tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<div class="d-inline-flex align-items-center">
										<h2 class="text-dark mb-1 font-weight-medium">236</h2>
										<span
											class="badge bg-primary font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">+18.33%</span>
									</div>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">
										Employee</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7"><i data-feather="user-plus"></i></span>
								</div>
							</div>
						</div>
						<a href="admin-employee.html">
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
										<sup class="set-doller">$</sup>18,306
									</h2>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">
										Customer</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7"><i data-feather="dollar-sign"></i></span>
								</div>
							</div>
						</div>
						<a href="admin-customer.html">
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
										<h2 class="text-dark mb-1 font-weight-medium">1538</h2>
										<span
											class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">-18.33%</span>
									</div>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">Brand</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7 text-muted"><i
										data-feather="file-plus"></i></span>
								</div>
							</div>
						</div>
						<a href="admin-brand.html">
							<div class="dashbroad-more">
								More <i class="fas fa-arrow-circle-right"> </i>
							</div>
						</a>
					</div>
					<div class="card tc-control">
						<div class="card-body">
							<div class="d-flex d-lg-flex d-md-block align-items-center">
								<div>
									<h2 class="text-dark mb-1 font-weight-medium">864</h2>
									<h6
										class="text-muted font-weight-normal mb-0 w-100 text-truncate">Projects</h6>
								</div>
								<div class="ml-auto mt-md-3 mt-lg-0">
									<span class="opacity-7 text-muted"><i
										data-feather="globe"></i></span>
								</div>
							</div>
						</div>
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
	<%@include file="./script.jsp"%>
</body>
</html>