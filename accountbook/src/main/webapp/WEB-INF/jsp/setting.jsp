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
	<script src="limitless/js/plugins/forms/wizards/steps.min.js"></script>
	<script src="limitless/js/plugins/forms/selects/select2.min.js"></script>
	<script src="limitless/js/plugins/forms/validation/validate.min.js"></script>
	<script src="limitless/js/plugins/forms/styling/uniform.min.js"></script>
	<script src="limitless/js/plugins/notifications/sweet_alert.min.js"></script>
	
	<script src="limitless/js/app.js"></script>
	<!-- /theme JS files -->
	
	<script src="js/jquery/jquery.repeater.js"></script>
	
	<script src="js/setting.js"></script>
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
				<!-- <span class="text-center">가계부 초기 설정</span> -->
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
				<div class="card w-md-1000">
					<div class="card-header bg-white header-elements-inline">
						<h4 class="card-title"><i class="icon-cog3"></i>&nbsp;&nbsp;&nbsp;가계부 초기 설정</h4>
					</div>
					
					<form class="wizard-form steps-validation" action="#">
						<h6>구성원 설정</h6>
						<fieldset>
							<div class="row">
								<fieldset class="col-md-4 offset-md-1">
									<legend class="font-weight-bold">구성원 타입 선택: <span class="text-danger">*</span></legend>
									<div class="form-group">
										<select id="memberGroupSelect" data-placeholder="Select position" class="form-control form-control-select2 required">
											<c:forEach var="memberGroup" items="${memberGroups}">
												<option value="${memberGroup}">${memberGroup}</option>
											</c:forEach>
										</select>
									</div>
								</fieldset>
								<fieldset class="col-md-5 offset-md-1">
									<legend class="font-weight-bold">구성원 입력: <span class="text-danger">*</span></legend>
									<div class="member-group1">
										<div class="form-group d-flex">
											<input type="text" class="form-control" placeholder="이름"/>
											<input type="text" class="form-control ml-2" placeholder="핸드폰번호"/>
										</div>
									</div>
									<div class="member-group2 d-none">
										<div class="form-group d-flex">
											<input type="text" class="form-control" placeholder="이름"/>
											<input type="text" class="form-control ml-2" placeholder="핸드폰번호"/>
										</div>
										<div class="form-group d-flex">
											<input type="text" class="form-control" placeholder="이름"/>
											<input type="text" class="form-control ml-2" placeholder="핸드폰번호"/>
										</div>
									</div>
									<div class="setting-repeater member-group3 d-none">
										<div class="form-group d-flex">
											<input type="text" class="form-control" placeholder="이름"/>
											<input type="text" class="form-control ml-2" placeholder="핸드폰번호"/>
										</div>
										<div data-repeater-list="member-list">
											<div data-repeater-item class="form-group d-flex">
												<input type="text" class="form-control" placeholder="이름"/>
												<input type="text" class="form-control ml-2" placeholder="핸드폰번호"/>
												<button data-repeater-delete type="button" class="btn bg-danger ml-2"><i class="icon-minus2"></i></button>
											</div>
										</div>
										<button data-repeater-create type="button" class="btn bg-teal-400"><i class="icon-plus2"></i></button>
									</div>
								</fieldset>
							</div>
						</fieldset>
						
						<h6>수입 항목 설정</h6>
						<fieldset>
							<div class="row">
								<fieldset class="col-md-8 offset-md-2">
									<legend class="font-weight-bold">수입 항목 추가: <span class="text-danger">*</span>
										<span class="text-muted font-size-sm ml-3">예) 월급, 상여금, 알바비, 기타 등</span>
									</legend>
									<div class="setting-repeater">
										<div data-repeater-list="member-list">
											<div data-repeater-item class="form-group d-flex">
												<input type="text" class="form-control" placeholder="수입 항목" required/>
												<input type="text" class="form-control ml-3" placeholder="비고"/>
												<button data-repeater-delete type="button" class="btn bg-danger ml-2 btn-icon btn-sm"><i class="icon-minus2"></i></button>
											</div>
										</div>
										<button data-repeater-create type="button" class="btn bg-teal-400 btn-icon btn-sm"><i class="icon-plus2"></i></button>
									</div>
								</fieldset>
							</div>
						</fieldset>
						
						<h6>지불 방식 설정</h6>
						<fieldset>
							<div class="row">
								<fieldset class="col-md-3 offset-md-1">
									<legend class="font-weight-bold">계좌(은행) 추가: <span class="text-danger">*</span></legend>
									<div class="setting-repeater">
										<div data-repeater-list="member-list">
											<div data-repeater-item class="form-group d-flex">
												<input type="text" class="form-control" placeholder="은행 이름" required/>
												<button data-repeater-delete type="button" class="btn bg-danger btn-icon btn-sm ml-2"><i class="icon-minus2"></i></button>
											</div>
										</div>
										<button data-repeater-create type="button" class="btn bg-teal-400 btn-icon btn-sm"><i class="icon-plus2"></i></button>
									</div>
								</fieldset>
								<fieldset class="col-md-3 ml-md-4">
									<legend class="font-weight-bold">체크카드 추가: <span class="text-danger">*</span></legend>
									<div class="setting-repeater">
										<div data-repeater-list="member-list">
											<div data-repeater-item class="form-group d-flex">
												<input type="text" class="form-control" placeholder="체크카드 이름" required/>
												<button data-repeater-delete type="button" class="btn bg-danger btn-icon btn-sm ml-2"><i class="icon-minus2"></i></button>
											</div>
										</div>
										<button data-repeater-create type="button" class="btn bg-teal-400 btn-icon btn-sm"><i class="icon-plus2"></i></button>
									</div>
								</fieldset>
								<fieldset class="col-md-3 ml-md-4">
									<legend class="font-weight-bold">신용카드 추가: <span class="text-danger">*</span></legend>
									<div class="setting-repeater">
										<div data-repeater-list="member-list">
											<div data-repeater-item class="form-group d-flex">
												<input type="text" class="form-control" placeholder="신용카드 이름" required/>
												<button data-repeater-delete type="button" class="btn bg-danger btn-icon btn-sm ml-2"><i class="icon-minus2"></i></button>
											</div>
										</div>
										<button data-repeater-create type="button" class="btn bg-teal-400 btn-icon btn-sm"><i class="icon-plus2"></i></button>
									</div>
								</fieldset>
							</div>
						</fieldset>
						
						<h6>지출 항목 설정</h6>
						<fieldset>
							<div class="row">
								<fieldset class="col-md-5 offset-md-1">
									<legend class="font-weight-bold">고정비 추가: <span class="text-danger">*</span>
										<span class="text-muted font-size-sm ml-3">예) 적금, 보험, 관리비, 통신비 등</span>
									</legend>
									<div class="setting-repeater">
										<div data-repeater-list="member-list">
											<div data-repeater-item class="form-group d-flex">
												<input type="text" class="form-control" placeholder="고정 지출 항목 추가" required/>
												<input type="text" class="form-control ml-3" placeholder="비고"/>
												<button data-repeater-delete type="button" class="btn bg-danger ml-2 btn-icon btn-sm"><i class="icon-minus2"></i></button>
											</div>
										</div>
										<button data-repeater-create type="button" class="btn bg-teal-400 btn-icon btn-sm"><i class="icon-plus2"></i></button>
									</div>
								</fieldset>
								<fieldset class="col-md-5 ml-md-3">
									<legend class="font-weight-bold">비고정비 추가: <span class="text-danger">*</span>
										<span class="text-muted font-size-sm ml-3">예) 교통비, 식비, 간식비, 경조사비 등</span>
									</legend>
									<div class="setting-repeater">
										<div data-repeater-list="member-list">
											<div data-repeater-item class="form-group d-flex">
												<input type="text" class="form-control" placeholder="비고정 지출 항목 추가" required/>
												<input type="text" class="form-control ml-3" placeholder="비고"/>
												<button data-repeater-delete type="button" class="btn bg-danger ml-2 btn-icon btn-sm"><i class="icon-minus2"></i></button>
											</div>
										</div>
										<button data-repeater-create type="button" class="btn bg-teal-400 btn-icon btn-sm"><i class="icon-plus2"></i></button>
									</div>
								</fieldset>
							</div>
						</fieldset>
						
						<h6>확인</h6>
						<fieldset>
							<div>
							
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			
			<div class="navbar navbar-expand-lg navbar-light">
				<div class="text-center d-lg-none w-100">
					<button type="button" class="navbar-toggler dropdown-toggle" data-toggle="collapse" data-target="#navbar-footer">
						<i class="icon-unfold mr-2"></i>Footer
					</button>
				</div>

				<div class="navbar-collapse collapse" id="navbar-footer">
					<span class="navbar-text">
						© 2019. <a href="#">Account Book Web </a> by <a href="#">Hyeong Gyun Ko</a>
					</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>