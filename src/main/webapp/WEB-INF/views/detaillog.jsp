<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- csrf setup -->
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>상세 로그</title>


<!-- boilerplate -->
<!-- Bootstrap -->
<link
	href="/nmds-web/resources/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="/nmds-web/resources/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="/nmds-web/resources/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- bootstrap-progressbar -->
<link
	href="/nmds-web/resources/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">



<!-- Page related -->
<!-- Ion.RangeSlider -->
<link href="/nmds-web/resources/vendors/normalize-css/normalize.css"
	rel="stylesheet">
<link
	href="/nmds-web/resources/vendors/ion.rangeSlider/css/ion.rangeSlider.css"
	rel="stylesheet">
<link
	href="/nmds-web/resources/vendors/ion.rangeSlider/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet">
<!-- Bootstrap Colorpicker -->
<link
	href="/nmds-web/resources/vendors/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link href="/nmds-web/resources/vendors/cropper/dist/cropper.min.css"
	rel="stylesheet">
<!-- Page related -->
<!-- Custom Theme Style -->
<link href="/nmds-web/resources/custom/css/custom.css" rel="stylesheet">

<!-- Datatables -->
<link
	href="/nmds-web/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/nmds-web/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/nmds-web/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/nmds-web/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/nmds-web/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet" type="text/css" />
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<c:import url="sidenav.jsp" />
			</div>

			<c:import url="topnav.jsp" />

			<!-- page content -->
			<div class="right_col" role="main">

				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>상세 로그 페이지</h3>
						</div>

						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Search for..."> <span
										class="input-group-btn">
										<button class="btn btn-default" type="button">Go!</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>


					<div class="row">

						<!-- form input mask -->
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Search with</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form class="form-horizontal form-label-left" id="urlform">

										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-3">URL
											</label>
											<div class="col-md-9 col-sm-9 col-xs-9">
												<input id="inputUrl" type="text" class="form-control">
												<span class="fa fa-globe form-control-feedback right"
													aria-hidden="true"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-3">IP
											</label>
											<div class="col-md-9 col-sm-9 col-xs-9">
												<input id="inputIp" type="text" class="form-control">
												<span class="fa fa-globe form-control-feedback right"
													aria-hidden="true"></span>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-3">시작
												시간 </label>
											<div class="col-md-9 col-sm-9 col-xs-9">
												<input id="inputStartTime" type="text" class="form-control"
													data-inputmask="'mask': '9999-99-99 99:99'"> <span
													class="fa fa-globe form-control-feedback right"
													aria-hidden="true"></span>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-3">끝
												시간 </label>
											<div class="col-md-9 col-sm-9 col-xs-9">
												<input id="inputFinishTime" type="text" class="form-control"
													data-inputmask="'mask': '9999-99-99 99:99'"> <span
													class="fa fa-globe form-control-feedback right"
													aria-hidden="true"></span>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-3">부서
											</label>
											<div class="col-md-9 col-sm-9 col-xs-9">
												<input id="inputDept" type="text" class="form-control">
												<span class="fa fa-globe form-control-feedback right"
													aria-hidden="true"></span>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-3">종류</label>
											<div class="col-md-9 col-sm-9 col-xs-9">
												<select id="selectLogState" class="form-control">
													<option value="9">전체</option>
													<option value="-1">블랙리스트</option>
													<option value="1">논화이트리스트</option>
												</select>
											</div>
										</div>

										<div class="ln_solid"></div>

										<div class="form-group">
											<div class="col-md-9 col-md-offset-3">
												<button type="button" onclick="searchUrlRules()"
													id="urlformsubmit" class="btn btn-success">검색</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- /form input mask -->
					</div>


					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Url 탐지 룰</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<p class="text-muted font-13 m-b-30">URL 탐지 룰 입니다.</p>
									<table id="datatable-buttons"
										class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>ID</th>
												<th>DEPT</th>
												<th>IP</th>
												<th>MAC</th>
												<th>URL</th>
												<th>LOGSTATE</th>
												<th>TIMESTAMP</th>
											</tr>
										</thead>


										<tbody id="detailtbody">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<c:import url="footer.jsp" />
		</div>
	</div>

	<!-- boilerplate -->
	<!-- jQuery -->
	<script src="/nmds-web/resources/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="/nmds-web/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Rxjs -->
	<script src="/nmds-web/resources/js/rxjs/rx.all.js" /></script>
	<!-- /boilerplate -->

	<!-- Page related -->
	<!-- Chart.js -->
	<script src="/nmds-web/resources/vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script
		src="/nmds-web/resources/vendors/bernii/gauge.js/dist/gauge.min.js"></script>
	<!-- jVectorMap -->
	<script
		src="/nmds-web/resources/custom/js/maps/jquery-jvectormap-2.0.3.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="/nmds-web/resources/custom/js/moment/moment.min.js"></script>
	<script
		src="/nmds-web/resources/custom/js/datepicker/daterangepicker.js"></script>
	<!-- FastClick -->
	<script src="/nmds-web/resources/vendors/fastclick/lib/fastclick.js"></script>
	<!-- iCheck -->
	<script src="/nmds-web/resources/vendors/iCheck/icheck.min.js"></script>
	<!-- NProgress -->
	<script src="/nmds-web/resources/vendors/nprogress/nprogress.js"></script>

	<!-- bootstrap-progressbar -->
	<script
		src="/nmds-web/resources/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>

	<!-- Flot -->
	<script src="/nmds-web/resources/vendors/Flot/jquery.flot.js"></script>
	<script src="/nmds-web/resources/vendors/Flot/jquery.flot.pie.js"></script>
	<script src="/nmds-web/resources/vendors/Flot/jquery.flot.time.js"></script>
	<script src="/nmds-web/resources/vendors/Flot/jquery.flot.stack.js"></script>
	<script src="/nmds-web/resources/vendors/Flot/jquery.flot.resize.js"></script>
	<!-- Flot plugins -->
	<script
		src="/nmds-web/resources/custom/js/flot/jquery.flot.orderBars.js"></script>
	<script src="/nmds-web/resources/custom/js/flot/date.js"></script>
	<script src="/nmds-web/resources/custom/js/flot/jquery.flot.spline.js"></script>
	<script src="/nmds-web/resources/custom/js/flot/curvedLines.js"></script>
	<!-- /Page related -->



	<!-- Page related -->
	<!-- Ion.RangeSlider -->
	<script
		src="/nmds-web/resources/vendors/ion.rangeSlider/js/ion.rangeSlider.min.js"></script>
	<!-- Bootstrap Colorpicker -->
	<script
		src="/nmds-web/resources/vendors/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<!-- jquery.inputmask -->
	<script
		src="/nmds-web/resources/vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
	<!-- jQuery Knob -->
	<script
		src="/nmds-web/resources/vendors/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- Cropper -->
	<script src="/nmds-web/resources/vendors/cropper/dist/cropper.min.js"></script>
	<!-- Page related -->
	<!-- Custom Theme Scripts -->
	<script src="/nmds-web/resources/custom/js/custom.js"></script>
	<!-- Datatables -->
	<script
		src="/nmds-web/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-bs/js/dataTables.bootstrap.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="/nmds-web/resources/vendors/jszip/dist/jszip.min.js"></script>
	<script src="/nmds-web/resources/vendors/pdfmake/build/pdfmake.min.js"></script>
	<script src="/nmds-web/resources/vendors/pdfmake/build/vfs_fonts.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="/nmds-web/resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>

	<!-- jquery.inputmask -->
	<!--csrf-->
	<script>
		$(function() {
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			$(document).ajaxSend(function(e, xhr, options) {
				xhr.setRequestHeader(header, token);
			});
		});
		$(document)
				.ready(
						function() {
							$(":input").inputmask();
							$("#inputStartTime").val(
									moment().startOf("day").format(
											"YYYY-MM-DD HH:mm"));
							$("#inputFinishTime").val(
									moment().add(1, "days").startOf("day")
											.format("YYYY-MM-DD HH:mm"));
							searchUrlRules();
						});
	</script>
	<!-- /jquery.inputmask -->

	<!-- Data Control -->
	<script>
		function buildUpDataTable() {
			var handleDataTableButtons = function() {
				var table;
				if ($("#datatable-buttons").length) {
					table = $("#datatable-buttons").DataTable({
						bDestroy : true,
						dom : "Bfrtip",
						buttons : [ {
							extend : "copy",
							className : "btn-sm"
						}, {
							extend : "print",
							className : "btn-sm"
						}, ],
						responsive : true
					});
				}
			};

			TableManageButtons = function() {
				"use strict";
				return {
					init : function() {
						handleDataTableButtons();
					}
				};
			}();

			TableManageButtons.init();
		}

		function searchUrlRules() {

			var requestUrl = "/nmds-web/rest/log/search";

			requestUrl = requestUrl + "?start="
					+ $("#inputStartTime").val().replace(" ", "::");
			requestUrl = requestUrl + "&finish="
					+ $("#inputFinishTime").val().replace(" ", "::");

			if ($("#inputUrl").val() !== "") {
				requestUrl = requestUrl + "&url=" + $("#inputUrl").val();
			}

			if ($("#inputDept").val() !== "") {
				requestUrl = requestUrl + "&dept=" + $("#inputDept").val();
			}
			if ($("#inputIp").val() !== "") {
				requestUrl = requestUrl + "&ip=" + $("#inputIp").val();
			}
			if ($("#selectLogState").val() != 9) {
				requestUrl = requestUrl + "&logstate="
						+ $("#selectLogState").val();
			}

			var responseStream = Rx.Observable.fromPromise(
					jQuery.getJSON(requestUrl)).flatMap(function(obj) {
				return obj;
			}).map(
					function(x) {
						var obj = x;

						if (obj.logstate == -1) {
							obj.logstate = "블랙리스트";
						} else if (obj.logstate == 1) {
							obj.logstate = "논화이트리스트";
						} else if (obj.logstate == 0) {
							obj.logstate = "화이트리스트";
						} else {
							obj.logstate = "오류";
						}

						obj.timestamp = moment(obj.timestamp).format(
								"YYYY-MM-DD HH:mm:ss");
						return obj;
					});
			//should change id to the "table index" and add button to delete
			$("#detailtbody").empty();
			responseStream.subscribe(function(x) {
				var item = "<tr><td>" + x.id + "</td><td>" + x.dept
						+ "</td><td>" + x.ip + "</td><td>" + x.mac
						+ "</td><td>" + x.url + "</td><td>" + x.logstate
						+ "</td><td>" + x.timestamp + "</td></tr>";
				$("#detailtbody").append(item);
				//console.log(x);
				//console.log("Next: " + x);
			}, function(err) {
				console.log("error" + err);
			}, function() {
				console.log($("#detailtbody").html());
				buildUpDataTable();
				console.log("completed");
			});
		}
	</script>
	<!-- /Data Control -->

</body>
</html>
