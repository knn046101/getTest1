<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
	<jsp:include page="/layout/whatcss.jsp"></jsp:include>
	<jsp:include page="/layout/whatjs.jsp"></jsp:include>
</head>
<body>
	
	
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br>
		<br>
	
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="dividerHeading">
						<h4><span><a href="adminpage_board.jsp" style="color:#27AB99;"><i class="fa fa-chevron-circle-left"></i></a>&nbsp;&nbsp;관리자 계정 (회원관리)</span></h4>
					</div>
					<label class="col-sm-3 control-label"></label>
					 <div class="col-sm-6">
					 <center>
          			  <div>
							<input class="input-text" name="s" id="search" type="text" placeholder="사용자 ID 검색"/>
							<button style="background-color:#27AB99;color:#fff;border-style: none;"><i class="fa fa-search"></i></button>
										</div>
               		</div>
               		</center>
               		<br>
               		<br>
               		<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
               
                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a data-toggle="tab" href="#Popular">일반회원</a></li>
                    <li class=""><a data-toggle="tab" href="#Recent">에디터</a></li>
                   
                </ul>

                <div class="tab-content clearfix" id="myTabContent">
                    <div id="Popular" class="tab-pane fade active in">
                        <ul class="recent_tab_list">
                            <li>
                                 <div class="testimonial-review">
                                    <img alt="testimoni" src="images/testimonials/1.png">
                                    <h1>YoungKingBoss</h1><br>
                                   	<h4><button>에디터로 변경</button></h4>
                                </div>
                            </li>
                            <li>
                                 <div class="testimonial-review">
                                    <img alt="testimoni" src="images/testimonials/1.png">
                                    <h1>코천종연</h1>
                                </div>
                            </li>
                            <li class="last">
                                 <div class="testimonial-review">
                                    <img alt="testimoni" src="images/testimonials/1.png">
                                    <h1>경으니</h1>
                                </div>
                            </li>
                        </ul>
                        
                    </div>
                    <div id="Recent" class="tab-pane fade">
                        <ul class="recent_tab_list">
                            <li>
                                <div class="testimonial-review">
                                    <img alt="testimoni" src="images/testimonials/1.png">
                                    <h1>YoungKingBoss</h1>
                                </div>
                            </li>
                            <li>
                                 <div class="testimonial-review">
                                    <img alt="testimoni" src="images/testimonials/1.png">
                                    <h1>현정찡</h1>
                                </div>
                            </li>
                            <li class="last">
                                 <div class="testimonial-review">
                                    <img alt="testimoni" src="images/testimonials/1.png">
                                    <h1>뿡기님</h1>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
              

                
            </div><!-- TESTIMONIALS END -->
        </div> <!--./row-->
				</div>
			</div>
		</div>
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>
	</div>


	

</body>

<script>

</script>
</html>