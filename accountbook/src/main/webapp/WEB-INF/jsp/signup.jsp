<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>가계부 시스템 - 회원가입</title>
	
	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="limitless/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="limitless/css/colors.min.css" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->
	
	<link href="css/user.css" rel="stylesheet" type="text/css">
	
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
	
	<script src="js/signup.js"></script>
</head>
<body class="bg-slate-800">
	<div class="page-content">
		<div class="content-wrapper">
			<div class="content d-flex justify-content-center align-items-center">
				<form class="login-form form-validate wmin-sm-400" action="signup" method="post">
					<div class="card mb-0">
						<div class="card-body">
							<div class="text-center mb-3">
								<i class="icon-plus3 icon-2x text-success border-success border-3 rounded-round p-3 mb-3 mt-1"></i>
								<h3 class="mb-0">회원 가입</h3>
								<span class="d-block text-muted">모든 항목을 채워야 합니다.</span>
							</div>
							<div class="form-group text-center text-muted content-divider">
								<span class="px-2">자격 증명</span>
							</div>
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="text" class="form-control" placeholder="사용자 아이디" name="userId">
								<div class="form-control-feedback">
									<i class="icon-user-check text-muted"></i>
								</div>
								<!-- <span class="form-text text-danger"><i class="icon-cancel-circle2 mr-2"></i> 이 사용자 아이디는 이미 사용중 입니다.</span> -->
							</div>
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="비밀번호">
								<div class="form-control-feedback">
									<i class="icon-user-lock text-muted"></i>
								</div>
							</div>
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="비밀번호 확인">
								<div class="form-control-feedback">
									<i class="icon-user-lock text-muted"></i>
								</div>
							</div>
							
							<div class="form-group text-center text-muted content-divider">
								<span class="px-2">사용자 정보</span>
							</div>
							
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="사용자 이름">
								<div class="form-control-feedback">
									<i class="icon-user text-muted"></i>
								</div>
							</div>
							
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="이메일">
								<div class="form-control-feedback">
									<i class="icon-mention text-muted"></i>
								</div>
							</div>
							
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="핸드폰 번호">
								<div class="form-control-feedback">
									<i class="icon-iphone text-muted"></i>
								</div>
							</div>
							
							<div class="form-group text-center text-muted content-divider">
								<span class="px-2"></span>
							</div>
							
							<button type="submit" class="btn bg-teal-400 btn-block">등 록 <i class="icon-circle-right2 ml-2"></i></button>
							
							<a href="${pageContext.request.contextPath}/login" 
								class="btn btn-outline bg-grey-300 text-grey-300 border-grey-300 btn-block mt-2">취 소 <i class="icon-circle-left2 ml-2"></i></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>