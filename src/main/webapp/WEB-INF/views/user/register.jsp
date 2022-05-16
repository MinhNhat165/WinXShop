<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body>
	<header class="header-area header-style-5 vh-5">
		<div class="header-bottom sticky-bar sticky-white-bg">
			<div class="container">
				<div class="header-wrap header-space-between position-relative">
					<div class="logo logo-width-1">
						<a href="index.html"><img
							src="<c:url value='/resources/imgs/theme/logo.svg'/>" alt="logo" /></a>
					</div>
					<h3 class="text-brand">Đăng Ký</h3>
				</div>
			</div>
		</div>
	</header>

	<main class="main my-background">
		<section class="">
			<div class="container">
				<div class="row vh-90">
					<div class="col-lg-12 m-auto">
						<div class="row">
							<div class="col-lg-6 align-items-center">
								<div class="text-center mb-md-5 mb-lg-0 mb-sm-5">
									<h1>
										<a href="index.html"><img
											src="<c:url value='/resources/imgs/theme/logo.svg'/>" /></a>
									</h1>
									<h2 class="text-brand lh-sm">Shop bán nước hoa chất lượng
										hàng đầu PTIT</h2>
								</div>
							</div>
							<div class="col-lg-1"></div>
							<div class="col-lg-4">
								<div
									class="login_wrap widget-taber-content p-30 box-shadow-outer-7 bg-white border-radius-5">
									<div class="padding_eight_all bg-white">
										<div class="heading_s1">
											<h3 class="mb-30">Đăng ký tài khoản</h3>
										</div>

										<form:form action="register.htm"  modelAttribute="taikhoan" method="post">
											<div class="form-group form-floating">
												<form:input path="email" type="text" required="" name="email"
													placeholder="Email" class="form-control form-control-lg" />
													<span class="text-danger"><form:errors
																			path="email"></form:errors></span>
												<label for="">Email</label>
											</div>
											<div class="form-group form-floating">
												<input required="" type="password" name="password"
													placeholder="Nhập mật khẩu" class="form-control form-control-lg" />		
												<label for="">Password</label>
											</div>
											<div class="form-group form-floating">
												<input required="" type="password" name="repassword"
													placeholder="Nhập lại mật khẩu"
													class="form-control form-control-lg" />
													<span class="text-danger"><form:errors
																			path="matKhau"></form:errors></span>
												<label for="">Confirm password</label>
											</div>

											<div class="form-group">
												<button type="submit"
													class="btn col-12 btn-lg btn-fill-out btn-block hover-up"
													name="register">Đăng ký</button>
											</div>
										</form:form>
										<div class="divider-text-center mt-15 mb-15">
											<span> or</span>
										</div>
										<button
											class="btn col-12 btn-google btn-lg btn-fill-out btn-block hover-up">
											Đăng nhập với Google</button>
										<div class="text-muted text-center mt-10">
											Đã có tài khoản? <a href="login.html">Đăng nhập
												ngay!!!</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<%@include file="./footer.jsp"%>
	<%@include file="./script.jsp"%>
</body>
</html>