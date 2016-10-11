<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	 

	 
	 <%@include file="/layout/whatcss.jsp"%>
	 <%-- <%@include file="/layout/whatjs.jsp"%>  --%>
	
</head>


<body>
 
 <%@include file="/layout/header.jsp"%>  

   <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
	
	<script	src="js/summernote.js"></script>
	
 


 
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<!--양 옆 공백을 위한 div 건들지 마시오  -->
			</div>

		<!--메인 내용 div 시작  -->
			<div class="col-md-8">
				<div class="dividerHeading">
							<h4><span>게시글 작성</span></h4>

						</div>

<!-- 게시글 정보를 가둬 놓는 form -->
				<label for="게시글 정보"> 게시글정보 </label>
				<form role="search">
				
					<div class="input-group">


<!-- 첫번째 행의 첫번째 드롭박스 -->
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span id="srch-sel1">도 선택</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="sel1">
								<li><a data-value="ac1n">서울</a></li>
								<li><a href="#" >경기도</a></li>
								<li><a href="#" >강원도</a></li>
								<li><a href="#" >충청남도</a></li>
								<li><a href="#" >충청북도</a></li>
								<li><a href="#" >전라남도</a></li>
								<li><a href="#" >전라북도</a></li>
								<li><a href="#" >경상남도</a></li>
								<li><a href="#" >경상북도</a></li>
								<li><a href="#" >제주도</a></li>
							</ul>
						</div>

<!-- 첫번째 행의 첫번째 드롭박스 끝 -->


<!--두번째 드롭박스  -->
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span id="srch-sel2">시 선택</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="sel2">
								
							</ul>
						</div>

<!--세번째 드롭박스  -->
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" id="btn-category">
								<span id="srch-category">카테고리</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="category">
								<li><a href="#" data-value="food">먹거리</a></li>
								<li><a href="#" data-value="picnic">나들이</a></li>
								<li><a href="#" data-value="hobby">취미</a></li>
							</ul>

						</div>


<!--자바스크립트에서 설정된 값으로 텍스트를 변환 하는 hidden input 부분  -->
						<input type="hidden" id="txt-sel1"> <input type="hidden"
							id="txt-sel2"> <input type="hidden" id="txt-category">
						<input type="hidden" id="txt- numberOfPeople">

					</div>

				</form>
<!--  첫번째 행 완료-->


<!-- 두번째 행 시작  -->

				<form role="keyword">
					<label for="키워드"> 키워드 </label>
					<div class="input-group">

						<div class="input-group-btn">

							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" id="btn-category">
								<span id="srch-category">몇 명이서</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="numberOfPeople">
								<li><a href="#" data-value="alone">혼자서</a></li>
								<li><a href="#" data-value="twin">둘이서</a></li>
								<li><a href="#" data-value="hobby">3명이상</a></li>
							</ul>
						</div>
						<input type="hidden" id="txt-category"> 
						<input type="text"
							id="boardKeyword" class="form-control" placeholder="무엇을?(#가을#하늘높다)">
						<span class="input-group-btn"> 
					
							<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
<!-- 두번째 행 끝 -->



<!--세번째 행  -->
					<form role="form">
						<div class="form-group">

							<label for="제목"> 제목 </label> <input type="text"
								class="form-control" id="boardTitle" name="boardTitle">
						</div>

<!--네번째 행 게시판 내용  -->
						<fieldset class=bound>

							<legend>
								<label for="내용"> 내용 </label>

<!--게시판 내용 입력 하는 에디터가 들어감   -->
								<div id="summernote">
									<p>내용을 입력하세요</p>
								</div>

							</legend>



<!--대표 사진 이미지를 업로드 하는 부분   -->
							<div class="form-group">

								<label for="대표사진"> 대표 이미지 선택 </label>

								<div id="fileupload">
									<input type='file' id="uploadImage" />
								</div>
<!-- 업로드 할 이미지를 미리 보여주는 부분 -->
								<div id="preview">
									<img id="imagePreview" margin="2px" height="100px"
										width="100px" src="#" alt="Preview upload images" />
								</div>

							</div>
					</form>
					
					<!-- 저장 버튼으로 자바스크립트를 통해 ajax -> 컨트롤러로 전송하는 부분 -->
					<button id="save" class="btn btn-primary" type="button">저장</button>
			</div>
		</div>



	</div>

	<div class="col-md-2">
		<!--양 옆 공백을 위한 div 건들지 마시오  -->
	</div>
<div>
<%@include file="/layout/footer.jsp"%>
</div>  
</body>




<!-- 
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> -->
<!-- 	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"	rel="stylesheet">
	<link href="css/summernote.css" rel="stylesheet"> -->
	

	


<script>





var sel1;
var sel2;
var categorysel;
var numberOfPeoplessel;

/*각 드롭다운 목록 (게시글 정보ㅡ 키워드)의 이벤트를 정의 해 둔 부분   */
	$(function() {

		$('#sel1').find('a').click(function(e) {
			e.preventDefault();
			var cat = $(this).text();
			$('#srch-sel1').text(cat);
			$('#txt-sel1').val(cat);

			sel1=cat;
			console.log("선택1:" + cat);
		});

		$('#sel2').find('a').click(function(e) {
			e.preventDefault();
			var cat = $(this).text();
			$('#srch-sel2').text(cat);
			$('#txt-sel2').val(cat);

			sel2=cat;
			console.log("선택1:" + cat);
		});


		$('#category').find('a').click(function(e) {
			e.preventDefault();
			var cat = $(this).text();
			var value = $(this).data('value');

			categorysel=value;
			$('#srch-category').text(cat);
			$('#txt-category').val(cat);

			console.log("선택:" + cat);
			console.log("선택밸류:" + value);

		});

		$('#numberOfPeople').find('a').click(function(e) {
			e.preventDefault();
			var cat = $(this).text();
			var value = $(this).data('value');

			numberOfPeoplessel = value;
			$('#srch-numberOfPeople').text(cat);
			$('#txt-numberOfPeople').val(cat);

			console.log("선택:" + cat);
			console.log("선택밸류:" + value);

		});

	});

/* 대표 이미지 파일 업로드 하는 부분 */
	var reader;
	var result;

	function readUploadImage(inputObject) {

		if (window.File && window.FileReader) {

			if (inputObject.files && inputObject.files[0]) {

				/* 이미지 파일인지도 체크 */

				if (!(/image/i).test(inputObject.files[0].type)) {

					alert("이미지 파일을 선택해 주세요!");

					return false;

				}

				/* FileReader 를 준비 한다. */

				var reader = new FileReader();

				var file = inputObject.files[0];
				var fileSize = 0;

				reader.onload = function(e) {

					/* reader가 다 읽으면 imagePreview에 뿌려 주는 로직 부분  */

					if (window.File && window.FileReader && window.FileList
							&& window.Blob) {
						//파일사이즈를 fsize에 넣는다.
						var fsize = file.size;

						if (fsize > 150000) // 1 mb 기준 (1048576) 여기에서 파일 사이즈 체크 하는 로직
						{

							alert(fsize
									+ " bites\n 사이즈가 너무 큽니다. 150KB 미만으로 해주세요!");
							inputObject.files[0] = null;
							result = null;
							// 미리보기 부분을 null로 바꾼다.
							$('#imagePreview').attr('src', nvalue);

						} else {

							$('#imagePreview').attr('src', e.target.result);

							//썸네일로 미리보기 된 결과값(base64로 인코딩)을  result에 넣는다 
							//문자열 앞에 ""를 넣기 위해 앞뒤로 추가
							result = "\"" + e.target.result + "\"";

						}
					} else {
						alert("HTML5를 지원하는 브라우저에서 접속해 주세요");
					}
					/* console.log(result+"결과"); */
				}
				/* input file에 있는 파일 하나를 읽어온다. */
				reader.readAsDataURL(inputObject.files[0]);

			}

		} else {

			alert("HTML5를 지원하는 브라우저에서 접속해 주세요");

		}

	}

	/* 읽어온 이미지를 미리보기에 쏴준다 */
	$("#uploadImage").change(function() {

		readUploadImage(this);
	});

	/* 대표 이미지를 업로드 하는 부분 완료 */
	
	
	
/*문서 로딩이 완료되면....  섬머노트를 붙여넣는다  */
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 300, // set editor height
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
			maximumImageFileSize : 153600,

			focus : true
		// set focus to editable area after initializing summernote
		});

	});

/* 섬머노트 내용을 서버로 전달하는 부분 */
	<c:url value="/content" var="content"/>
	$("#save")
			.click(
					function() {

						var markupStr = $('#summernote').summernote('code');

						var allData = {
							"content" : markupStr
						};

						if (markupStr == null) {
							alert("게시판 내용을 넣어주세요");
							return false;

						} else {
							$
									.ajax({
										type : "post",
										url : "${content}",

										data : allData,

										success : function(res) {
											console.log(res);
											console.log(" 게시판 내용이 전송되었습니다.");
											/*게시판 내용이 전송 된 후 대표 이미지를 전송하는 부분을 호출한다 */
											mainimg();

										},
										error : function(xhr, status, error) {
											alert("사진 크기가 너무 큽니다");
										},
										"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
									});
						}

					});

	<c:url value="/mainimg" var="mainimg"/>
	function mainimg() {

		var thumb = "<img src ="+result+"/>";
		console.log(thumb + "썸네일");

		var mainImgData = {
			"thumbnail" : thumb
		};

		if (result == null) {
			alert("썸네일을 넣어주세요");

			return false;

		} else {
			$
					.ajax({
						type : "post",
						url : "${mainimg}",

						data : mainImgData,

						success : function(res) {
							console.log("썸네일이 전송되었습니다.");
							/*대표이미지가 전송된 이후 게시글 정보와 키워드를 전송하는 부분을 호출 */
							option();

						},
						error : function(xhr, status, error) {
							alert("사진 크기가 너무 큽니다");
						},
						"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
					});
		}

	};

	<c:url value="/option" var="option"/>

	function option() {
				
		var loca = sel1+","+sel2;
		var boardTitle = $("#boardTitle").val();
		var numberOfPeople = numberOfPeoplessel;
		var category = categorysel;
		var boardKeyword = $("#boardKeyword").val();

		
		

		console.log("위치" + loca);
		console.log("제목" + boardTitle);
		console.log("사람수" + numberOfPeople);
		console.log("카테고리" + category);
		console.log("키워드" + boardKeyword);

		var stringData = {
			"locationv" : loca,
			"boardTitlev" : boardTitle,
			"numberOfPeoplev" : numberOfPeople,
			"categoryv" : category,
			"boardKeywordv" : boardKeyword
		};

		if (loca == null) {
			alert("지역을 넣어주세요");

		} else if (boardTitle == null) {
			alert("제목을 넣어주세요");
		} else if (numberOfPeople == null) {
			alert("몇명인지 넣어주세요");
		} else if (category == null) {
			alert("카테고리를 넣어주세요");
		} else if (boardKeyword == null) {
			alert("키워드를 ex.#박종연 형식으로 넣어주세요");
		} else {
			$
					.ajax({
						type : "post",
						url : "${option}",

						data : stringData,

						success : function(res) {
							console.log("보드 내용, 썸네일,옵션 전송 완료");
						},
						error : function(xhr, status, error) {
							alert("데이터 전송을 실패했어요");
							console.log("에러:" + error);
						},
						"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
					});
		}

	};
	
	<c:url value="/changeCapital" var="changeCapital"/>
	$("#sel1").on("change", function(){
		var citystr="";
		var sel1=$("#sel1").val();
		$(".sel2").remove();
		$.ajax({
			type:"get",
			url:"${changeCapital}",
			dataType:"json",
			data: {
				"sel1":sel1	
			},
			success:function(data){
				for(var i=0; i<data.length; i++){
				
					citystr+="<li><a href='#'>"+data[i].city+"</a></li>";
				}
				$("#sel2").append(citystr);
			},
			error : function(xhr, status, error){
				alert(error);
			},
			ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
		});
	});
	
	
	
	$(document).ready(function() {
		if( ${empty login } ){
			alert("로그인 후에 이용하여 주십시오.");
			location.href="<%=request.getContextPath()%>/login/login.jsp";
		} 
	});
	
</script>




<!--시범  -->
 
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.cookie.js"></script> 

	<script src="js/jquery.fractionslider.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
	<script type="text/javascript"
		src="js/jquery.smartmenus.bootstrap.min.js"></script>
		
		<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
	<script type="text/javascript" src="js/jflickrfeed.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>

<script type="text/javascript" src="js/swipe.js"></script>
	<script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>

	<script src="js/main.js"></script>
</html>