<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- side nav -->
<div class="left_col scroll-view">
	<div class="navbar nav_title" style="border: 0;">
		<a href="/nmds-web/index.html" class="site_title"><i
			class="fa fa-fighter-jet"></i> <span>신종 바이러스</span></a>
	</div>

	<div class="clearfix"></div>

	<!-- menu profile quick info -->
	<div class="profile">
		<div class="profile_pic">
			<img src="/nmds-web/resources/custom/images/mark_mini.gif" alt="..."
				class="img-circle profile_img">
		</div>
		<div class="profile_info">
			<span>사용자</span>
			<h2>${user.rank}${user.name}</h2>
		</div>
	</div>
	<!-- /menu profile quick info -->
    <br />
	<br />

	<!-- sidebar menu -->
	<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
		<div class="menu_section">
		</br>
		</br>
			<ul class="nav side-menu">
				<li><a><i class="fa fa-eye"></i> 관제 <span
						class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="index.html">대시보드</a></li>
						<li><a href="detaillog.html">로그 상세</a></li>
					</ul></li>
				<li><a><i class="fa fa-wrench"></i> 관리 <span
						class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="/nmds-web/urlruleconfig.html">URL 룰 관리</a></li>
						<li><a href="/nmds-web/ipbandconfig.html">부대별 IP 대역 설정</a></li>
						<li><a href="/nmds-web/userconfig.html">사용자 관리</a></li>
					</ul></li>

			</ul>
		</div>
	</div>
	<!-- /sidebar menu -->

	<!-- /menu footer buttons -->
	<div class="sidebar-footer hidden-small">
		<a data-toggle="tooltip" data-placement="top" title="Settings"> <span
			class="glyphicon glyphicon-cog" aria-hidden="true"></span>
		</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
			<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
		</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
			class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
		</a> <a data-toggle="tooltip" data-placement="top" title="Logout"> <span
			class="glyphicon glyphicon-off" aria-hidden="true"></span>
		</a>
	</div>
	<!-- /menu footer buttons -->
</div>
<!-- /side nav -->
