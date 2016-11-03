<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, maximum-scale=1">
<title>뭐 하 지 ?</title>
<meta name="description" content="">
 
</head>

<style>
	/* 로딩*/
	#loading {
		height: 100%;
		left: 0px;
		position: fixed;
		_position:absolute; 
		top: 0px;
		width: 100%;
		filter:alpha(opacity=50);
		-moz-opacity:0.5;
		opacity : 0.5;
	}
	
	.loading {
		background-color: white;
		z-index: 199;
	}
	
	#loading_img{
		position:absolute; 
		top:50%;
		left:50%;
		height:35px;
		margin-top:-75px;	
		margin-left:-75px;	
		z-index: 200;
	}
</style>

<body>

   <%@include file="/layout/header.jsp"%>

   <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
      rel="stylesheet">
   <script src="js/summernote.js"></script>

   <br>
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-2">
            <!--양 옆 공백을 위한 div 건들지 마시오  -->
         </div>

         <!--메인 내용 div 시작  -->
         <div class="col-md-8">
            <div class="dividerHeading">
               <h4>
                  <span>게시글 작성</span>
               </h4>
            </div>
            
            <c:url value="/addBoard" var="addBoard"/>            
            <form id="form" action="${addBoard }">
            <!-- 게시글 정보를 가둬 놓는 form -->
            <label for="게시글 정보"> 게시글정보 </label>
            <div class="input-group">
            
                  <!-- 첫번째 행의 첫번째 드롭박스 -->
                  <div class="input-group-btn">
                     <button type="button" class="btn btn-default dropdown-toggle"
                        data-toggle="dropdown">
                        <span id="srch-sel1">도 선택</span> <span class="caret"></span>
                     </button>
                     <ul class="dropdown-menu" id="sel1">
                        <li><a href="#">서울특별시</a></li>
                        <li><a href="#">인천광역시</a></li>
                        <li><a href="#">대전광역시</a></li>
                        <li><a href="#">대구광역시</a></li>
                        <li><a href="#">광주광역시</a></li>
                        <li><a href="#">울산광역시</a></li>
                        <li><a href="#">부산광역시</a></li>
                        <li><a href="#">경기도</a></li>
                        <li><a href="#">강원도</a></li>
                        <li><a href="#">충청남도</a></li>
                        <li><a href="#">충청북도</a></li>
                        <li><a href="#">전라남도</a></li>
                        <li><a href="#">전라북도</a></li>
                        <li><a href="#">경상남도</a></li>
                        <li><a href="#">경상북도</a></li>
                        <li><a href="#">제주도</a></li>
                     </ul>
                  </div>
                  <!-- 첫번째 행의 첫번째 드롭박스 끝 -->

                  <!--두번째 드롭박스  -->
                  <div class="input-group-btn">
                     <button type="button" class="btn btn-default dropdown-toggle"
                        data-toggle="dropdown">
                        <span id="srch-sel2">시-군 선택</span> <span class="caret"></span>
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
                        <li><a href="#" >먹거리</a></li>
                        <li><a href="#" >나들이</a></li>
                        <li><a href="#" >취미</a></li>
                     </ul>
                  </div>

                  <!--자바스크립트에서 설정된 값으로 텍스트를 변환 하는 hidden input 부분  -->
                  <input type="hidden" id="txt-sel1"> <input type="hidden"
                     id="txt-sel2"> <input type="hidden" id="txt-category">
                  <input type="hidden" id="txt-numberOfPeople">
               </div>
            
               <label for="키워드"> 키워드 </label>
               <div class="input-group">
                  <div class="input-group-btn">
                     <button type="button" class="btn btn-default dropdown-toggle"
                        data-toggle="dropdown" id="btn-category">
                        <span id="srch-numberOfPeople">몇 명이서</span> <span class="caret"></span>
                     </button>
                     <ul class="dropdown-menu" id="numberOfPeople">
                        <li><a href="#" >혼자서</a></li>
                        <li><a href="#" >둘이서</a></li>
                        <li><a href="#" >3명이상</a></li>
                     </ul>
                  </div>
                  <input type="hidden" id="txt-category"> <input type="text"
                     id="boardKeyword" class="form-control"
                     placeholder="무엇을? (#가을 #하늘높다)"> <span
                     class="input-group-btn"> <span
                     class="glyphicon glyphicon-search"></span>
                  </span>
               </div>

                  <div class="form-group">
                     <label for="제목"> 제목 </label> <input type="text"
                        class="form-control" id="boardTitle" name="boardTitle">
                  </div>
                  


                  <fieldset class=bound>
                     <legend>
                        <label for="내용"> 내용 </label>
                        <!--게시판 내용 입력 하는 에디터가 들어감   -->
                        <div id="summernote">
                           <p>내용을 입력하세요</p>
                        </div>
                     </legend>
                  </fieldset>

                     <!--대표 사진 이미지를 업로드 하는 부분   -->
                  <div class="form-group">
                     <label for="대표사진"> 대표 이미지 선택 </label>
                     <div id="fileupload">
                        <input type='file' id="uploadImage" />
                     </div>
                     <!-- 업로드 할 이미지를 미리 보여주는 부분 -->
                        <div id="preview">
                           <img id="imagePreview"/>
                        </div>
                     </div>
               <!-- 저장 버튼으로 자바스크립트를 통해 ajax -> 컨트롤러로 전송하는 부분 -->
       <div class="col-sm-12 text-center">
       	<span class="input-group-btn">
            <button id="save" type="submit" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">저장
           </button>
         </span>
         <br>
         </div>
            </form>
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
<script>
var sel1;
var sel2;
var categorysel;
var numberOfPeoplessel;


$(document).ready(function(){
	var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="images/viewLoading.gif" />')
					.appendTo(document.body).hide();

	$(window)	
	.ajaxStart(function(){
		loading.show();
	})
	.ajaxStop(function(){
		loading.hide();
	});
});

/*각 드롭다운 목록 (게시글 정보ㅡ 키워드)의 이벤트를 정의 해 둔 부분   */
   $(function() {
      $('#sel1').find('a').click(function(e) {
         e.preventDefault();
         var cat = $(this).text();
         $('#srch-sel1').text(cat);
         $('#txt-sel1').val(cat);
         sel1=cat;
         
         <c:url value="/changeCapital" var="changeCapital"/>
         var citystr="";
         $(".sel2").remove();
         $.ajax({
            type:"get",
            url:"${changeCapital }",
            dataType:"json",
            data: {
               "sel1":sel1   
            },
            success:function(data){
               console.log(data);
               for(var i=0; i<data.length; i++){
                  citystr+="<li class='sel2'><a id='sel2check' href='#'>"+data[i].city+"</a></li>";
               }
               $("#sel2").append(citystr);
            },
            error : function(xhr, status, error){
               alert(error);
            },
            ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
         });
      });

      $("#sel2").on("click", "#sel2check",function(e) {
         e.preventDefault();
         var cat = $(this).text();
         $('#srch-sel2').text(cat);
         $('#txt-sel2').val(cat);
         sel2=cat;
      });

      $('#category').find('a').click(function(e) {
         e.preventDefault();
         var cat = $(this).text();
         var value = $(this).data('value');
         $('#srch-category').text(cat);
         $('#txt-category').val(cat);
         categorysel=value;
      });

      $('#numberOfPeople').find('a').click(function(e) {
         e.preventDefault();
         var cat = $(this).text();
         var value = $(this).data('value');
         numberOfPeoplessel = value;
         $('#srch-numberOfPeople').text(cat);
         $('#txt-numberOfPeople').val(cat);
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
         maximumImageFileSize : 3153600,
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
      var locationP = $("#txt-sel1").val()+","+sel2;
      var numberOfPeople = $("#txt-numberOfPeople").val();
      var boardKeyword = $("#boardKeyword").val();
      var category = $("#txt-category").val();
      var mainImg = result;
      
      var allData = {
         "boardTitle" : boardTitle,
         "boardContent" : markupStr,
         "location" : locationP,
         "numberOfPeople" : numberOfPeople,
         "what" : boardKeyword,
         "category" : category,
         "mainImg" : mainImg,
         "id" : "${login.id}"
      };
      
      if (locationP == ",undefined") {
         alert("지역을 선택하여 주십시오.");
      } else if (boardTitle == "") {
         alert("제목을 입력하여 주십시오.");
      } else if (numberOfPeople == "") {
         alert("몇명인지 선택하여 주십시오.");
      } else if (category == "") {
         alert("카테고리를 선택하여 주십시오.");
      } else if (boardKeyword == "") {
         alert("키워드를 ex.#가을#하늘높다 형식으로 입력하여 주십시오.");
      } else if (markupStr=="null" && markupStr=="<p>내용을 입력하세요</p>"){
         alert("내용을 입력하여 주십시오.");
      } else {
         $.ajax({
            type : "post",
            url : "${addBoard }",
            data : allData,            
            success : function(res) {
               if(res=="저장"){
                  if(category=="먹거리"){
                     location.href="<%=request.getContextPath()%>/list/list_food.jsp";
                  }else if(category=="나들이"){
                     location.href="<%=request.getContextPath()%>/list/list_picnic.jsp";
                  }else{
                     location.href="<%=request.getContextPath()%>/list/list_hobby.jsp";
                  }
               }else if(res=="실패"){
                  alert("전송할 수 있는 용량을 초과하였습니다.");
               }
            },
            error : function(xhr, status, error) {
               alert("전송할 수 있는 용량을 초과하였습니다.");
            },
           
            "Content-Type" : "application/x-www-form-urlencoded;charset=utf-8" 
         });
      }
   });
   
   $(document).ready(function() {
      if( ${empty (login) } ){
         alert("로그인 후에 이용하여 주십시오.");
         location.href="<%=request.getContextPath()%>/login/login.jsp";
      } 
   });
   
</script>

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