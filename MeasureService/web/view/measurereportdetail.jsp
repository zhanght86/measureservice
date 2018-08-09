<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="common.jsp" flush="true" />
		<style type="text/css">
			.select2-container--bootstrap .select2-selection{
				border-radius: 0px 4px 4px 0px;
			}
			.select2-container--bootstrap.input-sm .select2-selection--single, .input-group-sm .select2-container--bootstrap .select2-selection--single, .form-group-sm .select2-container--bootstrap .select2-selection--single{
				border-radius: 0px 4px 4px 0px;
			}
		</style>
		<%
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
			SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
			Date now = new Date();
			Calendar c = Calendar.getInstance();
			now = c.getTime();
			String begintime = dateFormat.format(now);//开始时间
			String endtime = dateFormat1.format(now);//结束时间
		%>
	</head>
	<body class="container-fluid" style="padding-top:15px;">
		<form id="queryform">
			<div class="row" style="padding-left:5px; padding-right:5px;">
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">时间类型</span> <select
							name="selecttime" id="selecttime" class="form-control select2" />
						<option value="t.suttletime">净重时间</option>
						<option value="t.grosstime">毛重时间</option>
						<option value="t.taretime">皮重时间</option>
						<!-- <option value="t.createdate">异常修改时间</option> -->
						</select>
					</div>
				</div>
				
				
				<div class="col-sm-3">
					<div class='input-group input-group-sm date'>
						<span class="input-group-addon">开始时间</span> <input type='text'
							class="form-control" placeholder="开始时间" id="begintime"
							name="begintime" value="<%=begintime%>" />
					</div>
				</div>
				<div class="col-sm-3">
					<div class='input-group input-group-sm date'>
						<span class="input-group-addon">结束时间</span> <input type='text'
							class="form-control" placeholder="结束时间" id="endtime"
							name="endtime" value="<%=endtime%>" />
					</div>
				</div>
				
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">计皮衡器</span> <select
							id="tareweighid" name="tareweighid" placeholder="计皮衡器"
							class="form-control select2-data-ajax"
							ajax-url="<c:url value='/measure/queryEquipment.do'/>">
						</select>
					</div>
				</div>
			</div>
			<div class="row" style="padding-left:5px; padding-right:5px;">
			    <div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">车　　号</span> <input
							type="text" class="form-control" placeholder="车号" id="carno"
							name="carno" aria-describedby="sizing-addon3">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">供　　货</span> <input
							type="text" class="form-control" placeholder="供货"
							id="sourcename" name="sourcename"
							aria-describedby="sizing-addon3">
					</div>
				</div>
                <div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">货　　名</span> <input
							type="text" class="form-control" placeholder="货名"
							id="materialname" name="materialname"
							aria-describedby="sizing-addon3">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">计毛衡器</span> <select
							id="grossweighid" name="grossweighid" placeholder="计毛衡器"
							class="form-control  select2-data-ajax"
							ajax-url="<c:url value='/measure/queryEquipment.do'/>">
						</select>
					</div>
				</div>
			</div>
			<div class="row" style="padding-left:5px; padding-right:5px;">
				<div class="col-sm-3">
					<div class="input-group input-group-sm">

						<span class="input-group-addon" id="sizing-addon3">船　　名</span> <input
							type="text" name="ship" id="ship" class="form-control"
							placeholder="船名" aria-describedby="sizing-addon3">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">收　　货</span> <input
							type="text" class="form-control" placeholder="收货"
							id="targetname" name="targetname"
							aria-describedby="sizing-addon3">
					</div>
				</div>
				
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">业务类型</span> <select
							id="operatype" name="operatype"
							class="form-control select2-data-ajax"
							ajax-url="<c:url value='/measure/queryOperatype.do'/>">
						</select>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">出净衡器</span> <select
							id="suttleweighid" name="suttleweighid" placeholder="出净衡器"
							class="form-control  select2-data-ajax"
							ajax-url="<c:url value='/measure/queryEquipment.do'/>">
						</select>
					</div>
				</div>
			</div>
			<div class="row" style="padding-left:5px; padding-right:5px;">
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">物&nbsp;流&nbsp;&nbsp;号</span>
						<input type="text" class="form-control" placeholder="物流号"
							id="matchid" name="matchid" aria-describedby="sizing-addon3">
					</div>
				</div>
                <div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">业&nbsp;务&nbsp;&nbsp;号</span>
						<input type="text" class="form-control" placeholder="业务号"
							id="taskcode" name="taskcode" aria-describedby="sizing-addon3">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon" id="sizing-addon3">计量类型</span> <select
							name="recordtype" id="recordtype" class="form-control select2" />
						<option value="-1">全部</option>	
						<option value="0">远程计量</option>
						<option value="2">司机自助</option>
						<option value="4">异常处理</option>
						</select>
					</div>
				</div>
				<div class="col-sm-3 btn-group-sm" style="padding-top: 5px;">
					<button id="query" type="button" class="btn btn-info" onclick="queryinfo()">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>&nbsp;查询
					</button>
					<button id="delResourceBtn" type="button" class="btn btn-danger" onclick="exportExcel()">
						<span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span>&nbsp;Excel导出
					</button>
				</div>
			</div>
		</form>
		<div class="row" style="padding-top:5px;padding-left:5px;padding-right:5px;">
			<div class="col-sm-12">
				<table id="MeasureDetailGrid" 
						  data-toggle="table" 
						  data-query-params="queryParams"
						  data-row-style="rowStyle" 
						  data-pagination="true" 
						  data-show-footer="true"
						  data-page-size="20"
						  data-page-list="[20, 40, 80, ALL]" 
						  data-side-pagination="server">
					<thead>
						<tr>
							<th data-field="matchid" data-halign="center" sortable>物流号</th>
							<th data-field="operatype" data-halign="center" class="text-nowrap" sortable>业务类型</th>
							<th data-field="carno" data-halign="center" class="text-nowrap">车号</th>
							<th data-field="taskcode" data-halign="center" data-searchable="true">业务号</th>
							<th data-field="materialname" data-halign="center" class="text-nowrap">货名</th>
							<th data-field="sourcename" data-halign="center" class="text-nowrap">供货</th>
							<th data-field="targetname" data-halign="center" class="text-nowrap">收货</th>
							<!-- <th data-field="ship" data-halign="center" class="text-nowrap">船名</th> -->
							<th data-field="gross" data-halign="center" class="text-right" >毛重/t</th>
							<th data-field="tare" data-halign="center" class="text-right" >皮重/t</th>
							<!-- <th data-field="deduction" data-halign="center" class="text-right" >扣重/t</th> -->
							<th data-field="suttle" data-halign="center" class="text-right" >净重/t</th>
							<!-- <th data-field="suttleb" data-halign="center" class="text-right" >供方净重/t</th>
							<th data-field="accordrate" data-halign="center" class="text-right">称差率/‰</th> -->
							<th data-field="grosstime" data-halign="center" class="text-nowrap">毛重时间</th>
							<th data-field="taretime" data-halign="center" class="text-nowrap">皮重时间</th>
							<th data-field="grossweigh" data-halign="center" class="text-nowrap">毛重衡器</th>
							<th data-field="tareweigh" data-halign="center" class="text-nowrap">皮重衡器</th>
							<th data-field="suttleweigh" data-halign="center" class="text-nowrap">净重衡器</th>
							<th data-field="grossoperaname" data-halign="center">毛重计量员</th>
							<th data-field="tareoperaname" data-halign="center">皮重计量员</th>
							<!-- <th data-field="tareb" data-halign="center" class="text-right" >供方皮重/t</th>
							<th data-field="grossb" data-halign="center" class="text-right" >供方毛重/t</th>
							<th data-field="grosstimeb" data-halign="center" class="text-nowrap">供方毛重时间</th> -->
							<th data-field="printsum"  class="text-center" data-formatter="operateFormatter">打印次数</th>
							<th data-field="memo"  class="text-center text-nowrap" >备注</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
		<div class="modal fade" id="PrintinfoWindow" role="dialog" aria-hidden="true" >
			<input type="hidden" id="matchid"  name="matchid" value="-1"/>
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">打印信息</h4>
					</div>
					<div class="modal-body">
						<div class="table-responsive"
							style="padding-top: 5px; padding-left: 5px; padding-right: 5px;">
							<table id="printGrid" data-toggle="table" data-row-style="rowStyle"  >
								<thead>
									<tr>
										<th data-field="matchid" data-halign="center" data-searchable="true" class="text-nowrap">物流号</th>
										<th data-field="opname" data-halign="center" data-searchable="true" class="text-nowrap">打印人</th>
										<th data-field="equname" data-halign="center" data-searchable="true" class="text-nowrap">打印衡器</th>
										<th data-field="createtime" data-halign="center" data-searchable="true" class="text-nowrap">打印时间</th>
										<th data-field="printtype" data-halign="center" data-searchable="true" class="text-nowrap">打印备注</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				queryinfo();
				$('.fixed-table-footer > table').remove();
				$('.fixed-table-footer').addClass('container-fluid').html('<div class="row"><div class="col-sm-12 text-center" style="font-size:15px;font-weight:bold" >总毛重/t:<span style="font-size:15px" id="sumgrossFooter" class="label label-warning">0.00</span> &nbsp;&nbsp;总皮重/t:<span style="font-size:15px" id="sumtareFooter" class="label label-primary">0.00</span> &nbsp;&nbsp;总净重/t:<span style="font-size:15px" id="sumsuttleFooter" class="label label-success">0.00</span> &nbsp;&nbsp;总供方净重/t:<span style="font-size:15px" id="sumsuttlebFooter" class="label label-danger">0.00</span></div></div>');
			});
			
			function openPrintinfoWindow(id_vv) {
				$("#matchid").val(id_vv);
				$('#PrintinfoWindow').modal('show');
			}
			
			$('#PrintinfoWindow').on('show.bs.modal', function(){
		    	var matchid = $("#matchid").val();
				$('#printGrid').bootstrapTable('refresh',{url:"<c:url value='/measureReport/queryPrintinfo.do'/>",query:{matchid:matchid}});
		    });
			
			$('#MeasureDetailGrid').bootstrapTable({
				onLoadSuccess : function(data) {
					$('#sumgrossFooter').html(data.more.sumgross);
					$('#sumtareFooter').html(data.more.sumtare);
					$('#sumsuttleFooter').html(data.more.sumsuttle);
					$('#sumsuttlebFooter').html(data.more.sumsuttleb);
				}
			});

			function operateFormatter(value, row, index) {
				return '<a class="edit" href="#" onclick="openPrintinfoWindow(\''+row.matchid+'\')">'+value+'</a>';
			}

			function queryParams(params) {
				return jQuery.extend({},params,$('#queryform').serializeJson());
			}

			function queryinfo() {
				$('#MeasureDetailGrid').bootstrapTable('refresh', {
					url : "<c:url value='/measureReport/queryReportDetail.do'/>"
				});
			}

			$(function() {
				$('#begintime').datetimepicker({
					format : 'YYYY-MM-DD HH:mm:ss',
					locale : 'zh-cn'
				});
				$('#endtime').datetimepicker({
					format : 'YYYY-MM-DD HH:mm:ss',
					locale : 'zh-cn'
				});
				$("#begintime").on("dp.change", function(e) {
					$('#endtime').data("DateTimePicker").minDate(e.date);
				});
				$("#endtime").on("dp.change", function(e) {
					$('#begintime').data("DateTimePicker").maxDate(e.date);
				});
			});
			function exportExcel() {
				commonExportExcel('计量明细报表', 'MeasureDetailGrid', 'queryform');
			}
		</script>
	</body>
</html>