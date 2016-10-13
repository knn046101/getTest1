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
	
	
	<jsp:include page="/layout/whatjs.jsp"></jsp:include>
	
</head>
<body>
		<jsp:include page="/layout/header.jsp"></jsp:include>
		<jsp:include page="/layout/whatcss.jsp"></jsp:include>
		<br>
		<br>
		
		<section class="clients">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4><span>내 주변에서는?</span></h4>
							<!--위치정보를 받아서 출력해주는 부분  -->
							<span class=" glyphicon glyphicon-map-marker"  id ="near">
								<select id="radius">
							    <option value="">범위 선택</option>
							    <option value="2000">2KM</option>
							    <option value="5000" selected="selected">5KM</option>
							    <option value="10000">10KM</option>
								</select>
							 </span>

						</div>
						
						<div class="our_clients">
							<ul class="client_items clearfix" id ="searchTour">
								
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
		$("#searchTour>li").remove();
		getData();
		
    });

	function getData(){
		$("#searchTour>li").remove();
		var locaxx = 126.981106;
		var locayy = 37.568477;
		/*  var myurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?";
			 myurl+="ServiceKey="+key+"&areaCode=35&MobileOS=ETC&MobileApp=AppTesting&_type=json";  */
		 var locaurl ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList?";
		 locaurl+="ServiceKey="+key+"&mapX="+locaX+"&mapY="+locaY+"&radius="+radius+"&pageNo=3&numOfRows=4&listYN=Y&arrange=P&MobileOS=ETC&MobileApp=AppTesting&_type=json"; 
	 
		$.ajax({
			url:locaurl,
			type:"get",
			success:function(responseTxt){
				 var itemArray=responseTxt.response.body.items.item;  
				/* var itemArray=responseTxt.response.body. */
				var row="";
				$.each(itemArray,function(index,item){
					var title = item.title;
					var tel = item.tel;
					var img = item.firstimage;
					var addr =item.addr1;
					contentid=item.contentid;
					 /*행을 추가하는 부분 (row+= 이 아닌 row=으로 하는 이유는 row+로 하면 계속 누적되지만 row=으로 하면 계속 초기화 되서 덮어씌워진다.)  */
					 row="<li class='col-s1m-3 col-md-3 col-lg-3'>"
							+"<a href=<%=request.getContextPath()%>/api/apiservice_info.jsp?contentid="
							+contentid+"&"
							+ "title="+title
							+"  data-toggle='tooltip'+title='"+title+"' style='color:#323A45;' >"
							+"<img src="+img+" alt='' width='200px' height='150px'/>"
							+"<div>"+title+"</div></a></li>";
					$('#searchTour').append(row);
				}); 
			},
			error:function(xhr,status,error){
				alert("fail:"+error);
			}
		})
	};
		
	$("#getdetail").on("click",function(){ 
		var detailurl ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?";
			 detailurl+="ServiceKey="+key+"&contentId=126508&defaultYN=Y&addrinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTesting&_type=json"; 

		$.ajax({
			url:detailurl,
			type:"get",
			success:function(responseTxt){
			//JSON 계층으로 접근하기
				var itemArray=responseTxt.response.body.items.item;
				var row="";
				$.each(itemArray, function(index, item){
					var title = itemArray.title;
					var tel = itemArray.tel;
					var img = itemArray.firstimage2;
					var homepage =itemArray.homepage;
					var overview = itemArray.overview;
					row+="<tr><td>"+title+"</td><td>"+tel+"</td><td><img src="+img+"></td><td>"+homepage+"</td><td>"+overview+"</td></tr>";
				}); 
				$("#info").html($("#info").html()+row);
				console.log(responseTxt);
			},
			error:function(xhr,status,error){
				alert("fail:"+error);
			}
		})
	}); 
</script>
</body>
</html>
