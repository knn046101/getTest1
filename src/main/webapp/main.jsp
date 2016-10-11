<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html class="no-js" lang="en"> 
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
</head>
<body>
		<jsp:include page="/layout/header.jsp"></jsp:include>
		<br>
		<br>
		<section class="clients">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4><span>내 주변에서는?</span></h4>

						</div>
						
						<div class="our_clients">
							<ul class="client_items clearfix">
								<li class="col-s1m-3 col-md-3 col-lg-3"><a href="/services.html"  data-placement="bottom" data-toggle="tooltip" title="Client 1" ><img src="images/clients/1.png" alt="" /></a></li>
								<li class="col-sm-3 col-md-3 col-lg-3"><a href="services.html" data-placement="bottom" data-toggle="tooltip" title="Client 2" ><img src="images/clients/2.png" alt="" /></a></li>
								<li class="col-sm-3 col-md-3 col-lg-3"><a href="services.html" data-placement="bottom" data-toggle="tooltip" title="Client 3" ><img src="images/clients/3.png" alt="" /></a></li>
								<li class="col-sm-3 col-md-3 col-lg-3"><a href="services.html" data-placement="bottom" data-toggle="tooltip" title="Client 4" ><img src="images/clients/4.png" alt="" /></a></li>
							</ul><!--/ .client_items-->
						</div>
					</div>
				</div>
			</div>
		</section>
	    <!--end wrapper-->
   
    
		<!--Start recent work-->
		<section class="latest_work">
			<div class="container">
				<div class="row sub_content">
					<div class="carousel-intro">
						<div class="col-md-12">
							<div class="dividerHeading">
								<h4><span>추천!꿀팁 Best</span></h4>
							</div>
							<div class="carousel-navi">
								<div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
								<div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                            
                                        </div>
                                        <figcaption class="item-description">
                                             <h5>제목</h5>
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

                                            <a href="images/portfolio/full/portfolio_2.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                            <a href="images/portfolio/full/portfolio_2.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                        </div>
                                        <figcaption class="item-description">
                                            <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_8.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                        </div>
                                        <figcaption class="item-description">
                                             <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_3.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                        </div>
                                        <figcaption class="item-description">
                                            <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_4.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                            <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                            <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_7.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                             <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_8.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                           	 <h5>제목</h5>
                                        </figcaption>
                                    </figure>
                                </div>
                            </li>
                        </ul>
					</div>
				</div>
			</div>
		</section>
		<!--Start recent work-->
		
		<!--Start recent work-->
		<section class="latest_work">
			<div class="container">
				<div class="row sub_content">
					<div class="carousel-intro">
						<div class="col-md-12">
							<div class="dividerHeading">
								<h4><span>에디터게시글 Best</span></h4>
							</div>
							<div class="carousel-navi">
								<div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
								<div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                           	 <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_2.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                             <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_8.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                         	 <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_3.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                             <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_4.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                          	 <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                            <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_7.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                             <h5>제목</h5>
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
                                            <a href="images/portfolio/full/portfolio_8.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                            <a href="board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
                                        </div>
                                        <figcaption class="item-description">
                                            <h5>제목</h5>
                                        </figcaption>
                                    </figure>
                                </div>
                            </li>
                        </ul>
					</div>
				</div>
			</div>
		</section>
		<!--Start recent work-->
		
		
		

  

    <jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>


