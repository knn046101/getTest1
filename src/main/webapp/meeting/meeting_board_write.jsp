<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
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
                  <span>모임 게시판 작성</span>
               </h4>
            </div>
            
            <form id="form">
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
            <label for="meetingBoardTitle">모임 게시판 이름</label> 
            <input type="text" class="form-control" id="meetingBoardTitle" name="meetingBoardTitle">
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

                 
          <!-- 저장 버튼으로 자바스크립트를 통해 ajax -> 컨트롤러로 전송하는 부분 -->
          <div class="col-sm-12 text-center">
       	   <span class="input-group-btn">
            <button id="save" type="submit" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">

            저장</button>

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
	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
<script>
var sel1;
var sel2;

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
   
   $("#form").on("submit", function(e){
      e.preventDefault();
      
      var meetingBoardTitle = $("#meetingBoardTitle").val();
      var meetingBoardCotent = $('#summernote').summernote('code');
      var locationP = $("#sel1").val()+","+$("#sel2").val();
      
      var allData = {
         "meetingBoardTitle" : meetingBoardTitle,
         "meetingBoardCotent" : meetingBoardCotent,
         "location" : locationP,
         "meetingNo" : "<%=request.getParameter("meetingNo")%>",
         "id" : "${login.id}"
      };
      if (locationP == ",null") {
         alert("지역을 선택하여 주십시오.");
         return false;
      } else if (meetingBoardTitle=="") {
         alert("제목을 입력하여 주십시오.");
         return false;
      }  else if (meetingBoardCotent=="<p>null</p>" && meetingBoardCotent=="<p>내용을 입력하세요</p>"){
         alert("내용을 입력하여 주십시오.");
         return false;
      } else {
    	  <c:url value="/addMeetingBoard" var="addMeetingBoard"/>
         $.ajax({
            type : "post",
            url : "${addMeetingBoard }",
            data : allData,
            success : function(res) {
               if(res=="저장"){
            	<c:url value="/retrieveMeeting" var="retrieveMeeting"/>
               	location.href="${retrieveMeeting}?meetingNo=<%=request.getParameter("meetingNo")%>";
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