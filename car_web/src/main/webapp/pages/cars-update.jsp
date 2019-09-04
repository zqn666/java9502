<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>平驾租车-车辆修改</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-red sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->

		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				车辆管理 <small>车辆修改</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/indexshou.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="${pageContext.request.contextPath}/cars/findAll">车辆管理</a></li>
				<li class="active">车辆修改</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<form action="${pageContext.request.contextPath}/cars/upd"
				method="post">
				<input type="hidden" name="cid" value="${car.cid}">
				<!-- 正文区域 -->
				<section class="content"> <!--车辆信息-->

				<div class="panel panel-default">
					<div class="panel-heading">车辆信息</div>
					<div class="row data-type">

						<div class="col-md-2 title">品牌</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="ctype"
								placeholder="品牌" value="${car.ctype}"
								readonly="readonly">
						</div>
						<div class="col-md-2 title">车型</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="cname"
								placeholder="车型" value="${car.cname}" readonly="readonly">
						</div>

						<div class="col-md-2 title">排量</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="cc"
								placeholder="排量" value="${car.cc}" readonly="readonly">
						</div>

						<div class="col-md-2 title">箱数</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="箱数"
								name="boxNum" value="${car.boxNum}" readonly="readonly">
						</div>

						<div class="col-md-2 title">乘坐人数</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="乘坐人数"
								   name="peopleNum" value="${car.peopleNum}" readonly="readonly">
						</div>

						<div class="col-md-2 title">时租价</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="时租价"
								   name="h_price" value="${car.h_price}">
						</div>

						<div class="col-md-2 title">日组价</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="日组价"
								   name="d_price" value="${car.d_price}">
						</div>

						<div class="col-md-2 title">车牌号</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车牌号"
								   name="cNum" value="${car.cNum}" readonly="readonly">
						</div>

						<div class="col-md-2 title">车主</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车主"
								   name="carPrice" value="${car.carown.oname}" readonly="readonly">
						</div>

						<div class="col-md-2 title">车主电话</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车主电话"
								   name="carPrice" value="${car.carown.otel}" readonly="readonly">
						</div>

						<div class="col-md-2 title">车主证件号</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车主证件号"
								   name="carPrice" value="${car.carown.otypeNum}" readonly="readonly">
						</div>



						<div class="col-md-2 title">车辆状态</div>
						<div class="col-md-4 data">
							<select class="form-control select2" style="width: 100%"
								name="cStatus">
								<option value="0" selected="selected">空闲</option>
								<option value="1">已预约</option>
								<option value="2">已租</option>
							</select>
						</div>

						<div class="col-md-2 title" style="height: 200px"><font style="font-weight: 800">车辆照片</font></div>
						<div class="col-md-10" style="height: 200px">
							<img src="../img${car.images}" alt="车车美照" >
						</div>
					</div>

					<div class="row data-type">
						<div class="col-md-2 title rowHeight2x"><font style="font-weight: 800">标签描述</font></div>
						<div class="col-md-10 data rowHeight2x">
							<textarea class="form-control" rows="3" placeholder="标签描述"
									  name="cDesc">${car.cDesc}</textarea>
						</div>
					</div>
				</div>

					<div class="panel panel-default">
						<div class="panel-heading"><font style="font-weight: 800">所属店面</font></div>
						<div class="row data-type">

							<div class="col-md-2 title">店面编号</div>
							<div class="col-md-4 data">
								<input type="text" class="form-control" placeholder="店面编号"
									   value="${car.shop.shop_num}" readonly="readonly">
							</div>

							<div class="col-md-2 title">店名</div>
							<div class="col-md-4 data">
								<input type="text" class="form-control" placeholder="店名"
									   value="${car.shop.shop_name}" readonly="readonly">
							</div>
						</div>
				<!--订单信息/--> <!--工具栏-->
				<div class="box-tools text-center">
					<button type="submit" class="btn bg-maroon">修改</button>
					<button type="button" class="btn bg-default"
						onclick="history.back(-1);">返回</button>
				</div>
				<!--工具栏/--> </section>
				<!-- 正文区域 /-->
			</form>
		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright &copy; 2019-2020 <a
					href="">课工场第一组</a>.
			</strong> All rights reserved. </footer>
		<!-- 底部导航 /-->


	</div>


	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {
			$('#datepicker-a3').datetimepicker({
				format: "yyyy-mm-dd hh:ii",
				autoclose: true,
				todayBtn: true,
				language: "zh-CN"
			});
		});

		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("order-manage");

		});
	</script>
</body>

</html>