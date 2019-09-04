<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>平驾租车-添加车辆</title>
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

	<body class="hold-transition skin-purple sidebar-mini">

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
				车辆管理 <small>添加车辆</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/indexshou.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="${pageContext.request.contextPath}/cars/findByPage">车辆管理</a></li>
				<li class="active">添加车辆</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<form action="${pageContext.request.contextPath}/cars/save" enctype="multipart/form-data"
				method="post">
				<!-- 正文区域 -->
				<section class="content"> <!--车辆信息-->

				<div class="panel panel-default">
					<div class="panel-heading">车辆信息</div>
					<div class="row data-type">

						<div class="col-md-2 title">品牌</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="ctype"
								placeholder="品牌" value="">
						</div>
						<div class="col-md-2 title">车型</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="cname"
								placeholder="车型" value="">
						</div>
						<%--<div class="col-md-2 title">添加时间</div>--%>
						<%--<div class="col-md-4 data">--%>
							<%--<div class="input-group date">--%>
								<%--<div class="input-group-addon">--%>
									<%--<i class="fa fa-calendar"></i>--%>
								<%--</div>--%>
								<%--<input type="text" class="form-control pull-right"--%>
									<%--id="datepicker-a3" name="departureTime">--%>
							<%--</div>--%>
						<%--</div>--%>


						<div class="col-md-2 title">排量变速</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="cc"
								placeholder="排量变速" value="">
						</div>

						<div class="col-md-2 title">箱数</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="箱数"
								name="boxNum" value="">
						</div>

                        <div class="col-md-2 title">乘坐人数</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="乘坐人数"
                                   name="peopleNum" value="">
                        </div>

                        <div class="col-md-2 title">时租价</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="时租价"
                                   name="h_price" value="">
                        </div>

                        <div class="col-md-2 title">日组价</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="日组价"
                                   name="d_price" value="">
                        </div>

                        <div class="col-md-2 title">车牌号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="车牌号"
                                   name="cNum" value="">
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

						<div class="col-md-2 title">图片</div>
						<div class="col-md-4 data">
							<input type="file" class="form-control" placeholder="图片"
								   name="upload" >
						</div>

						<div class="col-md-2 title rowHeight2x">标签</div>
						<div class="col-md-4 data rowHeight2x">
							<textarea class="form-control" rows="3" placeholder="其他信息"
								name="cDesc"></textarea>
						</div>

						<%--店面--%>
						<div class="col-md-2 title rowHeight2x">所属店面</div>
						<div class="col-md-4 data rowHeight2x">
							<select class="form-control select2"  style="width: 100%"
									name="shopid">
								<c:forEach items="${all}" var="shop">
									<option value="${shop.sid}">${shop.shop_name}</option>
								</c:forEach>
							</select>
						</div>


						<div style="margin-top: 20px;float: left">
						<form action="${pageContext.request.contextPath}/owns/save">

							<section class="content"> <!--车辆信息-->

								<div class="panel panel-default">
									<div class="panel-heading">车主信息</div>
									<div class="row data-type">

										<div class="col-md-2 title">车主姓名</div>
										<div class="col-md-4 data">
											<input type="text" class="form-control" name="oname"
												   placeholder="车主姓名" value="">
										</div>

										<div class="col-md-2 title">车主电话</div>
										<div class="col-md-4 data">
											<input type="text" class="form-control" name="otel"
												   placeholder="车主电话" value="">
										</div>

										<div class="col-md-2 title">车主身份证号</div>
										<div class="col-md-4 data">
											<input type="text" class="form-control" name="otypeNum"
												   placeholder="车主身份证号" value="">
										</div>
									</div>
								</div>
							</section>
						</form>
						<%--车主--%>
						</div>
					</div>
				</div>
				<!--订单信息/--> <!--工具栏-->
				<div class="box-tools text-center">
					<button type="submit" class="btn bg-maroon">保存</button>
					<button type="button" class="btn bg-default"
						onclick="history.back(-1);">返回</button>
				</div>
				</section>
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

	</script>

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
			$("#datepicker-a3").datetimepicker({
				format:"yyyy-mm-dd hh:ii",
				
			});

		});
	</script>
	

</body>

</html>