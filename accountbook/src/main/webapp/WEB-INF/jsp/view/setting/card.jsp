<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tagLib.jsp"%>

<c:import url="/WEB-INF/jsp/common/pageHeader.jsp" >
  	<c:param name="icon" value="icon-cog4" />
  	<c:param name="title" value="카드 설정" />
  	<c:param name="firstname" value="설정" />
  	<c:param name="lastname" value="카드 설정" />
</c:import>

<div class="content">
	<div class="row">
		<div class="col-md-5">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-cog3 mr-2"></i>카드 설정
					</h6>
				</div>
				<div class="card-body">
					<form action="#">
						<div class="form-group row text-md-right">
							<label class="col-md-3 col-form-label">카드 구분 :</label>
							<div class="col-md-7">
								<select id="cardTypeSelect" class="form-control form-control-select2 required">
									<c:forEach var="cardType" items="${cardTypes}">
										<option value="${cardType}">${cardType}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">카드명 :</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="카드 이름" required>
								<span class="form-text text-muted">예) 현대카드, 국민카드, 삼성카드, 농협카드</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">결제은행 :</label>
							<div class="col-md-7">
								<select id="paymentBankSelect" class="form-control form-control-select2 required">
									<c:forEach var="bank" items="${banks}">
										<option value="${bank}">${bank}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">결제일 :</label>
							<div class="col-md-7">
								<select id="paymentDaySelect" class="form-control form-control-select2 required" data-width="150">
									<c:forEach var="item" begin="1" end="28" step="1">
										<option value="${item}">${item}일</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">메모 :</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="메모">
							</div>
						</div>
					</form>
				</div>
				<div class="card-footer bg-white d-flex justify-content-center align-items-center">
					<button type="submit" class="btn bg-teal-400">&nbsp;&nbsp;<i class="icon-paperplane mr-2"></i> 카드 추가&nbsp;&nbsp;</button>
				</div>
			</div>
		</div>
		
		<div class="col-md-7">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-list mr-2"></i>카드 설정 내역
					</h6>
				</div>
				<div class="card-body">
					<table class="table table-hover" id="cardSettingTable">
						<thead class="text-center">
							<tr>
								<th>번호</th>
								<th>카드 구분</th>
								<th>카드명</th>
								<th>결제은행</th>
								<th>결제일</th>
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
var CardSetting = function() {
	var dataTableSetting = function() {
		var Datatable = {
			ele: "#cardSettingTable",
			table: null,
			option: {
				columns: [{
			    	width: "10%",
			    	render: function(data, type, row, meta) {
			    		return meta.row + 1
			    	}
			    }, {
			        data: "cardType"
			    }, {
			    	data: "name"
			    }, {
			    	data: "paymentBank"
			    }, {
			    	data: "paymentDay"
			    }, {
			    	width: "10%",
			    	render: function(data, type, row, meta) {
			    		return '<button type="button" class="btn bg-primary-400 btn-sm"><i class="icon-pencil7 mr-1"></i> 수정</button>'
			    	}
			    }]
			},
			init: function() {
				this.table = Datatables.order(this.ele, this.option);
				this.search();
			},
			search: function() {
				Datatables.rowsAdd(this.table, contextPath + "/setting/card/search", new Object());
			}
		}
		
		Datatable.init();
	}
	
	return {
        init: function() {
        	dataTableSetting();
        }
    }
}();

document.addEventListener('DOMContentLoaded', function() {
	CardSetting.init();
});
</script>