<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>FootBallTogether - 팀스케줄</title>
<!-- loader-->
<link href="assets/css/pace.min.css" rel="stylesheet" />
<script src="assets/js/pace.min.js"></script>
<!--favicon-->
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<!--Full Calendar Css-->
<link href="assets/plugins/fullcalendar/css/fullcalendar.min.css"
	rel='stylesheet' />
<!-- simplebar CSS-->
<link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
<!-- Bootstrap core CSS-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<!-- animate CSS-->
<link href="assets/css/animate.css" rel="stylesheet" type="text/css" />
<!-- Icons CSS-->
<link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
<!-- Sidebar CSS-->
<link href="assets/css/sidebar-menu.css" rel="stylesheet" />
<!-- Custom Style-->
<link href="assets/css/app-style.css" rel="stylesheet" />

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- simplebar js -->
<script src="assets/plugins/simplebar/js/simplebar.js"></script>
<!-- sidebar-menu js -->
<script src="assets/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="assets/js/app-script.js"></script>

<!-- Full Calendar -->
<script src='assets/plugins/fullcalendar/js/moment.min.js'></script>
<script src='assets/plugins/fullcalendar/js/fullcalendar.min.js'></script>
<script
	src="assets/plugins/fullcalendar/js/fullcalendar-custom-script.js"></script>

</head>
<c:set var="manager" value="${tVo.tmvList[0].manager}" />
<body class="bg-theme bg-theme1">

	<!-- Start wrapper-->
	<div id="wrapper">

			<!--Start sidebar-wrapper-->
		<div id="sidebar-wrapper" data-simplebar=""
			data-simplebar-auto-hide="true">
			<div class="brand-logo">
				<a href="login.jsp"> <img src="ours/img/logo.png" class="logo-icon"
					alt="logo icon">
				</a>
			</div>
			<ul class="sidebar-menu do-nicescrol">
				<li class="sidebar-header"><b style="font-size: large">Menu</b></li>
				<li style="margin-left: 50px; margin-bottom: 5px;">반갑습니다. <span><strong>${uVo.name}</strong></span>님
				</li>


				<!-- 매니저 / 일반회원인지에 따라 왼쪽 메뉴가 다르게 보여야 함 -->
				<li><a href="ToHome.do"> <i
						class="zmdi zmdi-view-dashboard"></i><span>홈으로</span>
				</a></li>
				<li><a href="showAllMember.do?teamId=${tVo.teamId}"> <i
						class="zmdi zmdi-accounts"></i> <span>멤버 보기</span>
				</a></li>
				<li><a href="teamSchedule.jsp"> <i
						class="zmdi zmdi-calendar-check"></i> <span>일정</span>
				</a></li>
				<li><a href="matchHistory.do?teamId=${tVo.teamId}"> <i
						class="zmdi zmdi-file-text"></i> <span>전적 조회</span>
				</a></li>
				<li><a href="voteBulletin.do"> <i
						class="zmdi zmdi-check-square"></i><span>투표하기</span>
				</a></li>
				<li><a href="matchAndSquad.jsp.do" target="_blank"> <i
						class="icon-settings mr-2"></i> <span>매치</span>
				</a></li>
				<c:choose>
					<c:when test="${manager=='1'}">
						<li><a href="findMatch.jsp"> <i
								class="zmdi zmdi-search-for"></i> <span>매치 찾기</span>
						</a></li>
						<li><a href="request.jsp" target="_blank"> <i
								class="zmdi zmdi-account-circle"></i> <span>가입신청 리스트</span>
						</a></li>
						<li><a href="makeVote.do"> <i
								class="zmdi zmdi-check-square"></i> <span>투표 만들기</span>
						</a></li>
						<li><a href="teamSetting.do" target="_blank"> <i
								class="icon-settings mr-2"></i> <span>팀 설정</span>
						</a></li>

					</c:when>
				</c:choose>
			</ul>
		</div>

		<!--End sidebar-wrapper-->

		<!--Start topbar header-->
		<header class="topbar-nav">
			<nav class="navbar navbar-expand fixed-top">
				<ul class="navbar-nav mr-auto align-items-center">
					<li class="nav-item"><a class="nav-link toggle-menu"
						href="javascript:void();"> <i class="icon-menu menu-icon"></i>
					</a></li>
					<li class="nav-item">
						<form class="search-bar">
							<input type="text" class="form-control"
								placeholder="Enter keywords"> <a
								href="javascript:void();"><i class="icon-magnifier"></i></a>
						</form>
					</li>
				</ul>

				<ul class="navbar-nav align-items-center right-nav-link">
					<li class="nav-item dropdown-lg"><a
						class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect"
						data-toggle="dropdown" href="javascript:void();"> <i
							class="fa fa-envelope-open-o"></i></a></li>
					<li class="nav-item dropdown-lg"><a
						class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect"
						data-toggle="dropdown" href="javascript:void();"> <i
							class="fa fa-bell-o"></i></a></li>
					<li class="nav-item"><a
						class="nav-link dropdown-toggle dropdown-toggle-nocaret"
						data-toggle="dropdown" href="#"> <span class="user-profile"><img
								src="https://via.placeholder.com/110x110" class="img-circle"
								alt="user avatar"></span>
					</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li class="dropdown-item user-details"><a
								href="javaScript:void();">
									<div class="media">
										<div class="avatar">
											<img class="align-self-start mr-3"
												src="https://via.placeholder.com/110x110" alt="user avatar">
										</div>
										<div class="media-body">
											<h6 class="mt-2 user-title">${uVo.name}</h6>
											<p class="user-subtitle">${uVo.email}</p>
										</div>
									</div>
							</a></li>
							<li class="dropdown-divider"></li>
							<li class="dropdown-item"><a href="logout.do"><i
									class="icon-power mr-2"></i>Logout</a></li>
						</ul></li>
				</ul>
			</nav>
		</header>
		<!--End topbar header-->

		<div class="clearfix"></div>

		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="mt-3">
					<div id='calendar'></div>
				</div>

				<!--start overlay-->
				<div class="overlay toggle-menu"></div>
				<!--end overlay-->

			</div>
			<!-- End container-fluid-->
		</div>
		<!--End content-wrapper-->
		<!--Start Back To Top Button-->
		<a href="javaScript:void();" class="back-to-top"><i
			class="fa fa-angle-double-up"></i> </a>
		<!--End Back To Top Button-->
		<!--Start footer-->
		<footer class="footer">
			<div class="container">
				<div class="text-center">Copyright © 2020 football together</div>
			</div>
		</footer>
		<!--End footer-->

	</div>
	<!--End wrapper-->
</body>
</html>
