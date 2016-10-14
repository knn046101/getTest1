<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>뭐 하 지 ?</title>
<meta name="description" content="">

<jsp:include page="/layout/whatcss.jsp"></jsp:include>
<jsp:include page="/layout/whatjs.jsp"></jsp:include>
<link rel="stylesheet" href="css/bootstrapCarousel.css" />


</head>
<body>


	<jsp:include page="/layout/header.jsp"></jsp:include>


	<!--Start recent work-->
<jsp:include page="/api/slider.jsp"></jsp:include>



		
		<section class="clients">
			<div class="container">
				<div class="row sub_content">
				<div class="carousel-intro">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4><span>내 주변에서는?</span></h4>
							
							<span class=" glyphicon glyphicon-map-marker"  id ="near">
								<select id="radius">
							    <option value="">범위 선택</option>
							    <option value="2000">2KM</option>
							    <option value="5000" selected="selected">5KM</option>
							    <option value="10000">10KM</option>
								</select>
							 </span>
						</div>
							 	
							 	
							 	
						<!-- 위치 내용 시작  --> 	
				<!-- 	<div class="clearfix"></div>						
						<div class="">
							<ul class="" id ="searchTour">
							내용이 append 될 자리 
							</ul>
					
						</div>			
					</div>
				</div>
			</div>
			</div>
			 -->
			 
			 <!--추가  -->
 <div id="myCarousel" class="row carousel slide" data-ride="carousel">

    <!-- Wrapper for slides -->
    <div class="carousel-inner" id="carouseltotal" >

      <div class="item active">
        
        <ul class="thumbnails" id ="searchTour1">
          
        </ul>
      </div> <!-- /Slide1 --> 


      <div class="item">
        <ul class="thumbnails" id = "searchTour2">
          
    
          
        </ul>
      </div><!-- /Slide2 --> 


      <div class="item">
        <ul class="thumbnails" id = "searchTour3">
         
     
        </ul>
      </div><!-- /Slide3 --> 



    </div><!-- /Wrapper for slides .carousel-inner -->



    <!-- Control box -->
    <div class="control-box">                            
      <a data-slide="prev" href="#myCarousel" class="carousel-control left">‹</a>
      <a data-slide="next" href="#myCarousel" class="carousel-control right">›</a>
    </div><!-- /.control-box -->   



  </div><!-- /#myCarousel -->


</div><!-- /.col-sm-12 -->          
</div><!-- /.row --> 
</div><!-- /.container -->
</div>

                            

			 <!--추가 시범  -->
			
										
		</section> 
	<!--end wrapper-->

	 
	


	<!--Start recent work-->
	<section class="latest_work">
		<div class="container">
			<div class="row sub_content">
				<div class="carousel-intro">
					<div class="col-md-12">
						<div class="dividerHeading">
							<h4>
								<span>추천!꿀팁 Best</span>
							</h4>
						</div>
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
									<div class="touching medium" >
									<a></a>
										<img src="images/portfolio/portfolio_1.png" />
									</div>
									
									<div class="option">
										<!-- 여기가 호버됬을때 링크생기는부분 -->
										<a href="board/board_info.jsp" class="hover-link">
										<i	class="fa fa-arrow-right"></i></a>

									</div>
									<figcaption class="item-description">
										<h5 id="hovertitle">호버제목</h5>
									</figcaption>
									</figure>
								
							</div>
							<div><p>리얼제목</p></div>
						</li>


<%-- 
<a href=<%=request.getContextPath()%>/api/apiservice_info.jsp?contentid= "contentid" &title="title"  data-toggle='tooltip'+title='title'  class='hover-link' >"                 
                 		+"<i class='fa fa-arrow-right'></i></a>" --%>

						<!-- Recent Work Item -->
						<li class="col-sm-3 col-md-3 col-lg-3">
							<div class="recent-item">
								<figure>
									<div class="touching medium">
										<img src="images/portfolio/portfolio_2.png" alt="" />
									</div>
									<div class="option">

										<a href="images/portfolio/full/portfolio_2.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a> <a
											href="images/portfolio/full/portfolio_2.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>

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
										<a href="images/portfolio/full/portfolio_8.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>

										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a> <a href="board/board_info.jsp"
											class="hover-link"><i class="fa fa-arrow-right"></i></a>

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
										<a href="images/portfolio/full/portfolio_3.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a> <a href="board/board_info.jsp"
											class="hover-link"><i class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_4.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_1.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_7.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_8.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
							<h4>
								<span>에디터게시글 Best</span>
							</h4>
						</div>
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
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_2.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_8.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_3.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_4.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_1.png"
											class="hover-zoom mfp-image">
									<i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_7.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
										<a href="images/portfolio/full/portfolio_8.png"
											class="hover-zoom mfp-image"><i class="fa fa-search"></i></a>
										<a href="board/board_info.jsp" class="hover-link"><i
											class="fa fa-arrow-right"></i></a>
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
	<br>
	<br>

	<jsp:include page="/layout/footer.jsp"></jsp:include>

	<!-- open Api 구글이랑 TourApi 적용 부분 건드리지 마시오 -->

	<script>
var googlekey ="AIzaSyB7jJk6mzm9sXtP2N0DIhz-P5JTZAaONXY";
var key ="JSsZ5Smoa%2BwtJchJy5D5EB9SDU5LGZPuK4285EAR7%2F5wisjKDOJkAFSTyHuY0n4uXOHtfemrXCstsw9AFbI7Nw%3D%3D" ;

var radius; 
var locaX;
var locaY;
var contentid;

	/*공백을 제거하는 부분 */
	String.prototype.trim = function() {
	    return this.replace(/(^\s*)|(\s*$)/gi, "");
	}
	
	$(document).ready(function() {
		if (navigator.geolocation) {
	        navigator.geolocation.getCurrentPosition(showPosition);
	    } else { 
	       console.log("브라우저가 지원을 안합니다.");
	    }
		function showPosition(position) {
			locaX = position.coords.longitude;
			locaY =position.coords.latitude; 
			radius = $('#radius').val(); 
			getgeo();
		}
	});
	
	function getgeo(){
		var geokey="https://maps.googleapis.com/maps/api/geocode/json?";
		geokey+="latlng="+locaY+","+locaX+"&key="+googlekey;
		var myloca="";
		$.ajax({
			url:geokey,
			type:"get",
			success:function(responseTxt){
				//JSON 계층으로 접근하기
				var resultsArray=responseTxt.results[4].formatted_address; 
				var re = resultsArray.replace(/ /gi,",");
				var splitArray = re.split(",");
				var strdo=  splitArray[1];
				var strcity = splitArray[2];

				myloca+=strdo+" "+strcity;
				$("#near").append(myloca);
				getData();
			},
			error:function(xhr,status,error){
				alert("fail:"+error);
			}
		})
	};
	
	/* 범위에 따라 주변 검색*/
	$('#radius').change(function(){ 
		radius =$('#radius option:selected').val() ; 
		console.log(radius+"   "+"정상적으로 값이 변했음 radius");
		$("#searchTour1>li").remove();
		$("#searchTour2>li").remove();
		$("#searchTour3>li").remove();
		getData();
		
    });
	
	
	
	 function intervalstop() {
		    $('.carousel').carousel({
		      interval: false
		      
		      
		    });
		    console.log("인터벌 스톱 호출됨");
		  };

	function getData(){
		$("#searchTour1>li").remove();
		$("#searchTour2>li").remove();
		$("#searchTour3>li").remove();
		var locaxx = 126.981106;
		var locayy = 37.568477;
		/*  var myurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?";
			 myurl+="ServiceKey="+key+"&areaCode=35&MobileOS=ETC&MobileApp=AppTesting&_type=json";  */
		 var locaurl ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList?";
		 locaurl+="ServiceKey="+key+"&mapX="+locaX+"&mapY="+locaY+"&radius="+radius+"&pageNo=1&numOfRows=12&listYN=Y&arrange=P&MobileOS=ETC&MobileApp=AppTesting&_type=json"; 
	 
		$.ajax({
			url:locaurl,
			type:"get",
			success:function(responseTxt){
				
				/*구분자  */
				
				var itemArray=responseTxt.response.body.items.item;  
				
				var row="";
				var htmlText="";
				$.each(itemArray,function(index,item){
					
					var title = item.title;
					var tel = item.tel;
					var img=item.firstimage;
					
					if(title==undefined){
						console.log(title+"타이틀 없음");
						intervalstop();
						
					}

					if(img==undefined){
						console.log(img);
						img="<%=request.getContextPath()%>/images/logo.png";
						
					} 
					
					/* 타이틀이 없으면 바로 멈추게 할것 
					$('#carouseltotal').attr("class","row carousel");
					 console.log("클래스가 바뀜");
	*/
					var addr =item.addr1;
					contentid=item.contentid;
					 /*행을 추가하는 부분 (row+= 이 아닌 row=으로 하는 이유는 row+로 하면 계속 누적되지만 row=으로 하면 계속 초기화 되서 덮어씌워진다.)  */

							
					
																								
								rowtest ="<li class='col-sm-3'>"
										        +"<div class='thumbnail'>"
										         +  "<a href=<%=request.getContextPath()%>"
	                                                +"/api/apiservice_info.jsp?contentid="
													+ contentid
													+ "&"
													+ "title="
													+ title
													+ "  data-toggle='tooltip'+title='"
													+title
													+ "' >"
													+ "<img src="+img+" alt='' width='300px' height='240px'/>"+"</a></div>"
										            +"<div class='caption-box'>"
										            + "<a href=<%=request.getContextPath()%>"
	                                                +"/api/apiservice_info.jsp?contentid="
													+ contentid
													+ "&"
													+ "title='"+title+"'>"												
										            +"<h4>"+title+"</h4></a></div></li>";     
										              														      									  		  									  		      										  		  
										            
										            if(0<=index&&index<4){
										            	if(title!=undefined){
										            		console.log("첫번째 인덱스:"+index);
											            	console.log("첫번째아이템이름:"+title);
											            	$('#searchTour1').append(rowtest);
											            	
										            	}
										            	else{
										            		
										            		return false;
										            	}
										            
										            }
										            
										            
										            
										            else if(4<=index&&index<8){
										            	if(title!=undefined){
										            		console.log("두번째 인덱스:"+index);
											            	console.log("두번째아이템이름:"+title);
											            	$('#searchTour2').append(rowtest);
										            	}
										            	else{
										            		
										            		return false;
										            	}
										            	
										            	
										            	
										            }
										            else if(8<=index&&index<12){
										            	if(title!=undefined){
										            		console.log("세번째 인덱스:"+index);
											            	console.log("세번째아이템이름:"+title);
											            	$('#searchTour3').append(rowtest);
											            	}
										            	}else{
										            		
										            		return false;
										            	}
										            	
										            	
										            
				}); 
			},
			error:function(xhr,status,error){
				alert("fail:"+error);
			}
		})
	};

	</script>
</body>
</html>
