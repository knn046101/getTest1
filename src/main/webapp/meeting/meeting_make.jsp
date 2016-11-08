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
<body>

   <%@include file="/layout/header.jsp"%>

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
                  <span>모임 만들기</span>
               </h4>
            </div>
            
            <form>
                		<div class="form-group">
                		<label for="">모임 정보 등록</label><br> 
                		 
            <div class="row">            
               <div class="col-sm-3">
                  <select class="form-control" id="sel1">
                     <option>서울특별시</option>
                     <option>인천광역시</option>
                     <option>대전광역시</option>
                     <option>대구광역시</option>
                     <option>광주광역시</option>
                     <option>울산광역시</option>
                     <option>부산광역시</option>
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
               <div class="col-sm-3">
                  <select class="form-control" id="sel2">
                  </select>
               </div>
            </div>
                    
                     <!--자바스크립트에서 설정된 값으로 텍스트를 변환 하는 hidden input 부분  -->
                  <input type="hidden" id="txt-sel1"> <input type="hidden"
                     id="txt-sel2"> <input type="hidden" id="txt-category">
                  <input type="hidden" id="txt-numberOfPeople">
                    		 
                   
		</div>
		
		<div class="form-group"> 
			<label for="keyword">검색 키워드 등록</label><br>
			 <input type="text" placeholder="ex) #자전거 #배드민턴" class="btn btn-default dropdown-toggle" id="keyword">
		</div>
        
        <div class="form-group">
            <label for="meetingTitle">모임 이름</label> 
            <input type="text" class="form-control" id="meetingTitle" name="meetingTitle">
        </div>
                  
        <div class="form-group">
            <label for="meetingContent">모임 설명</label> 
            <textarea class="form-control" id="meetingContent" name="meetingContent"></textarea>
        </div>

        <!--대표 사진 이미지를 업로드 하는 부분   -->
        <div class="form-group">
             <label for="uploadImage">모임 커버 사진</label>
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
            <button id="save" type="submit" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">만들기
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

var meetingTitle;
var meetingContent;
var locationP;
var keyword;
var uploadImage;

/*각 드롭다운 목록 (게시글 정보ㅡ 키워드)의 이벤트를 정의 해 둔 부분   */
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

   
   ////////////////////////////////////////////////////
   <c:url value="/addMeeting" var="addMeeting"/>
   $("#save").on("click ", function(e){
      e.preventDefault();
     meetingTitle = $("#meetingTitle").val();
     meetingContent = $("#meetingContent").val();
     locationP = $("#sel1").val()+","+$("#sel2").val();
     keyword = $("#keyword").val();
     uploadImage = result;
      var allData = {
         "meetingTitle" : meetingTitle,
         "meetingContent" : meetingContent,
         "place" : locationP,
         "meetingKeyword":keyword,
         "meetingImg" : uploadImage,
         "id" : "${login.id}"
      };
      if (locationP == ",undefined") {
         alert("지역을 선택하여 주십시오.");
      }else if (meetingTitle =="") {
         alert("모임명을 입력하여 주십시오.");
      } else if (keyword == "") {
         alert("키워드를 입력하여 주십시오.");
      } else if (meetingContent==""){
         alert("간단히 모임설명을 입력하여 주십시오.");
      } else {
         $.ajax({
            type : "post",
            url : "${addMeeting }",
            data : allData,
            success : function(res) {
               if(res=="저장"){
                  location.href="<%=request.getContextPath()%>/meeting/meeting_main.jsp";
               }else if(res=="실패"){
                  alert("전송할 수 있는 용량을 초과하였습니다.");
               }
            },
            error : function(xhr, status, error) {
               alert("오류발생. 모임 만들기 실패");
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