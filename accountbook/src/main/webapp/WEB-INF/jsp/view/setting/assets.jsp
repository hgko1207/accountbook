<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tagLib.jsp"%>

<c:import url="/WEB-INF/jsp/common/pageHeader.jsp" >
  	<c:param name="icon" value="icon-cog4" />
  	<c:param name="title" value="자산 설정" />
  	<c:param name="firstname" value="설정" />
  	<c:param name="lastname" value="자산 설정" />
</c:import>

<div class="content">
	<div class="row">
		<div class="col-md-5">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-cog3 mr-2"></i>자산/부채 설정
					</h6>
				</div>
				<div class="card-body">
					<form action="#">
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">구분 :</label>
							<div class="col-md-7">
								<div class="form-group d-flex">
									<select id="cardTypeSelect" class="form-control form-control-select2 required">
										<c:forEach var="assets" items="${assetsGroups}">
											<option value="${assets.id}">${assets.name}</option>
										</c:forEach>
									</select>
									<button type="button" class="btn bg-blue ml-3" data-toggle="modal" data-target="#assetsGroupModal">자산 그룹 관리</button>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label text-md-right">이름 :</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="이름" required>
								<span class="form-text text-muted">* 구분에 해당되는 이름을 입력해주시면 됩니다.</span>
								<span class="form-text text-muted">예) 지갑, 국민은행, 하나은행 등.. </span>
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
					<button type="submit" class="btn bg-teal-400">&nbsp;&nbsp;<i class="icon-paperplane mr-2"></i> 자산 추가&nbsp;&nbsp;</button>
				</div>
			</div>
		</div>
		
		<div class="col-md-7">
			<div class="card">
				<div class="card-header bg-white">
					<h6 class="card-title">
						<i class="icon-list mr-2"></i>자산 등록 내역
					</h6>
				</div>
				<div class="card-body">
					<table class="table table-hover" id="assetsSettingTable">
						<thead class="text-center">
							<tr>
								<th>번호</th>
								<th>구분</th>
								<th>이름</th>
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

<!-- Horizontal form modal -->
<div id="assetsGroupModal" class="modal fade" tabindex="-1">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">자산/부채 그룹 관리</h5>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			
			<form action="#" class="form-horizontal">
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-form-label col-md-2 text-md-right">이름 : </label>
						<div class="col-md-6">
							<input type="text" placeholder="이름" class="form-control">
						</div>
						<div class="col-md-2">
							<button type="button" class="btn bg-teal-400">&nbsp;&nbsp;<i class="icon-paperplane mr-2"></i> 그룹 추가&nbsp;&nbsp;</button>
						</div>
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-outline bg-grey-300 text-grey border-grey-300" data-dismiss="modal">&nbsp;&nbsp;닫 기&nbsp;&nbsp;</button>
				</div>
			</form>
		</div>
	</div>
</div>


<script>
var AssetsSetting = function() {
	var dataTableSetting = function() {
		var Datatable = {
			ele: "#assetsSettingTable",
			table: null,
			option: {
				columns: [{
			    	width: "10%",
			    	render: function(data, type, row, meta) {
			    		return meta.row + 1
			    	}
			    }, {
			        data: "assetsType"
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
				Datatables.rowsAdd(this.table, contextPath + "/setting/assets/search", new Object());
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
	AssetsSetting.init();
});
</script>