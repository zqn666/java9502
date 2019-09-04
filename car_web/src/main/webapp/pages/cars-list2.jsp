<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>平驾租车-车辆分页管理</title>
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

<body class="hold-transition skin-blue sidebar-mini">

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
				车辆管理 <small>全部车辆</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/indexshou.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/cars/findAll">车辆管理</a></li>

				<li class="active">全部车型</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content"> <!-- .box-body -->
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">车辆列表</h3>
				</div>

				<div class="box-body">

					<!-- 数据表格 -->
					<div class="table-box">

						<!--工具栏-->
						<div class="pull-left" >
							<div class="form-group form-inline">
								<div class="btn-group">
									<button type="button" class="btn btn-default" title="新建"
										onclick='location.href="/shops/findAll2"'>
										<i class="fa fa-file-o"></i> 新建
									</button>
									<button type="button" class="btn btn-default" title="删除"
										onclick='delMany()'>
										<i class="fa fa-trash-o"></i> 删除
									</button>
									<button type="button" class="btn btn-default" title="刷新"
										onclick="window.location.reload();">
										<i class="fa fa-refresh"></i> 刷新
									</button>
								</div>
							</div>
						</div>
						<div class="box-tools pull-right" style="margin-left:30px">
							<form action="${pageContext.request.contextPath}/cars/searchByH_price">
								时租价：<input type="text" name="min_price" placeholder="最低价">——
										<input type="text" name="max_price" placeholder="最高价">
										<input type="submit" value="查找">
							</form>
						</div>

						<div class="box-tools pull-right" style="margin-left:20px">
							<div class="has-feedback">
								<input type="text" id="ctype" onkeyup="ctype()" name="ctype"  class="form-control input-sm" placeholder="品牌搜索">
								<span class="glyphicon glyphicon-search form-control-feedback"></span>
							</div>
						</div>

						<div class="box-tools pull-right" style="margin-left:20px">
							<div class="has-feedback">
								<input type="text" id="desc" onblur="desc()" name="cDesc" class="form-control input-sm" placeholder="标签搜索">
								<span class="glyphicon glyphicon-search form-control-feedback"></span>
							</div>
						</div>

						<div class="box-tools pull-right" style="margin-right: 30px">
							<div>
								<input style="background-color: #ce8483;color: white" type="button" value="分一下咯" onclick="location.href='${pageContext.request.contextPath}/cars/findByPage'" >
								<span class="glyphicon glyphicon-search form-control-feedback"></span>
							</div>
						</div>
						<!--工具栏/-->

						<!--数据列表-->
						<form id="delForm" action="${pageContext.request.contextPath}/cars/delMany">
							<table id="dataList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>
										<th class="" style="padding-right: 0px;"><input
											id="selall" type="checkbox" class="icheckbox_square-blue">
										</th>
										<th class="sorting_asc">编号</th>
										<th class="sorting">品牌</th>
										<th class="sorting">车型</th>
										<th class="sorting">排量变速</th>
										<th class="sorting">箱数</th>
										<th class="sorting">乘坐人数</th>
										<th class="sorting">标签描述</th>
										<th class="sorting"><a href="${pageContext.request.contextPath}/cars/findByASC" style="color: salmon">时租价</a></th>
										<th class="sorting"><a href="${pageContext.request.contextPath}/cars/findByDESC" style="color: black">日组价</a></th>
										<th class="sorting">车牌号</th>
										<th class="sorting">状态</th>
										<th class="text-center">操作</th>

									</tr>
								</thead>

								<tbody>
									<c:forEach items="${pi.list}" var="car" varStatus="i">
										<tr>
											<td><input name="ids" type="checkbox" value="${car.cid}"></td>
											<td>${i.count}</td>
											<td>${car.ctype}</td>
											<td>${car.cname}</td>
											<td>${car.cc}</td>
											<td>${car.boxNum}</td>
											<td>${car.peopleNum}</td>
											<td>${car.cDesc}</td>
											<td>${car.h_price}</td>
											<td>${car.d_price}</td>
											<td>${car.cNum}</td>
											<td>${car.cStatus==0?"空闲":car.cStatus==1?"已预约":"已租"}</td>
											<td class="text-center">
												<button type="button" class="btn bg-olive btn-xs"
														onclick='location.href="${pageContext.request.contextPath}/cars/findById?cid=+${car.cid}"'>详情</button>
												<button type="button" class="btn bg-olive btn-xs"
														onclick='location.href="${pageContext.request.contextPath}/cars/updUI?cid=+${car.cid}"'>修改</button>
												<button type="button" class="btn bg-olive btn-xs"
														onclick='delOne(${car.cid})'>删除</button>
											</td>
										</tr>

									</c:forEach>
								</tbody>

							</table>
						</form>
						<!--数据列表/-->

						<!--工具栏-->
						<div class="pull-left">
							<div class="form-group form-inline">
								<div class="btn-group">
									<button type="button" class="btn btn-default" title="新建"
										onclick='location.href="/shops/findAll2"'>
										<i class="fa fa-file-o"></i> 新建
									</button>
									<button type="button" class="btn btn-default" title="删除"
										onclick='delMany()'>
										<i class="fa fa-trash-o"></i> 删除
									</button>
									<%--<button type="button" class="btn btn-default" title="修改"--%>
										<%--onclick='location.href="/pages/cars-update.jsp'>--%>
										<%--<i class="fa fa-check"></i> 修改--%>
									<%--</button>--%>
									<%--<button type="button" class="btn btn-default" title="屏蔽"--%>
										<%--onclick='confirm("你确认要屏蔽吗？")'>--%>
										<%--<i class="fa fa-ban"></i> 屏蔽--%>
									<%--</button>--%>
									<button type="button" class="btn btn-default" title="刷新"
										onclick="window.location.reload();">
										<i class="fa fa-refresh"></i> 刷新
									</button>
								</div>
							</div>
						</div>
						<%--<div class="box-tools pull-right">--%>
							<%--<div class="has-feedback">--%>
								<%--<input type="text" class="form-control input-sm"--%>
									<%--placeholder="搜索"> <span--%>
									<%--class="glyphicon glyphicon-search form-control-feedback"></span>--%>
							<%--</div>--%>
						<%--</div>--%>
						<!--工具栏/-->
						<form action="${pageContext.request.contextPath}/cars/findByCityCtype">
							<div class="box-tools pull-right" style="margin-top:30px;margin-right: 30px">
								<div class="has-feedback">
									<input type="text"   name="city" class="form-control input-sm" placeholder="请输入城市">
									<input type="text"  name="ctype" class="form-control input-sm" placeholder="请输入品牌">
									<input type="submit" value="搜两下" style="margin-top: 10px;margin-left: 20px;width: 80px;padding: 5px;background-color: #00a7d0">
									<span class="glyphicon glyphicon-search form-control-feedback"></span>
								</div>
							</div>
						</form>

						<div class="box-tools pull-right" style="margin-top:30px;margin-right: 80px">
							<div class="has-feedback">
								<form action="${pageContext.request.contextPath}/cars/findCNum">
									<input type="text" name="cNum" class="form-control input-sm" placeholder="车牌精确查找">
									<span class="glyphicon glyphicon-search form-control-feedback"></span>
									<input type="submit" value="搜一下" style="margin-top: 10px;margin-left: 20px;width: 80px;padding: 5px;background-color: #00a7d0">
								</form>
							</div>
						</div>

						<div class="box-tools pull-right" style="margin-top:30px;margin-right: 30px">
							<div class="has-feedback">
								<input type="text" onkeyup="findKey()" id="cNum" name="cNum" class="form-control input-sm" placeholder="车牌自动补全">
								<span class="glyphicon glyphicon-search form-control-feedback"></span>
							</div>
							<div id="kDiv" style="padding: 5px"></div>
						</div>
					</div>
					<!-- 数据表格 /-->
					<div class="box-tools pull-right" style="margin-top:30px;margin-right: 30px">
						<div>
							<input style="background-color: #ce8483;color: white" type="button" value="分一下咯" onclick="location.href='${pageContext.request.contextPath}/cars/findByPage'" >
							<span class="glyphicon glyphicon-search form-control-feedback"></span>
						</div>
					</div>

				</div>
				<!-- /.box-body -->

				<!-- .box-footer-->
				<div class="box-footer">
					<div class="pull-left">
						<div class="form-group form-inline">
							共${pi.pages} 页，&nbsp;共${pi.total} 条数据。
							每页 <select  class="form-control" id="pageSize" onchange="goPage(1)">

								<option value="2">2</option>
								<option value="3">3</option>
								<option value="5">5</option>
								<option value="10">10</option>
							</select> 条
						</div>
					</div>

					<div class="box-tools pull-right">
						<ul class="pagination">
							<li><a href="javascript:goPage(1)" aria-label="Previous">首页</a></li>
							<li><a href="javascript:goPage(${pi.prePage})">上一页</a></li>

							<c:forEach begin="1" end="${pi.pages}" var="i">

								<li>
									<c:if test="${pi.pageNum==i}">
										<a href="javascript:goPage(${i})" style="background-color: #00a7d0;color: white">${i}</a>
									</c:if>
									<c:if test="${pi.pageNum!=i}">
										<a href="javascript:goPage(${i})">${i}</a>
									</c:if>
								</li>
							</c:forEach>

							<li><a href="javascript:goPage(${pi.nextPage})">下一页</a></li>
							<li><a href="javascript:goPage(${pi.pages})" aria-label="Next">尾页</a></li>
						</ul>
					</div>

				</div>

				<!-- /.box-footer-->

			</div>

			</section>
			<!-- 正文区域 /-->

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

	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jQuery/jquery-3.3.1.js"></script>
	<script>
		<%--删除单条--%>
		function delOne(cid) {
		    if (confirm("您确定删除该车信息吗!?"))
                location.href="${pageContext.request.contextPath}/cars/delOne?cid="+cid;
        }
        
        <%--删除多条--%>
        function delMany() {
			if (confirm("您确定删除这些选中的车辆信息吗!?"))
			    var delForm = $("#delForm");
				delForm.submit();
        }

        <%--键盘弹起模糊品牌搜索--%>
		function ctype() {
			var ctype = $("#ctype").val();
			if (ctype.trim()==""){
			    return;
			}else {
			    location.href="${pageContext.request.contextPath}/cars/searchCtype?ctype="+ctype;
			}
        }

        <%--失去焦点，标签搜索--%>
        function desc() {
            var cDesc = $("#desc").val();
            if (cDesc.trim()==""){
                return;
            }else {
                location.href="${pageContext.request.contextPath}/cars/searchCDesc?cDesc="+cDesc;
            }
        }
        
        <%--自动补全车牌信息--%>
		function findKey() {
			var kDiv = $("#kDiv");
			var key = $("#cNum").val();
			if (key.trim()==""){
			    kDiv.hide();
			    return;
			}
			$.get(
                "${pageContext.request.contextPath}/cars/searchCNum?cNum="+key,
                function (data) {
                    // div  显示出来
                    kDiv.show();
                    //定义字符串
                    var s="";
                    // data传回来的是json    是个数组   [key:v,key1:v2]
                    $.each(data,function(index,element){
                        s+="<div onmouseout='out(this)' onmouseover='over(this)' style='border-bottom:1px solid #606060'>"+element.cNum+"</div>";
                    });
                    kDiv.html(s);
                },
                "json"
			);
        }
        function out(obj) {
            $(obj).css("background-color","white");
        }
        function over(obj) {
            $(obj).css("background-color","white");
        }

//        分页
		$("#pageSize option[value=${pi.pageSize}]").prop("selected","selected");
		function goPage(currentPage) {
			var pageSize = $("#pageSize").val();
			if (currentPage<1)
			    return;
			if (currentPage>${pi.pages})
			    return;

			location.href="${pageContext.request.contextPath}/cars/findByPage?currentPage="+currentPage+"&pageSize="+pageSize;
        }

//		车牌验证

		function cNum() {
            var ccNum = $("#checkCNum").val();
            var trucNum = "\\d";
			if (ccNum.isEmpty(trucNum)){

			}else {
			    $("#souxia").attr().prop("disabled","disabled");
			}
        }


	</script>
	
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

			// 激活导航位置
			setSidebarActive("order-manage");

			// 列表按钮 
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作 
			$("#selall").click(function() {
				var clicks = $(this).is(':checked');
				if (!clicks) {
					$("#dataList td input[type='checkbox']").iCheck("uncheck");
				} else {
					$("#dataList td input[type='checkbox']").iCheck("check");
				}
				$(this).data("clicks", !clicks);
			});
		});
	</script>
</body>

</html>