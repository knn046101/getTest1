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
	<link href="css/board/bootstrapBoard.css"	rel="stylesheet">
	<link href="css/summernote.css" rel="stylesheet">
	
</head>
<body>
	<jsp:include page="/layout/header.jsp"></jsp:include>
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
			<form id="form" class="form-horizontal" role="form" method="post"  action="addBoard">
				<nav class="navbar navbar-default navbar-static-top" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
					</div>

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active">
									<div class="form-group">
	              						<select class="form-control" id="sel1">
								            <option>서울</option>
								            <option>경기도</option>
								            <option>강원도</option>
								            <option>충청남도</option>
								            <option>충청북도</option>
								            <option>전라남도</option>
								            <option>전라북도</option>
								            <option>경상남도</option>
								            <option>경상북도</option>
								            <option>제주도</option>
								        </select>
						     		</div>
							</li>

							<li class="active">
									<div class="form-group">
						              	<select class="form-control" id="sel2">
						                </select>
									</div>
							</li>

							<li class="active">
									<div class="form-group">
										<select class="form-control" data-toggle="dropdown"
											id="category">
											<option>먹거리</option>
											<option>나들이</option>
											<option>취미</option>
										</select>
									</div>
							</li>

							<li class="active">
									<div class="form-group">
										<select class="form-control" data-toggle="dropdown"
											id="numberOfPeople">
											<option>혼자서</option>
											<option>둘이서</option>
											<option>3명이상</option>
										</select>
									</div>
							</li>

							<li>
									<div class="form-group">
										<input type="text" class="form-control" id="boardKeyword"
											placeholder="검색키워드)ex.#집#혼자">
									</div>
							</li>

						</ul>

						<!-- 문제 있으면 form 그룹 여기로 위치 -->

					</div>
				</nav>

					<div class="form-group">

						<label for="제목"> 제목 </label> <input type="text"
							class="form-control" id="boardTitle" name="boardTitle">
					</div>
					<fieldset class=bound>
						<legend>
							<label for="내용"> 내용 </label>

							<div id="summernote">
								<p>내용을 입력하세요</p>
							</div>
						</legend>
					</fieldset>
						<div class="form-group">
							<label for="대표사진"> 대표 이미지 선택 </label>
							<div id="fileupload">
								<input type='file' id="uploadImage" />
							</div>

							<div id="preview">
								<img id="imagePreview"/>
							</div>
						</div>
				<button id="save" class="btn btn-primary" type="submit">저장</button>
				
				</form>
			</div>
		</div>
	</div>

	<div class="col-md-2">
		<!--양 옆 공백을 위한 div 건들지 마시오  -->
	</div>
	
	<br>
	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
<script	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<script	src="js/summernote.js"></script>
<script>
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
							alert(fsize + " bites\n 사이즈가 너무 큽니다. 150KB 미만으로 해주세요!");
							inputObject.files[0] = null;
							result = null;
							// 미리보기 부분을 null로 바꾼다.
						} else {
							$('#imagePreview').attr('src', e.target.result);
							$('#imagePreview').css('weight', "150px");
							$('#imagePreview').css('height', "150px");
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
	/////////////////////////파일업로드 완료
	
	$(document).ready(function() {
		if( ${empty login } ){
			alert("로그인 후에 이용하여 주십시오.");
			location.href="<%=request.getContextPath()%>/login/login.jsp";
		}
		$('#summernote').summernote({
			height : 300, // set editor height
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
			maximumImageFileSize:153600,
			focus : true
		// set focus to editable area after initializing summernote
		});
	});
	
	////////////////////////////////////////////////////
	<c:url value="/addBoard" var="addBoard"/>
	$("#form").on("submit", function(e){
		e.preventDefault();
		
		var boardTitle = $("#boardTitle").val();
		var markupStr = $('#summernote').summernote('code');
		var locationP = $("#sel1").val()+","+$("#sel2").val();
		var numberOfPeople = $("#numberOfPeople").val(); 
		var boardKeyword = $("#boardKeyword").val();
		var category = $("#category").val();
		var mainImg = result;

		var allData = {
			"boardTitle": boardTitle,
			"boardContent" : markupStr,
			"location":locationP,
			"numberOfPeople":numberOfPeople,
			"what":boardKeyword,
			"category":category,
			"id":"${login.id }",
			"mainImg":mainImg
		};
		
		if(markupStr == null) {
			alert("게시판 내용을 넣어주세요");
		}else if (result == null) {
			alert("썸네일을 넣어주세요");
			return false;
		}else if(boardTitle == null){
			 alert("제목을 넣어주세요");
	 	}else if(category == null){
			alert("카테고리를 넣어주세요");
		}else if(boardKeyword == null){
			alert("키워드를 ex.#박종연 형식으로 넣어주세요");
		}else { 
			$.ajax({
				type : "post",
				url : "${addBoard}",
				data : allData,
				success : function(res) {
					if(res=="저장"){
						console.log(res)
						alert("저장 완료하였습니다.");
						console.log(category);
						if(category=="먹거리"){
							location.href="<%=request.getContextPath()%>/list/list_food.jsp";
						}else if(category=="나들이"){
							console.log("진입");
							location.href="<%=request.getContextPath()%>/list/list_picnic.jsp";
						}else if(category=="취미"){
							location.href="<%=request.getContextPath()%>/list/list_hobby.jsp";
						}
					}else{
						alert("사진 크기를 체크해주세요.")
					}
				},
				error : function(xhr, status, error) {
					alert("데이터 전송을 실패했어요");
					console.log("에러:"+error);
				},
				"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
			});
		}
	});
	
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
					citystr+="<option class='sel2'>"+data[i].city+"</option>";
				}
				$("#sel2").append(citystr);
			},
			error : function(xhr, status, error){
				alert(error);
			},
			ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
		});
	});
</script>
</html>