<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<jsp:include page="/layout/whatcss.jsp"></jsp:include>
<jsp:include page="/layout/whatjs.jsp"></jsp:include>

<style>
.errormsg {
	color: red;
}

.carousel-control {
	padding-top: 10%;
	width: 5%;
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
						<span>관심사</span>
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
											alt="Cinque Terre" width="150" height="150"> <br>
										</li>
										<h4 align="left">

											마동석 <span class="label label-default"
												style="background-color: grey">일반회원</span>
										</h4>

										<div class="widget_title">
											<h4>
												<span>마이페이지</span>
											</h4>
										</div>
										<c:url value="/mypageUpdate" var="mypageUpdate" />
										<li style="margin-left: 10px"><a href="${mypageUpdate }">
												정보수정</a></li>
										<li style="margin-left: 10px"><a
											href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
												내글</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_favorite.jsp">
												<i class="fa fa-angle-right"></i>관심사
										</a></li>
										<li style="margin-left: 10px"><a
											href="<%=request.getContextPath()%>/mypage/mypage_scrap.jsp">
												스크랩</a></li>
										<li style="margin-left: 10px"><a
											href="<%=request.getContextPath()%>/mypage/mypage_meeting.jsp">
												모임</a></li>

									</ul>
								</div>
							</div>

						</div>

						<div class="col-lg-9 ">
							<div class="row sub_content">
								<div class="carousel-intro">
									<div class="col-md-12">
										<div class="carousel-navi">
											<div id="work-prev" class="arrow-left jcarousel-prev">
												<i class="fa fa-angle-left"></i>
											</div>
											<div id="work-next" class="arrow-right jcarousel-next">
												<i class="fa fa-angle-right"></i>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>

								<div class="jcarousel recent-work-jc">
									<ul class="jcarousel-list">
										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_1.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>


													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>
													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_2.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_3.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_4.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_5.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>
													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_5.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>
													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_2.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>
													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_3.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>
													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>
									</ul>

								</div>
								<br>
								<div class="jcarousel recent-work-jc">
									<ul class="jcarousel-list">
										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_1.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>


													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_2.png" alt="" />
													</div>
													<div class="option">

														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>


													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_3.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>


													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_4.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_5.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_5.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_2.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
												</figure>
											</div>
										</li>

										<!-- Recent Work Item -->
										<li class="col-sm-3 col-md-3 col-lg-3">
											<div class="recent-item">
												<figure>
													<div class="touching medium">
														<img src="images/portfolio/portfolio_3.png" alt="" />
													</div>
													<div class="option">
														<a href="images/portfolio/full/portfolio_1.png"
															class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

														<a href="../board/board_info.jsp" class="hover-link"><i
															class="fa fa-arrow-right"></i></a>

													</div>
													<figcaption class="item-description">
														<h5>Touch and Swipe</h5>

													</figcaption>
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
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script
	src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>

<script src="../js/index.js"></script>

<script>
	$(document).ready(function() {
		$('#myCarousel').carousel({
			interval : 10000
		})

		$('#myCarousel').on('slid.bs.carousel', function() {
			//alert("slid");
		});

	});
</script>
</html>