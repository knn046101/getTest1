<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS FILES -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

<link rel="stylesheet" href="css/fractionslider.css" />
<link rel="stylesheet" href="css/style-fraction.css" />

<link rel="stylesheet" type="text/css" href="css/switcher.css"
	media="screen" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/plugins/canvas-to-blob.js"></script>
<script src="js/fileinput.js"></script>
<!-- MetisMenu CSS -->
<link href="css/metisMenu/metisMenu.min.css" rel="stylesheet">
<style>
a {
	color: #27AB99;
}
</style>
</head>
<body>
	<jsp:include page="/layout/header.jsp"></jsp:include>

	<br>
	<br>

	<div class="container-fluid">
		<div class="row sub_content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="dividerHeading">
					<h4>
						<span>모아보기</span>
					</h4>

				</div>
			</div>
		</div>
		<section class="wrapper">
			<section class="content left_sidebar">
				<div class="container">
					<div class="row">
						<!--Sidebar Widget-->
						<div class="col-lg-3">
							<div class="sidebar">
								<div class="widget widget_categories">
									<ul class="arrows_list sidenav">
										<li><img src="../images/ma.png" class="img-circle"
											width="150" height="150"> <br>
										</li>
										<h4 align="left">
											${login.nickname}
											 <span class="label label-default"
												style="background-color: grey">일반회원</span>
										</h4>
										<div></div>
										<div class="widget_title">
											<h4>
												<span>마이페이지</span>
											</h4>
										</div>
										<c:url value="/mypageUpdate" var="mypageUpdate"/>
										<li><a href="${mypageUpdate }">
										<i class="fa fa-angle-right"></i>정보수정</a></li>
										<li><a href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
										<i class="fa fa-angle-right"></i> 내글</a></li>
										<li><a href="<%=request.getContextPath()%>/mypage/mypage_favorite.jsp">
										<i class="fa fa-angle-right"></i> 관심사</a></li>
										<li><a href="<%=request.getContextPath()%>/mypage/mypage_scrap.jsp">
										<i class="fa fa-angle-right"></i> 스크랩</a></li>
										<li><a href="<%=request.getContextPath()%>/mypage/mypage_meeting.jsp">
										<i class="fa fa-angle-right"></i> 모임</a></li>

									</ul>
								</div>


							</div>
						</div>
						<div class="col-lg-6 "></div>
						<div class="col-lg-9 ">
							<div class="col-sm-2 text-center">
								<h3>
									<a href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">내글</a>
								</h3>
							</div>
							<ul class="jcarousel-list">
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
							</ul>
						</div>
						<div class="col-lg-9 ">
							<div class="col-sm-2 text-center">
								<h3>
									<a href="<%=request.getContextPath()%>/mypage/mypage_favorite.jsp">관심사</a>
								</h3>
							</div>
							<br>
							<ul class="jcarousel-list">
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
							</ul>
						</div>
						<div class="col-lg-9 ">
							<div class="col-sm-2 text-center">
								<h3>
									<a href="<%=request.getContextPath()%>/mypage/mypage_scrap.jsp">스크랩</a>
								</h3>
							</div>
							<br>
							<ul class="jcarousel-list">
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
								<li class="col-sm-3 col-md-3 col-lg-3">
									<div class="recent-item">
										<figure>
											<div class="touching medium">
												<img src="images/portfolio/portfolio_5.png" alt="" />
											</div>
											<div class="option">
												<a href="images/portfolio/full/portfolio_1.png"
													class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
												<a href="board/board_info.jsp" class="hover-link"><i
													class="fa fa-arrow-right"></i></a>
											</div>
											<figcaption class="item-description"></figcaption>
										</figure>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

			</section>
		</section>
	</div>






	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script></script>
</html>