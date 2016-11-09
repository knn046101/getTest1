<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
</head>
<body>
	<jsp:include page="/layout/header.jsp"></jsp:include>
	
	<link
      href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
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
                  <span>모임 게시글 수정</span>
               </h4>
            </div>
            
            <c:url value="/updateBoard" var="updateBoard"/>            
            <form id="form" action="${updateMeetingBoard }">
             <div class="form-group">
                		<label for="">장소 선택</label><br> 
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
		</div>
                  <div class="form-group">
                     <label for="제목"> 제목 </label> <input type="text"
                        class="form-control" id="meetingBoardTitle" name="meetingBoardTitle"
                        value="${meetingBoard.meetingBoardTitle }">
                  </div>

                  <fieldset class=bound>
                     <legend>
                        <label for="내용"> 내용 </label>
                        <!--게시판 내용 입력 하는 에디터가 들어감   -->
                        <div id="summernote">
                           ${meetingBoard.meetingBoardContent }
                        </div>
                     </legend>
                  </fieldset>

              
               <!-- 저장 버튼으로 자바스크립트를 통해 ajax -> 컨트롤러로 전송하는 부분 -->
               <div class="col-sm-12 text-center">
                     <button id="save" type="submit" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">수정
          			 </button>
          	
          	 </div>
          	
            </form>
         </div>
      </div>
   </div>

   <div class="col-md-2">
      <!--양 옆 공백을 위한 div 건들지 마시오  -->
   </div>
   	 <br>
     <br>
	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
<script>
var sel1;
var sel2;

<c:url value="/changeCapital" var="changeCapital"/>
	$("#sel1").on("change", function(){
		changeCapital($("#sel1").val());
	});
	function changeCapital(strdo){
		var citystr="";
		$(".sel2").remove();
		$.ajax({
			type:"get",
			url:"${changeCapital}",
			dataType:"json",
			data: {
				"sel1":strdo	
			},
			success:function(data){
				for(var i=0; i<data.length; i++){
					var location="${meetingBoard.place}";
					var strArray=location.split(",");
					if(data[i].city==strArray[1]){
						citystr+="<option class='sel2' selected>"+data[i].city+"</option>";
					}else{
						citystr+="<option class='sel2'>"+data[i].city+"</option>";
					}
				}
				$("#sel2").append(citystr);
			},
			error : function(xhr, status, error){
				alert(error);
			},
			ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
		});
	}
	
	$(document).on("ready", function(){
        var location="${meetingBoard.place }";
        
        var strArray=location.split(",");
        $("#sel1").val(strArray[0]);
        changeCapital(strArray[0]);
	});
   
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
   

   ////////////////////////////////////////////////////
   <c:url value="/updateMeetingBoard" var="updateMeetingBoard"/>
   $("#form").on("submit", function(e){
      e.preventDefault();
      var meetingBoardTitle = $("#meetingBoardTitle").val();
      var markupStr = $('#summernote').summernote('code');
      var locationP = $("#sel1").val()+","+$("#sel2").val();
      console.log(locationP);
      var allData = {
		 "meetingBoardNo" : "${meetingBoard.meetingBoardNo }",    		  
         "meetingBoardTitle" : meetingBoardTitle,
         "meetingBoardContent" : markupStr,
         "location" : locationP
      };
      
      if (locationP == null) {
         alert("지역을 선택하여 주십시오.");
      } else if (meetingBoardTitle == null) {
         alert("제목을 입력하여 주십시오.");
      } else if (markupStr==null){
         alert("내용을 입력하여 주십시오.");
      } else {
         $.ajax({
            type : "post",
            url : "${updateMeetingBoard }",
            data : allData,
            success : function(res) {
               if(res=="저장"){
            	  <c:url value="/retrieveMeetingBoard" var="retrieveMeetingBoard"/>
                  location.href="${retrieveMeetingBoard }?meetingBoardNo=${meetingBoard.meetingBoardNo }";
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