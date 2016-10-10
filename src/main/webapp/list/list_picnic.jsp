<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
<!-- CSS FILES -->
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="../css/fractionslider.css"/>
    <link rel="stylesheet" href="../css/style-fraction.css"/>

    <link rel="stylesheet" type="text/css" href="../css/switcher.css" media="screen" />
</head>
<body>
		<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br>
		<button style="float:right;background-color:#27AB99;color:white;border-color:#fff;" onclick="location='../board/board_write.jsp'">글작성 <i class="fa fa-pencil"></i></button>
		<br>
		<br>
	
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4">
						<!--Start recent work-->
		<section class="latest_work">
			<div class="container">
				<div class="row sub_content">
					<div class="carousel-intro">
						<div class="col-md-12">
							<div class="dividerHeading">
								<h4><span>나들이</span></h4>
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

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                            
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
 											<a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
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
                                          <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
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
                                           <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
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
                                           <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>
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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

                                            
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

                                             <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>


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
                                             <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>


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
                                              <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
                                             <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
                                             <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
                                            <a href="images/portfolio/full/portfolio_1.png" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>

                                            <a href="../board/board_info.jsp" class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
		<!--Start recent work-->
					</div>
				</div>
			</div>
		</div>
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>
	</div>


</body>
<script></script>
</html>