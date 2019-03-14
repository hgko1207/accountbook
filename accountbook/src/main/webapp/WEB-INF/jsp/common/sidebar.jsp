<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tagLib.jsp"%>

<div class="sidebar sidebar-dark sidebar-main sidebar-expand-md">

	<!-- Sidebar mobile toggler -->
	<div class="sidebar-mobile-toggler text-center">
		<a href="#" class="sidebar-mobile-main-toggle">
			<i class="icon-arrow-left8"></i>
		</a>
		Navigation
		<a href="#" class="sidebar-mobile-expand">
			<i class="icon-screen-full"></i>
			<i class="icon-screen-normal"></i>
		</a>
	</div>
	<!-- /sidebar mobile toggler -->
	
	<!-- Sidebar content -->
	<div class="sidebar-content">
		<div class="card card-sidebar-mobile">
			<ul class="nav nav-sidebar" data-nav-type="accordion">
				<li class="nav-item-header">
					<div class="text-uppercase font-size-md line-height-md">목록</div> 
					<i class="icon-menu" title="Main"></i>
				</li>
				<li id="home" class="nav-item">
					<a href="${pageContext.request.contextPath}/home" class="nav-link">
						<i class="icon-home4"></i><span>Dashboard</span>
					</a>
				</li>
				<li id="regist" class="nav-item nav-item-submenu">
					<a href="#" class="nav-link"><i class="icon-pencil5"></i> <span>항목 작성</span></a>
					<ul class="nav nav-group-sub" data-submenu-title="Layouts">
						<li id="regist_income" class="nav-item"><a href="${pageContext.request.contextPath}/regist/income" class="nav-link">
							<i class="icon-file-plus"></i><span>수입 항목 작성</span></a>
						</li>
						<li id="regist_expense" class="nav-item"><a href="${pageContext.request.contextPath}/regist/expense" class="nav-link">
							<i class="icon-file-minus"></i><span>지출 항목 작성</span></a>
						</li>
					</ul>
				</li>
				<li id="history" class="nav-item nav-item-submenu">
					<a href="#" class="nav-link"><i class="icon-list"></i> <span>내역 조회</span></a>
					<ul class="nav nav-group-sub" data-submenu-title="Layouts">
						<li id="history_income" class="nav-item"><a href="${pageContext.request.contextPath}/history/income" class="nav-link">
							<i class="icon-stack-plus"></i><span>수입 내역</span></a>
						</li>
						<li id="history_expense" class="nav-item"><a href="${pageContext.request.contextPath}/history/expense" class="nav-link">
							<i class="icon-stack-minus"></i><span>지출 내역</span></a>
						</li>
					</ul>
				</li>
				<li id="statistics" class="nav-item nav-item-submenu">
					<a href="#" class="nav-link"><i class="icon-pie-chart3"></i> <span>통 계</span></a>
					<ul class="nav nav-group-sub" data-submenu-title="Layouts">
						<li id="statistics_all" class="nav-item"><a href="${pageContext.request.contextPath}/statistics/all" class="nav-link">
							<i class="icon-chart"></i><span>전체 통계</span></a>
						</li>
						<li id="statistics_income" class="nav-item"><a href="${pageContext.request.contextPath}/statistics/income" class="nav-link">
							<i class="icon-stats-growth"></i><span>수입 통계</span></a>
						</li>
						<li id="statistics_expense" class="nav-item"><a href="${pageContext.request.contextPath}/statistics/expense" class="nav-link">
							<i class="icon-stats-decline"></i><span>지출 통계</span></a>
						</li>
					</ul>
				</li>
				<li id="setting" class="nav-item nav-item-submenu">
					<a href="#" class="nav-link"><i class="icon-cogs"></i> <span>설 정</span></a>
					<ul class="nav nav-group-sub" data-submenu-title="Layouts">
						<li id="setting_basic" class="nav-item"><a href="${pageContext.request.contextPath}/setting/basic" class="nav-link">
							<i class="icon-cog4"></i><span>기본 설정</span></a>
						</li>
						<li id="setting_assets" class="nav-item"><a href="${pageContext.request.contextPath}/setting/assets" class="nav-link">
							<i class="icon-cog4"></i><span>자산 설정</span></a>
						</li>
						<li id="setting_income" class="nav-item"><a href="${pageContext.request.contextPath}/setting/income" class="nav-link">
							<i class="icon-cog4"></i><span>수입 항목 설정</span></a>
						</li>
						<li id="setting_payment" class="nav-item"><a href="${pageContext.request.contextPath}/setting/payment" class="nav-link">
							<i class="icon-cog4"></i><span>지불 방식 설정</span></a>
						</li>
						<li id="setting_expense" class="nav-item"><a href="${pageContext.request.contextPath}/setting/expense" class="nav-link">
							<i class="icon-cog4"></i><span>지출 분류 설정</span></a>
						</li>
					</ul>
				</li>
				<li id="suggestions" class="nav-item">
					<a href="${pageContext.request.contextPath}/suggestions/list" class="nav-link">
						<i class="icon-bubbles7"></i><span>건의사항</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
</div>

<script>
	var pathName = this.location.pathname;
	var menuName = pathName.split("/")[2];
    var subMenuName = pathName.split("/")[3];
    
    if (subMenuName) {
		$("li#" + menuName).addClass("nav-item-expanded nav-item-open");
		$("li#" + menuName + "_" + subMenuName).children().addClass("active");
	} else {
		 $("li#" + menuName).children().addClass("active");
	}
</script>