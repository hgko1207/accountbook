<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>가계부 시스템 - 로그인</title>
	
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
	
	<script src="js/login.js"></script>
</head>
<body class="bg-slate-800">
	<!-- Page content -->
	<div class="page-content">
		<div class="content-wrapper">
			<div class="content d-flex justify-content-center align-items-center">
			
				<!-- Login form -->
				<form class="login-form form-validate wmin-sm-400" action="login" method="post">
					<div class="card mb-0">
						<div class="card-body">
							<div class="text-center mb-3">
								<i class="icon-reading icon-2x text-slate-300 border-slate-300 border-3 rounded-round p-3 mb-3 mt-1"></i>
								<h3 class="mb-1">가계부 웹 로그인</h3>
								<span class="d-block text-muted">정보를 입력하세요.&nbsp;</span>
							</div>
							
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="text" class="form-control" placeholder="아이디" name="userId" required>
								<div class="form-control-feedback">
									<i class="icon-user text-muted"></i>
								</div>
							</div>
							
							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="비밀번호" name="password" required>
								<div class="form-control-feedback">
									<i class="icon-lock2 text-muted"></i>
								</div>
							</div>
							
							<div class="form-group d-flex align-items-center">
								<div class="form-check mb-0">
									<label class="form-check-label">
										<input type="checkbox" name="remember" class="form-input-styled" checked>
										아이디 저장
									</label>
								</div>

								<a href="#" class="ml-auto text-indigo">비밀번호를 잊으셨나요?</a>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">로그인 <i class="icon-circle-right2 ml-2"></i></button>
							</div>
							
							<div class="form-group text-center text-muted content-divider">
								<span class="px-2">계정이 없습니까?</span>
							</div>

							<div class="form-group">
								<a href="${pageContext.request.contextPath}/signup" class="btn btn-light btn-block">회원가입</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>