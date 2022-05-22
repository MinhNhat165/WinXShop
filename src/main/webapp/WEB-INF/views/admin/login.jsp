<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./common/head.jsp"%>
</head>

<body>
	<div class="main-wrapper">
		<!-- ============================================================== -->
		<!-- Preloader - style you can find in spinners.css -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- Preloader - style you can find in spinners.css -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Login box.scss -->
		<!-- ============================================================== -->

		<div
			class="auth-wrapper d-flex no-block justify-content-center align-items-center position-relative"
			style="background: url(<c:url value='/resources/admin/assets/images/big/auth-bg.jpg'/>) no-repeat center center;">

			<div class="auth-box row" style="width: 790px">
				<div class="col-lg-7 col-md-5 modal-bg-img"
					style="background-image: url(<c:url value='/resources/admin/assets/images/big/3.jpg'/>);"></div>
				<div class="col-lg-5 col-md-7 bg-white">
					<div class="p-3">
						<div class="text-center">
							<img
								src="<c:url value='/resources/admin/assets/images/big/icon.png'/>"
								alt="wrapkit">
						</div>
						<h2 class="mt-3 text-center">Đăng nhập</h2>
						<!-- <p class="text-center">Enter your email address and password to access admin panel.</p> -->
						<form:form class="mt-4" action="admin/login.htm" method="post"
							modelAttribute="TK">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<label class="text-dark" for="uname">Tên đăng nhập</label>
										<form:input path="email" class="form-control" id="uname"
											type="text" placeholder="enter your username" />
									</div>
								</div>
								<div class="col-lg-12">
									<div class="form-group">
										<label class="text-dark" for="pwd">Mật khẩu</label>
										<form:input path="matKhau" class="form-control" id="pwd"
											type="password" placeholder="enter your password" />
									</div>
								</div>
								<div class="col-lg-12 text-center">
									<span class="text-danger"><form:errors path="matKhau"></form:errors></span>
								</div>
								<div class="col-lg-12 text-center">
									<button type="submit" class="btn btn-block btn-green">Đăng
										nhập</button>
								</div>

							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- Login box.scss -->
		<!-- ============================================================== -->
	</div>
	<%@include file="./common/script.jsp"%>
</body>
</html>