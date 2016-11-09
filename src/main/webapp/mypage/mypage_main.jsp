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


.info_a {
	color: black;
}

a {
	color: #27AB99;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 400px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
@media screen and (max-width: 768px){
 .mapcontent, .map_wrap{
 	display: none;
 }
 
@media screen and (max-width:800px) {
	.arrows_list>li>img {
		margin-left: 200%;
	}
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
									width="150" height="150" hspace="100"> <br></li>
								<h4 align="center">
									${login.nickname}
									<c:choose>
										<c:when test="${login.division eq 'Customer' }">
											<span class="label label-default"
												style="background-color: grey; color: #fff;">일반회원</span>
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
								<h4>
									<span>마이페이지</span>
								</h4>
							</div>
							<ul class="arrows_list">
								<c:url value="/mypageUpdate" var="mypageUpdate" />

								<li><a href="${mypageUpdate }?loginId=${login.id }">
										정보수정</a></li>
								<li><a
									href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
										내 글 </a></li>
								<li><a
									href="<%=request.getContextPath()%>/mypage/mypage_favorite.jsp">
										관심 키워드 </a></li>
								<li><a
									href="<%=request.getContextPath()%>/mypage/mypage_scrap.jsp">
										스크랩 </a></li>
								<li><a
									href="<%=request.getContextPath()%>/mypage/mypage_good.jsp">
										좋아요 </a></li>
								<li><a
									href="<%=request.getContextPath()%>/mypage/mypage_meeting.jsp">
										모임 </a></li>
								<li><a
									href="<%=request.getContextPath()%>/mypage/mypage_mymeeting.jsp">
										내모임 </a></li>
							</ul>
						</div>
						<div class="widget widget_categories ">
							<div class="widget_title mapcontent">
								<h4>
									<span>키워드검색</span>
								</h4>
							</div>
								<div class="map_wrap">
										<div id="map"style="width: 0px; height: 0px; position: relative; overflow: hidden;"></div>

										<div id="menu_wrap" class="bg_white">
											<div class="option">
												<div>
													<form onsubmit="searchPlaces(); return false;">
														키워드 : <input type="text" value="뭐하지?" id="keyword"
															size="10">
														<button
															style="background-color: #27AB99; color: #fff; border-style: none;"
															type="submit">검색하기</button>
													</form>
												</div>
											</div>
											<hr>
											<ul id="placesList"></ul>
											<div id="pagination"></div>
										</div>
									</div>
							
							</div>


						</div>
					</div>

					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
						<div class="carousel-intro">

							<div class="dividerHeading">
								<h3>
									<a style="color: #27AB99;"
										href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
										내 글 </a>
								</h3>
							</div>
						</div>
						<div id="myCarousel" class="row carousel slide"
							data-ride="carousel">
							<!-- Wrapper for slides -->
							<div class="carousel-inner" id="carouseltotal">
								<div class="item active">
									<ul class="thumbnails" id="searchMyBoard1"
										style="list-style: none;">
									</ul>
								</div>
								<!-- /Slide1 -->
								<div class="item">
									<ul class="thumbnails" id="searchMyBoard2"
										style="list-style: none;">
									</ul>
								</div>
								<!-- /Slide2 -->
							</div>
							<!-- /Wrapper for slides .carousel-inner -->

							<!-- Control box -->
							<div class="control-box">
								<a data-slide="prev" href="#myCarousel"
									class="carousel-control left">‹</a> <a data-slide="next"
									href="#myCarousel" class="carousel-control right">›</a>
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
								<h3>
									<a style="color: #27AB99;"
										href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
										관심 키워드 </a>
								</h3>
							</div>

						</div>
						<div id="myCarousel1" class="row carousel slide"
							data-ride="carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner" id="carouseltotal">
								<div class="item active">
									<ul class="thumbnails" id="BestTip1" style="list-style: none;">
									</ul>
								</div>
								<!-- /Slide1 -->
								<div class="item">
									<ul class="thumbnails" id="BestTip2" style="list-style: none;">
									</ul>
								</div>
								<!-- /Slide2 -->
							</div>
							<!-- /Wrapper for slides .carousel-inner -->
							<!-- Control box -->
							<div class="control-box">
								<a data-slide="prev" href="#myCarousel1"
									class="carousel-control left">‹</a> <a data-slide="next"
									href="#myCarousel1" class="carousel-control right">›</a>
							</div>
							<!-- /.control-box -->
						</div>
						<!-- /#myCarousel -->
					</div>

					<div class="col-lg-4"></div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
						<div class="carousel-intro">
							<div class="dividerHeading">
								<h3>
									<a style="color: #27AB99;"
										href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
										스크랩 </a>
								</h3>
							</div>
						</div>
						<div id="myCarousel2" class="row carousel slide"
							data-ride="carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner" id="carouseltotal">
								<div class="item active">
									<ul class="thumbnails" id="scrapMyBoards1"
										style="list-style: none;">
									</ul>
								</div>
								<!-- /Slide1 -->
								<div class="item">
									<ul class="thumbnails" id="scrapMyBoards2"
										style="list-style: none;">
									</ul>
								</div>
								<!-- /Slide2 -->
							</div>
							<!-- /Wrapper for slides .carousel-inner -->

							<!-- Control box -->
							<div class="control-box">
								<a data-slide="prev" href="#myCarousel2"
									class="carousel-control left">‹</a> <a data-slide="next"
									href="#myCarousel2" class="carousel-control right">›</a>
							</div>
							<!-- /.control-box -->
						</div>
						<!-- /#myCarousel -->
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8"></div>
				</div>
			</div>
	</section>

	<br>
	<br>
	<br>

	<jsp:include page="/layout/footer.jsp"></jsp:include>
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=2b77487e905f3b98bb020d1507151b40&libraries=services"></script>



	<script type="text/javascript">
///////////////////////////////////////////지도/////////////////////////////////////////////////////
//마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
	center : new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	level : 3
// 지도의 확대 레벨
};

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption);

// 장소 검색 객체를 생성합니다
var ps = new daum.maps.services.Places();

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({
	zIndex : 1
});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

	var keyword = document.getElementById('keyword').value;

	if (!keyword.replace(/^\s+|\s+$/g, '')) {
		alert('키워드를 입력해주세요!');
		return false;
	}

	// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	ps.keywordSearch(keyword, placesSearchCB);
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(status, data, pagination) {
	if (status === daum.maps.services.Status.OK) {

		// 정상적으로 검색이 완료됐으면
		// 검색 목록과 마커를 표출합니다
		displayPlaces(data.places);

		// 페이지 번호를 표출합니다
		displayPagination(pagination);

	} else if (status === daum.maps.services.Status.ZERO_RESULT) {

		alert('검색 결과가 존재하지 않습니다.');
		return;

	} else if (status === daum.maps.services.Status.ERROR) {

		alert('검색 결과 중 오류가 발생했습니다.');
		return;

	}
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

	var listEl = document.getElementById('placesList'), menuEl = document
			.getElementById('menu_wrap'), fragment = document
			.createDocumentFragment(), bounds = new daum.maps.LatLngBounds(), listStr = '';

	// 검색 결과 목록에 추가된 항목들을 제거합니다
	removeAllChildNods(listEl);

	// 지도에 표시되고 있는 마커를 제거합니다
	removeMarker();

	for (var i = 0; i < places.length; i++) {

		// 마커를 생성하고 지도에 표시합니다
		var placePosition = new daum.maps.LatLng(places[i].latitude,
				places[i].longitude), marker = addMarker(placePosition, i), itemEl = getListItem(
				i, places[i], marker); // 검색 결과 항목 Element를 생성합니다

		// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		// LatLngBounds 객체에 좌표를 추가합니다
		bounds.extend(placePosition);

		// 마커와 검색결과 항목에 mouseover 했을때
		// 해당 장소에 인포윈도우에 장소명을 표시합니다
		// mouseout 했을 때는 인포윈도우를 닫습니다
		(function(marker, title) {
			daum.maps.event.addListener(marker, 'mouseover', function() {
				displayInfowindow(marker, title);
			});

			daum.maps.event.addListener(marker, 'mouseout', function() {
				infowindow.close();
			});

			itemEl.onmouseover = function() {
				displayInfowindow(marker, title);
			};

			itemEl.onmouseout = function() {
				infowindow.close();
			};
		})(marker, places[i].title);

		fragment.appendChild(itemEl);
	}

	// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
	listEl.appendChild(fragment);
	menuEl.scrollTop = 0;

	// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

	var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
			+ (index + 1)
			+ '"></span>'
			+ '<div class="info">'
			+ '   <a class="info_a" href="https://search.naver.com/search.naver?ie=UTF-8&query='
			+ places.title +'">'+ places.title +'</a>';

	if (places.newAddress) {
		itemStr += '    <span>' + places.newAddress + '</span>'
				+ '   <span class="jibun gray">' + places.address
				+ '</span>';
	} else {
		itemStr += '    <span>' + places.address + '</span>';
	}

	itemStr += '  <span class="tel">' + places.phone + '</span>' + '</div>';

	el.innerHTML = itemStr;
	el.className = 'item';

	return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
	var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	imageSize = new daum.maps.Size(36, 37), // 마커 이미지의 크기
	imgOptions = {
		spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
		spriteOrigin : new daum.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		offset : new daum.maps.Point(13, 37)
	// 마커 좌표에 일치시킬 이미지 내에서의 좌표
	}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
			imgOptions), marker = new daum.maps.Marker({
		position : position, // 마커의 위치
		image : markerImage
	});

	marker.setMap(map); // 지도 위에 마커를 표출합니다
	markers.push(marker); // 배열에 생성된 마커를 추가합니다

	return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(null);
	}
	markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
	var paginationEl = document.getElementById('pagination'), fragment = document
			.createDocumentFragment(), i;

	// 기존에 추가된 페이지번호를 삭제합니다
	while (paginationEl.hasChildNodes()) {
		paginationEl.removeChild(paginationEl.lastChild);
	}

	for (i = 1; i <= pagination.last; i++) {
		var el = document.createElement('a');
		el.href = "#";
		el.innerHTML = i;

		if (i === pagination.current) {
			el.className = 'on';
		} else {
			el.onclick = (function(i) {
				return function() {
					pagination.gotoPage(i);
				}
			})(i);
		}

		fragment.appendChild(el);
	}
	paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
	var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

	infowindow.setContent(content);
	infowindow.open(map, marker);
}

// 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {
	while (el.hasChildNodes()) {
		el.removeChild(el.lastChild);
	}
}
</script>
</body>



<script>
   $(document).ready(function(){
      getBoardMyBoardsMain();
      getBoardMyFavoriteMain();
      getBoardMyScrapMain();
   });
   
   <c:url value="/getBoardMyBoardsMain" var="getBoardMyBoardsMain"/>
   function getBoardMyBoardsMain(){
    /* 1. 처음 문서가 로딩될때 함수가 호출된다  
    2. 좋아요 수를 */
       var data={
         "id":"${login.id}"    
       };
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
      
   <c:url value="/getBoardMyFavoriteMain" var="getBoardMyFavoriteMain"/>
   function getBoardMyFavoriteMain(){
      var data={
            "favorite":"${login.favorite}"    
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
                                 + "<a style='color:black;' href=${retrieve}?boardNo="                                                
                                 + boardNo
                                 +">"   
                            /*아래: a태그완료  */
                                 +title+"</a></div></li>";   
                                  /*   /retrieve?boardNo=85 */
                     if(0<=index&&index<4){
                             if(title!=undefined){
                                 /* console.log("첫번째 인덱스:"+index);
                                  console.log("첫번째아이템이름:"+title); */
                                  $('#BestTip1').append(row);
                            } else{
                               return false;
                            }
                        } else if(4<=index&&index<8){
                           if(title!=undefined){
                                   /* console.log("두번째 인덱스:"+index);
                                   console.log("두번째아이템이름:"+title); */
                              $('#BestTip2').append(row);
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
													+ "/retrieve?boardNo="
													+ boardNo
													+ " >"
													/* 아래에 이미지 삽입 */
													+ "<img src="+img+" alt='' height='150px' class='imgresize'/>"
													+ "</a></div>"
													+ "<div class='caption-box'>"
													/*아래: 제목에 a태그  */
													+ "<a style='color:#323A45;' href=${retrieve}?boardNo="
													+ boardNo + ">"
													/*아래: a태그완료  */
													+ title + "</a></div></li>";
											/*   /retrieve?boardNo=85 */
											if (0 <= index && index < 4) {
												if (title != undefined) {
													/* console.log("첫번째 인덱스:"+index);
													 console.log("첫번째아이템이름:"+title); */
													$('#scrapMyBoards1')
															.append(row);
												} else {
													return false;
												}
											} else if (4 <= index && index < 8) {
												if (title != undefined) {
													/* console.log("두번째 인덱스:"+index);
													console.log("두번째아이템이름:"+title); */
													$('#scrapMyBoards2')
															.append(row);
												} else {
													return false;
												}
											} else {
												return false;
											}
										});
					},
					error : function(xhr, status, error) {
						/* alert("로딩중입니다.:"+error); */
					}
				})
	};
</script>
</html>