<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tagLib.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>가계부 시스템 - 초기설정</title>
	
	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="limitless/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/colors.min.css" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->
	
	<link href="css/common.css" rel="stylesheet" type="text/css">
	
	<!-- Core JS files -->
	<script src="limitless/js/main/jquery.min.js"></script>
	<script src="limitless/js/main/bootstrap.bundle.min.js"></script>
	<script src="limitless/js/plugins/loaders/blockui.min.js"></script>
	<!-- Core JS files -->
	
	<!-- Theme JS files -->
	<script src="limitless/js/plugins/forms/validation/validate.min.js"></script>
	<script src="limitless/js/plugins/forms/styling/uniform.min.js"></script>
	
	<script src="limitless/js/app.js"></script>
	<!-- /theme JS files -->
</head>
<body>
	<div class="navbar navbar-expand-md navbar-dark">
		<div class="navbar-brand">
			<a href="#" class="d-inline-block">
				<img src="images/logo_light.png" alt="">
			</a>
		</div>
		<div class="d-md-none">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile">
				<i class="icon-tree5"></i>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbar-mobile">
			<div class="navbar-title ml-md-10 mr-md-auto">
				<span class="text-center">가계부 초기 설정</span>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item dropdown dropdown-user">
					<a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
						<img src="${pageContext.request.contextPath}/images/worker.png" class="rounded-circle mr-3" height="34" alt="">
						<span>관리자</span>
					</a>
					
					<div class="dropdown-menu dropdown-menu-right">
						<a href="#" class="dropdown-item"><i class="icon-user-plus"></i> My profile</a>
						<div class="dropdown-divider"></div>
						<a href="${pageContext.request.contextPath}/login" class="dropdown-item"><i class="icon-switch2"></i> Logout</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="page-content">
		<div class="content-wrapper">
			<div class="content d-flex justify-content-center align-items-center">
				
			</div>
			
			<div class="navbar navbar-expand-lg navbar-light">
				<div class="text-center d-lg-none w-100">
					<button type="button" class="navbar-toggler dropdown-toggle" data-toggle="collapse" data-target="#navbar-footer">
						<i class="icon-unfold mr-2"></i>Footer
					</button>
				</div>

				<div class="navbar-collapse collapse" id="navbar-footer">
					<span class="navbar-text">
						© 2019. <a href="#">Account Book Web </a> by <a href="#" target="_blank">Hyeong Gyun Ko</a>
					</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>