<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>
					<security:authentication property="principal.username" />
				</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/pages/main.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>系统管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/user/paging"> <i
							class="fa fa-circle-o"></i> 用户管理
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/role/roleFindAll"> <i
							class="fa fa-circle-o"></i> 角色管理
					</a></li>

				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
					<span>车型店面数据管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/cars/findAll">
							<i class="fa fa-circle-o"></i> 车辆管理
					</a></li>
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/cars/findByPage">
						<i class="fa fa-circle-o"></i> 分页管理所有车辆
					</a></li>
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/owns/findAll">
						<i class="fa fa-circle-o"></i> 车主管理
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/shops/findAll">
							<i class="fa fa-circle-o"></i> 店面管理
					</a></li>
				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
				<span>订单数据管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">


					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/orders/findAll">
						<i class="fa fa-circle-o"></i> 订单管理
					</a></li>

					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/index5.jsp">
						<i class="fa fa-circle-o"></i> 谢谢
					</a></li>

				</ul></li>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>