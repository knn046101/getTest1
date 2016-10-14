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



<link rel="stylesheet" href="css/bootstrapCarousel.css" />

</head>
<body>


	<jsp:include page="/layout/header.jsp"></jsp:include>


	<!--Start recent work-->
<jsp:include page="/api/slider.jsp"></jsp:include>



		
		<br>
		<section class="latest_work">
		<br>
	
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
							 </div>
							 
							 	
							 	
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


</div>          
</div><!-- /.col-sm-12 -->
</div><!-- /.row --> 

                            

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
						
						
	<div id="myCarousel1" class="row carousel slide" data-ride="carousel">

    <!-- Wrapper for slides -->
    <div class="carousel-inner" id="carouseltotal" >

      <div class="item active">
        
        <ul class="thumbnails" id ="BestTip1">
          
        </ul>
      </div> <!-- /Slide1 --> 


      <div class="item">
        <ul class="thumbnails" id = "BestTip2">
          
    
          
        </ul>
      </div><!-- /Slide2 --> 


      <div class="item">
        <ul class="thumbnails" id = "BestTip3">
         
     
        </ul>
      </div><!-- /Slide3 --> 



    </div><!-- /Wrapper for slides .carousel-inner -->



    <!-- Control box -->
    <div class="control-box">                            
      <a data-slide="prev" href="#myCarousel1" class="carousel-control left">‹</a>
      <a data-slide="next" href="#myCarousel1" class="carousel-control right">›</a>
    </div><!-- /.control-box -->   



  </div><!-- /#myCarousel -->


</div>          
</div><!-- /.col-sm-12 -->
</div><!-- /.row --> 
</div><!-- /.container -->
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
						
	<div id="myCarousel2" class="row carousel slide" data-ride="carousel">

    <!-- Wrapper for slides -->
    <div class="carousel-inner" id="carouseltotal" >

      <div class="item active">
        
        <ul class="thumbnails" id ="EditerBest1">
          
        </ul>
      </div> <!-- /Slide1 --> 


      <div class="item">
        <ul class="thumbnails" id = "EditerBest2">
          
    
          
        </ul>
      </div><!-- /Slide2 --> 


      <div class="item">
        <ul class="thumbnails" id = "EditerBest3">
         
     
        </ul>
      </div><!-- /Slide3 --> 



    </div><!-- /Wrapper for slides .carousel-inner -->



    <!-- Control box -->
    <div class="control-box">                            
      <a data-slide="prev" href="#myCarousel2" class="carousel-control left">‹</a>
      <a data-slide="next" href="#myCarousel2" class="carousel-control right">›</a>
    </div><!-- /.control-box -->   



  </div><!-- /#myCarousel -->


</div>          
</div><!-- /.col-sm-12 -->
</div><!-- /.row --> 
</div><!-- /.container -->
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
var random;


	/*공백을 제거하는 부분 */
	String.prototype.trim = function() {
	    return this.replace(/(^\s*)|(\s*$)/gi, "");
	}
	
	
	function generateRandom(min, max) {
		   var ranNum = Math.floor(Math.random()*(max-min+1)) + min;
		      return ranNum;
		   }	
	
	$(document).ready(function() {
		getBoardBestData();	
		
		if (navigator.geolocation) {
	        navigator.geolocation.getCurrentPosition(showPosition);
	    } else { 
	       console.log("브라우저가 지원을 안합니다.");
	    }
		function showPosition(position) {
			
			random = generateRandom(1, 3);
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
				getDataApi();
				
			},
			error:function(xhr,status,error){
				alert("fail:"+error);
			}
		})
	};
	
	/* 범위에 따라 주변 검색*/
	$('#radius').change(function(){ 
		radius =$('#radius option:selected').val() ; 
		$("#searchTour1>li").remove();
		$("#searchTour2>li").remove();
		$("#searchTour3>li").remove();
		getDataApi();
		
    });
	
	
	
	

	   




function getDataApi(){
		$("#searchTour1>li").remove();
		$("#searchTour2>li").remove();
		$("#searchTour3>li").remove();

		/*  var myurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?";
			 myurl+="ServiceKey="+key+"&areaCode=35&MobileOS=ETC&MobileApp=AppTesting&_type=json";  */
		 var locaurl ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList?";
		 locaurl+="ServiceKey="+key+"&mapX="+locaX+"&mapY="+locaY+"&radius="+radius+"&pageNo="+random+"&numOfRows=12&listYN=Y&arrange=P&MobileOS=ETC&MobileApp=AppTesting&_type=json"; 
	 
		$.ajax({
			url:locaurl,
			type:"get",
			success:function(responseTxt){
				
				/*구분자  */
					
				var itemArray=responseTxt.response.body.items.item;  
				
				if(length==undefined){
					var none ="<h1> 주변에 아무것도 없습니다<br>-한국관광공사-<h1>";
					$('searchTour1').append(none);
						
					}
				var row="";
				
				$.each(itemArray,function(index,item){
						
					var title = item.title;
					var tel = item.tel;
					var img=item.firstimage;

					
					
					/*타이틀을 받아오는지 확인 하는 부분  */
					if(title==undefined){
						/* console.log(title+"타이틀 없음"); */
						
					}
/*이미지값이 정의되지 않아 받아올수 없을때 기본 이미지를 띄워주는 부분  */
					if(img==undefined){
						/* console.log(img); */
						img="<%=request.getContextPath()%>/images/logo.png";
						
					} 
					
					 if (itemArray.length<5){
						 $('#carouseltotal').attr("class","row carousel");
						 /* console.log("클래스를 바꿔서 인터벌을 중지함"); */
			          }
					 else{
			        	  $('#carouseltotal').attr("class","carousel-inner");
			          }
					
					
					
	
					var addr =item.addr1;
					contentid=item.contentid;
					
					
					
					/*행을 추가하는 부분 (row+= 이 아닌 row=으로 하는 이유는 row+로 하면 계속 누적되지만 row=으로 하면 계속 초기화 되서 덮어씌워진다.)  */
																							
								row ="<li class='col-sm-3'>"
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
													+ "<img src="+img+" alt='' width='300px' height='120px' class ='imgresize'/>"+"</a></div>"
										            +"<div class='caption-box'>"
										            + "<a href=<%=request.getContextPath()%>"
	                                                +"/api/apiservice_info.jsp?contentid="
													+ contentid
													+ "&"
													+ "title='"+title+"'>"												
										            +"<h4>"+title+"</h4></a></div></li>";     
										              														      									  		  									  		      										  		  
										         
										            if(0<=index&&index<4){
										            	if(title!=undefined){
										            		/* console.log("첫번째 인덱스:"+index);
											            	console.log("첫번째아이템이름:"+title); */
											            	$('#searchTour1').append(row);
											            	
										            	}
										            	else{
										            		
										            		return false;
										            	}
										            
										            }
										            
										            
										            
										            else if(4<=index&&index<8){
										            	if(title!=undefined){
										            		/* console.log("두번째 인덱스:"+index);
											            	console.log("두번째아이템이름:"+title); */
											            	$('#searchTour2').append(row);
										            	}
										            	else{
										            		
										            		return false;
										            	}
										            	
										            	
										            	
										            }
										            else if(8<=index&&index<12){
										            	if(title!=undefined){
										            		/* console.log("세번째 인덱스:"+index);
											            	console.log("세번째아이템이름:"+title); */
											            	$('#searchTour3').append(row);
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
	
	
	/*추천 꿀팁  */
	
	
<c:url value="/getGoodBestBoards" var="getGoodBestBoards"/>
	function getBoardBestData(){
		/* $("#searchTour1>li").remove();
		$("#searchTour2>li").remove();
		$("#searchTour3>li").remove(); */
 /* 1. 처음 문서가 로딩될때 함수가 호출된다  
 2. 좋아요 수를 */

		$.ajax({
			url:"${getGoodBestBoards}",
			type:"get",
			success:function(responseTxt){
				
				/*구분자  */
					
				var itemArray=JSON.parse(responseTxt); 

				var row="";
				
				$.each(itemArray,function(index,item){
						
					var title = item.boardTitle;
					var boardNo = item.boardNo;
					var img=item.mainImg;

					/* console.log(boardNo+"넘버 ");
					console.log(title+"타이틀 "); */
					
					/*타이틀을 받아오는지 확인 하는 부분  */
					 if(title==undefined){
						/* console.log(title+"타이틀 없음"); */
						title = "존재하지 않습니다";
					} 
/*이미지값이 정의되지 않아 받아올수 없을때 
 기본 이미지를 띄워주는 부분  */
				<%-- 	 if(item.mainimage==undefined){
						console.log("이미지가 없습니다.현재인덱스 :"+index);
						console.log(img+"이미지가 없다고?")
						img="<%=request.getContextPath()%>/images/logo.png";
						
					}   --%>
					
					/* console.log("현재인덱스"+index);	 				 	 */ 
					/*행을 추가하는 부분 (row+= 이 아닌 row=으로 하는 이유는 row+로 하면 계속 누적되지만 row=으로 하면 계속 초기화 되서 덮어씌워진다.)  */
							 <c:url value="/retrieve" var="retrieve"/>																
							row ="<li class='col-sm-3'>"
										        +"<div class='thumbnail'>"
										        /*이미지에 링크를 하려고 a태그 */
										         +  "<a href=<%=request.getContextPath()%>"
	                                                +"/retrieve?boardNo="
													+ boardNo
													
													+ " >"
													/* 아래에 이미지 삽입 */
													+ "<img src="+img+" alt='' class ='imgresize'/>"+"</a></div>"
										            +"<div class='caption-box'>"
										            /*아래: 제목에 a태그  */
										            + "<a href=${retrieve}?boardNo="	                                             
													+ boardNo
													+">"	
													/*아래: a태그완료  */
										            +"<h4>"+title+"</h4></a></div></li>";   
										              														      									  		  									  		      										  		  
										          /*   /retrieve?boardNo=85 */
										            		
										            		
										            		
										           if(0<=index&&index<4){
										            	if(title!=undefined){
										            		/* console.log("첫번째 인덱스:"+index);
											            	console.log("첫번째아이템이름:"+title); */
											            	$('#BestTip1').append(row);
											            	
										            	}
										            	else{
										            		
										            		return false;
										            	}
										            
										            }
										            
										            
										            
										            else if(4<=index&&index<8){
										            	if(title!=undefined){
										            		/* console.log("두번째 인덱스:"+index);
											            	console.log("두번째아이템이름:"+title); */
											            	$('#BestTip2').append(row);
										            	}
										            	else{
										            		
										            		return false;
										            	}
										            	
										            	
										            	
										            }
										            else if(8<=index&&index<12){
										            	if(title!=undefined){
										            		/* console.log("세번째 인덱스:"+index);
											            	console.log("세번째아이템이름:"+title); */
											            	$('#BestTip3').append(row);
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
