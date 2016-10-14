<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
</head>
<body>
	
	<div class="container-fluid">
		<div class="row">
		
			<jsp:include page="/layout/header.jsp"></jsp:include>
		
		</div>
	
		<div class="container row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4" style="text-align:center;">
					<section class="content portfolio_single">
						<div class="container">
							<div class="row sub_content">
								<div class="col-lg-8 col-md-8 col-sm-8">
								<!--Project Details Page-->
									<figure class="post_img">
										<a href="#">
											<img src="images/blog/blog_1.png" alt="blog post">
										</a>
									</figure>
									<div class="post_content">
										<br>
									 	<p>Vidit nulla errem ea mea. Dolore apeirian insolens mea ut, indoctum consequuntur hasi. No aeque dictas dissenti as tusu, sumo quodsi fuisset mea in. Ea nobis populo interesset cum, ne sit quis elit officiis, min im tempor iracundia sit anet. Facer falli aliquam nec te. In eirmod utamur offendit vis, posidonium instructior sed te.</p>
									
									</div>
									
								</div>
					
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="project_details">
							<div class="widget_title">
								<h3><span>신전 1차 정모</span></h3>
							</div>
							<ul class="details">
								<li><span>작성자 :</span>현정</li>
								<li><span>작성일 :</span>2016-10-06</li>
								<li><span>장소 :</span>두정 먹자 신전</li>
							</ul>
							
						</div>
					</div>
				</div>
						
						<!--News Comments-->
                        <div class="container news_comments">
                            <div class="dividerHeading">
                                <h4><span>댓글</span></h4>
                            </div>
                            <div id="comment">
                                <ul id="comment-list">
                                    <li class="comment">
                                        
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">John Smith</a></span></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">2014-02-22</a></div>
                                            <div class="comment-body">
                                                <p>잘보고갑니다~</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="comment">
                                       
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">Eva Smith</a></span></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">2014-03-27</a></div>
                                            <div class="comment-body">
                                                <p>222</p>
                                            </div>
                                        </div>
                                        <ul class="children">
                                            <li class="comment">
                                               
                                                <div class="comment-container">
                                                	
                                                    <h4 class="comment-author"><a href="#"><i class="fa fa-hand-o-right"></i> Thomas Smith</a></span></h4>
                                                    <div class="comment-meta"><a href="#" class="comment-date link-style1">2015-11-20</a></div>
                                                    <div class="comment-body">
                                                        <p>33 퍼갑니다</p>
                                                    </div>
                                                </div>
                                                <ul class="children">
                                                    <li class="comment">
                                                       
                                                        <div class="comment-container">
                                                            <h4 class="comment-author"><a href="#"><i class="fa fa-hand-o-right"></i> Eva Smith</a></span></h4>
                                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">2016-10-07</a></div>
                                                            <div class="comment-body">
                                                                <p>인생...</p>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </div>
                            <!-- /#comments -->
                            <div class="dividerHeading">
                                <h4><span>댓글작성</span></h4>
                                </div>

                            <div class="comment_form">
                               <div class="row">
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="name" type="text" id="name" size="30"  onfocus="if(this.value == 'Name') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Name'; }" value="" placeholder="작성자" >
                                   </div>
                                   
                                   
                               </div>
                            </div>
                            <div class="comment-box row">
                                <div class="col-sm-12">
                                    <p>
                                        <textarea name="comments" class="form-control" rows="6" cols="40" id="comments" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="댓글내용"></textarea>
                                    </p>
                                </div>
                            </div>

                            <a class="btn btn-lg btn-default" href="#">댓글등록</a>
                        </div>
				    </div>

					
				</div><!--/.row-->
			</div> <!--/.container-->
		
		

	<!--end wrapper-->
				</div>
				
				
			</div>
		</div>
	
	</section>
	<div class="row">
		
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		
	</div>
	
</body>
<script></script>
</html>