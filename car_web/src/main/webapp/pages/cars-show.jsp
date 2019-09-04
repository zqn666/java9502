<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>平驾租车-车辆详情</title>
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



</head>

<body class="hold-transition skin-yellow sidebar-mini">

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
				车辆管理 <small>车辆详情</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/indexshou.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="${pageContext.request.contextPath}/cars/findAll">车辆管理</a></li>
	
				<li class="active">车辆详情</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<form action="${pageContext.request.contextPath}/cars/updUI?cid=+${car.cid}"
				method="post">
				<!-- 正文区域 -->
				<section class="content"> <!--车辆信息-->

				<div class="panel panel-default">
					<div class="panel-heading"><font style="font-weight: 800">车辆信息</font></div>
					<div class="row data-type">


						<div class="col-md-2 title"><font style="font-weight: 800">品牌</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="productName"
								placeholder="车辆名称" value="${car.ctype}"
								readonly="readonly">
						</div>


						<div class="col-md-2 title"><font style="font-weight: 800">车型</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="cityName"
								placeholder="出发城市" value="${car.cname}"
								readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">排量</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="排量"
								name="productPrice" value="${car.cc}"
								readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">箱数</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="箱数"
								name="productPrice" value="${car.boxNum}"
								readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">乘坐人数</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="乘坐人数"
								   name="productPrice" value="${car.peopleNum}"
								   readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">时租价</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="时租价"
								   name="productPrice" value="${car.h_price}"
								   readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">日组价</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="日组价"
								   name="productPrice" value="${car.d_price}"
								   readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">车牌号</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车牌号"
								   name="productPrice" value="${car.cNum}"
								   readonly="readonly">
						</div>



						<div class="col-md-2 title"><font style="font-weight: 800">车主</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车主"
								   name="carown.oname" value="${car.carown.oname}"
								   readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">车主电话</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车主电话"
								   name="carown.otel" value="${car.carown.otel}"
								   readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">车主证件号</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车主证件号"
								   name="carown.otypeNum" value="${car.carown.otypeNum}"
								   readonly="readonly">
						</div>

						<div class="col-md-2 title"><font style="font-weight: 800">车辆状态</font></div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="车辆价格"
								   name="productPrice" value="${car.cStatus==0?"空闲":car.cStatus==1?"已预约":"已租"}"
								   readonly="readonly">
						</div>

						<div class="col-md-2 title" style="height: 200px"><font style="font-weight: 800">车辆照片</font></div>
						<div class="col-md-10" style="height: 200px" readonly="readonly">
							<img src="../img${car.images}" alt="车车美照">
						</div>

					</div>

					<div class="row data-type">
						<div class="col-md-2 title rowHeight2x"><font style="font-weight: 800">标签描述</font></div>
						<div class="col-md-10 data rowHeight2x">
							<textarea class="form-control" rows="3" placeholder="标签描述" readonly="readonly"
									  name="productDesc">${car.cDesc}</textarea>
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



					<div class="col-md-2 title">店面地址</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control" placeholder="店面地址"
							   value="${car.shop.shop_address}" readonly="readonly">
					</div>

					<div class="col-md-2 title">联系方式</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control" placeholder="联系方式"
							   value="${car.shop.shop_tel}" readonly="readonly">
					</div>
				</div>
				<!--订单信息/--> <!--工具栏-->
				<div class="box-tools text-center">
					<button type="submit" class="btn bg-default">修改</button>
					<button type="button" class="btn bg-default"
						onclick="history.back(-1);">返回</button>
				</div>
				<!--工具栏/--> </section>
				<!-- 正文区域 /-->
			</form>
		</div>
		<!-- 内容区域 /-->


		<!-- 底部导航 /-->
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
			$('#datepicker-a3').datepicker({
				autoclose : true,
				format : 'yyyy-mm-dd'
			});
		});

		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("order-manage");

		});
	</script>
</body>

</html>