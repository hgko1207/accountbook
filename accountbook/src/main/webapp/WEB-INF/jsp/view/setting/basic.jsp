<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tagLib.jsp"%>

<c:import url="/WEB-INF/jsp/common/pageHeader.jsp" >
  	<c:param name="icon" value="icon-users" />
  	<c:param name="title" value="기본 설정" />
  	<c:param name="firstname" value="설정" />
  	<c:param name="lastname" value="기본 설정" />
</c:import>

<div class="content">
	<div class="row">
		<div class="col-md-5">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-cog3 mr-2"></i>기본 설정
					</h6>
				</div>
				<div class="card-body">
					<form action="#">
						<div class="form-group row text-md-right">
							<label class="col-md-3 col-form-label">가계부 제목 :</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="가계부 제목" required>
							</div>
						</div>
						<div class="form-group row text-md-right">
							<label class="col-md-3 col-form-label">용도 :</label>
							<div class="col-md-7">
								<select id="memberGroupSelect" data-placeholder="Select position" class="form-control form-control-select2 required">
									<c:forEach var="memberGroup" items="${memberGroups}">
										<option value="${memberGroup}">${memberGroup}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">구성원 :</label>
							<div class="col-md-7">
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
											<button data-repeater-delete type="button" class="btn bg-danger ml-2 btn-icon btn-sm"><i class="icon-minus2"></i></button>
										</div>
									</div>
									<button data-repeater-create type="button" class="btn bg-teal-400 btn-icon btn-sm mt-3"><i class="icon-plus2"></i></button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="card-footer bg-white d-flex justify-content-center align-items-center">
					<button type="submit" class="btn bg-blue">&nbsp;&nbsp;<i class="icon-paperplane mr-2"></i> 가계부 추가&nbsp;&nbsp;</button>
				</div>
			</div>
		</div>
		
		<div class="col-md-7">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-list mr-2"></i>설정 내역</h6>
				</div>
				<div class="card-body">
					<table class="table table-hover" id="basicSettingTable">
						<thead class="text-center">
							<tr>
								<th>번호</th>
								<th>가계부 제목</th>
								<th>용도</th>
								<th>구성원</th>
								<th>등록날짜</th>
								<th></th>
							</tr>
						</thead>
						<tbody class="text-center"></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
var BasicSetting = function() {
	var memberSetting = function() {
		$(".setting-repeater").repeater({
			initEmpty : true,
			show: function() {
				$(this).slideDown();
			},
			hide: function(deleteElement) {
				if (confirm('삭제 하시겠습니까?')) {
					$(this).slideUp(deleteElement);
				}
			},
			isFirstItemUndeletable: true
		});
		
		$("#memberGroupSelect").change(function() {
			var group = $("#memberGroupSelect option:selected").text();
			console.log(group);
			if (group == '개인용') {
				$(".member-group1").removeClass("d-none");
				$(".member-group2").addClass("d-none");
				$(".member-group3").addClass("d-none");
			} else if (group == '커플용') {
				$(".member-group1").addClass("d-none");
				$(".member-group2").removeClass("d-none");
				$(".member-group3").addClass("d-none");
			} else {
				$(".member-group1").addClass("d-none");
				$(".member-group2").addClass("d-none");
				$(".member-group3").removeClass("d-none");
			}
		});
	}
	
	var dataTableSetting = function() {
		var Datatable = {
			ele: "#basicSettingTable",
			table: null,
			option: {
				columns: [{
			    	width: "10%",
			    	render: function(data, type, row, meta) {
			    		return meta.row + 1
			    	}
			    }, {
			        data: "accountTitle"
			    }, {
			    	data: "type"
			    }, {
			    	render: function(data, type, row, meta) {
			    		return '';
			    	}
			    }, {
			    	data: "createDate"
			    }, {
			    	width: "10%",
			    	render: function(data, type, row, meta) {
			    		return '<a href="#" class="btn btn-outline bg-pink-400 text-pink-800 btn-icon rounded-round ml-2" ' +
		    				'onClick="previewAttachment(\'' + row.id + '\')"><i class="icon-link"></i></a>'
			    	}
			    }]
			},
			init: function() {
				this.table = Datatables.order(this.ele, this.option);
				this.search();
			},
			search: function() {
				Datatables.rowsAdd(this.table, contextPath + "/setting/basic/search", new Object());
			}
		}
		
		Datatable.init();
	}
	
	return {
        init: function() {
        	memberSetting();
        	dataTableSetting();
        }
    }
}();

document.addEventListener('DOMContentLoaded', function() {
	BasicSetting.init();
});
</script>