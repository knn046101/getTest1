<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

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
	<section class="content left_sidebar">
			<div class="container">
				<div class="row">
					<!--Sidebar Widget-->
					<div class="col-lg-4">
						<div class="sidebar">
							<div class="widget widget_categories">
								<ul class="arrows_list sidenav">
										<li><img src=${login.profileImg } class="img-circle"
											 width="150" height="150" hspace="50"> <br>
										</li>
										<h4 align="center">
                                 ${login.nickname} 
                                 <c:choose>
                                    <c:when test="${login.division eq 'Customer' }">
                                       <span class="label label-default"
                                          style="background-color: grey;color:#fff;">일반회원</span>
                                    </c:when>
                                    <c:when test="${login.division eq 'Editor' }">
                                       <span class="label label-default"
                                          style="background-color: yellow">에디터</span>
                                    </c:when>
                                 </c:choose>
                              </h4>
								</ul>
							</div>
							<div class="widget widget_categories">
								<div class="widget_title">
									<h4><span>마이페이지</span></h4>
								</div>
								<ul class="arrows_list">
									<c:url value="/mypageUpdate" var="mypageUpdate"/>
										
										<li><a href="${mypageUpdate }?loginId=${login.id }">
										정보수정</a></li>
										<li><a 
											href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
												내 글
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_favorite.jsp">
												관심 키워드
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_scrap.jsp">
												스크랩
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_meeting.jsp">
												좋아요
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_meeting.jsp">
												모임
										</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					 <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
           					 <div class="carousel-intro">
		               
		                 		 <div class="dividerHeading">
		                    		 <h3><a style="color:#27AB99;" href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
										내 글	</a></h3>
		                 		 </div>
		              		 </div>
								<div id="myCarousel" class="row carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
			    					<div class="carousel-inner" id="carouseltotal" >
							   			<div class="item active">
								    		<ul class="thumbnails" id ="searchMyBoard1" style=list-style:none;>
											</ul>
			     						</div> <!-- /Slide1 --> 
							   			<div class="item">
			        						<ul class="thumbnails" id = "searchMyBoard2" style=list-style:none;>
							        		</ul>
			 				    		</div><!-- /Slide2 --> 
					   				</div>
					   			<!-- /Wrapper for slides .carousel-inner -->
		
						    	<!-- Control box -->
								<div class="control-box">                            
									<a data-slide="prev" href="#myCarousel" class="carousel-control left">‹</a>
									<a data-slide="next" href="#myCarousel" class="carousel-control right">›</a>
					  		  	</div>
					  		  	<!-- /.control-box -->   
							</div>
							<!-- /#myCarousel -->
						</div>          
				
                 <!--추가 시범  -->
        		 <!--end wrapper-->
        		 
   
     			 <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
            		<div class="carousel-intro">
                 		 <div class="dividerHeading">
                    		 <h3><a style="color:#27AB99;" href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
									관심 키워드	</a></h3>
                  		</div>
                  
                  	</div>
   					<div id="myCarousel1" class="row carousel slide" data-ride="carousel">

    					<!-- Wrapper for slides -->
    					<div class="carousel-inner" id="carouseltotal" >
							<div class="item active">
        						<ul class="thumbnails" id ="BestTip1"  style=list-style:none;>
          						</ul>
      						</div> <!-- /Slide1 --> 
							<div class="item">
        						<ul class="thumbnails" id = "BestTip2"  style=list-style:none;>
          						</ul>
      						</div><!-- /Slide2 --> 
      					</div>
      					<!-- /Wrapper for slides .carousel-inner -->
						<!-- Control box -->
    					<div class="control-box">                            
      						<a data-slide="prev" href="#myCarousel1" class="carousel-control left">‹</a>
     						<a data-slide="next" href="#myCarousel1" class="carousel-control right">›</a>
    					</div>
    					<!-- /.control-box -->   
					</div>
					<!-- /#myCarousel -->
				</div>          
			
			
      			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
           			 <div class="carousel-intro">
                 		 <div class="dividerHeading">
                     		<h3><a style="color:#27AB99;" href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
									스크랩	</a></h3>
                  		</div>
                  	</div>
   					<div id="myCarousel2" class="row carousel slide" data-ride="carousel">

    				<!-- Wrapper for slides -->
   					 <div class="carousel-inner" id="carouseltotal" >
						<div class="item active">
        					<ul class="thumbnails" id ="scrapMyBoards1"  style=list-style:none;>
         					</ul>
      					</div> <!-- /Slide1 --> 
     					<div class="item">
        					<ul class="thumbnails" id = "scrapMyBoards2"  style=list-style:none;>
        					</ul>
      					</div><!-- /Slide2 --> 
   					 </div><!-- /Wrapper for slides .carousel-inner -->

    				<!-- Control box -->
   					<div class="control-box">                            
      					<a data-slide="prev" href="#myCarousel2" class="carousel-control left">‹</a>
      					<a data-slide="next" href="#myCarousel2" class="carousel-control right">›</a>
    				</div>
    				<!-- /.control-box -->   
					</div><!-- /#myCarousel -->
				</div> 
					</div>
					</div>
				</section>
				
				<br>
				<br>
				<br>

	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>



<script>
	$(document).ready(function(){
		getBoardMyBoardsMain();
		//getBoardMyFavoriteMain();
		getBoardMyScrapMain();
	});
	
	<c:url value="/getBoardMyBoardsMain" var="getBoardMyBoardsMain"/>
	function getBoardMyBoardsMain(){
	 /* 1. 처음 문서가 로딩될때 함수가 호출된다  
	 2. 좋아요 수를 */
	 	var data={
			"id":"${login.id}"	 
	 	};
	 	console.log("진입");
	    	$.ajax({
	        	url:"${getBoardMyBoardsMain}",
	        	type:"get",
	        	data:data,
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
	              		 /* console.log("현재인덱스"+index);     */            
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
	                           + "<img src="+img+" alt='' height='150px' class='imgresize'/>"+"</a></div>"
	                           +"<div class='caption-box'>"
	                            /*아래: 제목에 a태그  */
	                           + "<a style='color:#323A45;' href=${retrieve}?boardNo="                                                
	                           + boardNo
	                           +">"   
	                      /*아래: a태그완료  */
	                           +title+"</a></div></li>";   
	                            /*   /retrieve?boardNo=85 */
						if(0<=index&&index<4){
	                    	if(title!=undefined){
	                        	/* console.log("첫번째 인덱스:"+index);
	                            console.log("첫번째아이템이름:"+title); */
	                      		$('#searchMyBoard1').append(row);
	                      } else{
	                         return false;
	                      }
	                  } else if(4<=index&&index<8){
	                     if(title!=undefined){
	                             /* console.log("두번째 인덱스:"+index);
	                             console.log("두번째아이템이름:"+title); */
	                        $('#searchMyBoard2').append(row);
	                    } else{     
	                       	return false;
	                   	}	
	                } else{
	    	        	return false;
		            } 
	            });  
	        },
	       	error:function(xhr,status,error){
	           /* alert("로딩중입니다.:"+error); */
	       	}
		})
	};
		
	<%-- <c:url value="/getBoardMyFavoriteMain" var="getBoardMyFavoriteMain"/>
	function getBoardMyFavoriteMain(){
		var data={
				"id":"${login.id}"	 
		 	};
		 	console.log("진입");
		    	$.ajax({
		        	url:"${getBoardMyFavoriteMain}",
		        	type:"get",
		        	data:data,
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
		              		 /* console.log("현재인덱스"+index);     */            
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
		                           + "<img src="+img+" alt='' height='150px' class='imgresize'/>"+"</a></div>"
		                           +"<div class='caption-box'>"
		                            /*아래: 제목에 a태그  */
		                           + "<a href=${retrieve}?boardNo="                                                
		                           + boardNo
		                           +">"   
		                      /*아래: a태그완료  */
		                           +title+"</a></div></li>";   
		                            /*   /retrieve?boardNo=85 */
							if(0<=index&&index<4){
		                    	if(title!=undefined){
		                        	/* console.log("첫번째 인덱스:"+index);
		                            console.log("첫번째아이템이름:"+title); */
		                      		$('#searchMyBoard1').append(row);
		                      } else{
		                         return false;
		                      }
		                  } else if(4<=index&&index<8){
		                     if(title!=undefined){
		                             /* console.log("두번째 인덱스:"+index);
		                             console.log("두번째아이템이름:"+title); */
		                        $('#searchMyBoard2').append(row);
		                    } else{     
		                       	return false;
		                   	}	
		                } else{
		    	        	return false;
			            } 
		            });  
		        },
		       	error:function(xhr,status,error){
		           /* alert("로딩중입니다.:"+error); */
		       	}
			})
	}; --%>
		
	
	<c:url value="/getBoardMyScrapMain" var="getBoardMyScrapMain"/>
		function getBoardMyScrapMain(){
		 /* 1. 처음 문서가 로딩될때 함수가 호출된다  
		 2. 좋아요 수를 */
		 	var data={
				"id":"${login.id}"	 
		 	};
		    	$.ajax({
		        	url:"${getBoardMyScrapMain}",
		        	type:"get",
		        	data:data,
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
		              		 /* console.log("현재인덱스"+index);     */            
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
		                           + "<img src="+img+" alt='' height='150px' class='imgresize'/>"+"</a></div>"
		                           +"<div class='caption-box'>"
		                            /*아래: 제목에 a태그  */
		                           + "<a style='color:#323A45;' href=${retrieve}?boardNo="                                                
		                           + boardNo
		                           +">"   
		                      /*아래: a태그완료  */
		                           +title+"</a></div></li>";   
		                            /*   /retrieve?boardNo=85 */
							if(0<=index&&index<4){
		                    	if(title!=undefined){
		                        	/* console.log("첫번째 인덱스:"+index);
		                            console.log("첫번째아이템이름:"+title); */
		                      		$('#scrapMyBoards1').append(row);
		                      } else{
		                         return false;
		                      }
		                  } else if(4<=index&&index<8){
		                     if(title!=undefined){
		                             /* console.log("두번째 인덱스:"+index);
		                             console.log("두번째아이템이름:"+title); */
		                        $('#scrapMyBoards2').append(row);
		                    } else{     
		                       	return false;
		                   	}	
		                } else{
		    	        	return false;
			            } 
		            });  
		        },
		       	error:function(xhr,status,error){
		           /* alert("로딩중입니다.:"+error); */
		       	}
			})
		};
</script>
</html>