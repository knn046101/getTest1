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
	
	<jsp:include page="/layout/whatcss.jsp"></jsp:include>
	<jsp:include page="/layout/whatjs.jsp"></jsp:include>
	
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
							<!--위치정보를 받아서 출력해주는 부분  -->
							<span class=" glyphicon glyphicon-map-marker"  id ="near"> </span>

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
    
   <!-- open Api 구글이랑 TourApi 적용 부분 건드리지 마시오 -->
   
        <script>
var googlekey ="AIzaSyB7jJk6mzm9sXtP2N0DIhz-P5JTZAaONXY";


		
 var key ="JSsZ5Smoa%2BwtJchJy5D5EB9SDU5LGZPuK4285EAR7%2F5wisjKDOJkAFSTyHuY0n4uXOHtfemrXCstsw9AFbI7Nw%3D%3D" ;

var locaX;
var locaY;
var contentid;

String.prototype.trim = function() {
    return this.replace(/(^\s*)|(\s*$)/gi, "");
}

	
	
	$(document).ready(function() {
		
		if (navigator.geolocation) {
	        navigator.geolocation.getCurrentPosition(showPosition);
	      
	    } else { 
	       console.log("지원 않함");
	    }

		function showPosition(position) {
			locaX = position.coords.longitude;
			locaY =position.coords.latitude; 
			
			console.log(locaX+"안에");
			console.log(locaY+"안에");
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
				console.log("long:"+ locaX);
				console.log("lat:"+ locaY);
				//JSON 계층으로 접근하기
			
				console.log(responseTxt);
				  var resultsArray=responseTxt.results[4].formatted_address; 
				  
				  console.log(resultsArray);
				 
				 var re = resultsArray.replace(/ /gi,",");
			
				 
				 var splitArray = re.split(",");
				 
				 console.log(splitArray[1]+"  "+"  행정구역 도");
				 console.log(splitArray[2]+"   "+"  행정도시");
				 
				 
				var strdo=  splitArray[1];
				var strcity = splitArray[2];
				

				/* myloca+="<a href='#'>"+strdo+" "+strcity+"</a>"; */
				myloca+=strdo+" "+strcity;
			
			$("#near").append(myloca);
			
			
				
		
			},
			
			error:function(xhr,status,error){
				alert("fail:"+error);
			}

		})
		
	};
	
	
	
	
	


$("#getData").on("click",function(){
	
	
	console.log(locaX+"넘김");
	console.log(locaY+"넘김");
	
	
	
	
	/*  var myurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?";
		 myurl+="ServiceKey="+key+"&areaCode=35&MobileOS=ETC&MobileApp=AppTesting&_type=json";  */

	  var locaurl ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList?";
	 locaurl+="ServiceKey="+key+"&mapX="+locaX+"&mapY="+locaY+"&radius=1000&pageNo=1&numOfRows=10&listYN=Y&arrange=A&MobileOS=ETC&MobileApp=AppTesting&_type=json"; 

	 
	 
	 
$.ajax({
	

	url:locaurl,
	type:"get",
	success:function(responseTxt){
		//JSON 계층으로 접근하기
	console.log(locaX+"ajax");
		console.log(locaY+"ajax");
		console.log(responseTxt);
		 var itemArray=responseTxt.response.body.items.item;  
		/* var itemArray=responseTxt.response.body. */
		var row="";
		$.each(itemArray,function(index,item){
		
			var title = item.title;
			var tel = item.tel;
			var img = item.firstimage;
			var addr =item.addr1;
			contentid=item.contentid;
			row+="<tr><td>"+title+"</td><td>"+tel+"</td><td><img src="+img+"></td><td>"+addr+"</td><td>"+contentid+"</td></tr>";
			
			
		console.log(title,tel,img,addr);	
		
		}); 
		$("#info").html($("#info").html()+row);
		
		console.log(responseTxt);
	},
	
	error:function(xhr,status,error){
		alert("fail:"+error);
	}

})


});






  $("#getdetail").on("click",function(){ 
	

	
	
	   var detailurl ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?";
		 detailurl+="ServiceKey="+key+"&contentId=126508&defaultYN=Y&addrinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTesting&_type=json"; 


$.ajax({
	

	url:detailurl,
	type:"get",
	success:function(responseTxt){
		//JSON 계층으로 접근하기

		console.log(responseTxt);
		 var itemArray=responseTxt.response.body.items.item;
		 console.log("itemArray:"+itemArray);
	
		var row="";
		$.each(itemArray, function(index, item){
			console.log("item : "+itemArray);
			var title = itemArray.title;
			var tel = itemArray.tel;
			var img = itemArray.firstimage2;
			var homepage =itemArray.homepage;
			var overview = itemArray.overview;
			row+="<tr><td>"+title+"</td><td>"+tel+"</td><td><img src="+img+"></td><td>"+homepage+"</td><td>"+overview+"</td></tr>";
			
			
		console.log(" 내용 : "+ title,tel,img,homepage,overview);	
		
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


