<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tagLib.jsp"%>

<c:import url="/WEB-INF/jsp/common/pageHeader.jsp" >
  	<c:param name="icon" value="icon-cog4" />
  	<c:param name="title" value="수입 분류 설정" />
  	<c:param name="firstname" value="설정" />
  	<c:param name="lastname" value="수입 분류 설정" />
</c:import>

<div class="content">
	<div class="row">
		<div class="col-md-5">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-cog3 mr-2"></i>수입 분류 설정
					</h6>
				</div>
				<div class="card-body">
					<form action="#">
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">분류 이름 :</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="분류 이름" required>
							</div>
						</div>
					</form>
				</div>
				<div class="card-footer bg-white d-flex justify-content-center align-items-center">
					<button type="submit" class="btn bg-teal-400">&nbsp;&nbsp;<i class="icon-paperplane mr-2"></i> 수입 분류 추가&nbsp;&nbsp;</button>
				</div>
			</div>
		</div>
		<div class="col-md-7">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-list mr-2"></i>수입 항목 설정 내역
					</h6>
				</div>
				<div class="card-body">
					<table class="table table-bordered table-striped table-hover" id="incomeSettingTable">
						<thead class="text-center">
							<tr>
								<th>번호</th>
								<th>분류 이름</th>
								<th>Actions</th>
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
var IncomeSetting = function() {
	var dataTableSetting = function() {
		var Datatable = {
			ele: "#incomeSettingTable",
			table: null,
			option: {
				columns: [{
			    	width: "10%",
			    	render: function(data, type, row, meta) {
			    		return meta.row + 1
			    	}
			    }, {
			        data: "name"
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
				Datatables.rowsAdd(this.table, contextPath + "/setting/income/search", new Object());
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
	IncomeSetting.init();
});
</script>