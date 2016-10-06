<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="css/fractionslider.css"/>
    <link rel="stylesheet" href="css/style-fraction.css"/>

    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/plugins/canvas-to-blob.js"></script>
<script src="js/fileinput.js"></script>

<script type="text/javascript">
</script>

</head>
<body>
	 <jsp:include page="/layout/header.jsp"></jsp:include>   

       
   <div >
  
      <sform:form class="form-horizontal" role="form" method="post"  action="addUser" modelAttribute="member">
                
         <div class="page-header">
            <h1 class="text-center">
               회원가입
            </h1>
         </div>

         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputEmail">프로필 사진 등록</label>
            <div class="col-sm-6">
               <div id="imagePreview"></div><br>
               <input id="image" type="file" onchange="InputImage();">
            </div>
         </div>
         
         <div class="form-group">
            <sform:label path="id" class="col-sm-3 control-label" for="inputEmail">ID</sform:label>
            <div class="col-sm-6">
               <sform:input path="id" class="form-control" placeholder="ID" />
               <sform:errors element="span class='errormsg'" path="id"/>
               <span class="input-group-btn">
                     <button id="checkId" type="button" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">중복확인
                     <i class="fa fa-chevron-down spaceLeft"></i></button><label id="afterId"></label>
                  </span>
            </div>
         </div>
         <div class="form-group">
            <sform:label path="email" class="col-sm-3 control-label" for="inputEmail">이메일</sform:label>
            <div class="col-sm-6">
               <sform:input path="email" class="form-control" id="inputEmail" type="email" placeholder="Email"></sform:input>
               <sform:errors element="span class='errormsg'" path="email"/>
                  <span class="input-group-btn">
                     <button id="checkEmail" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">중복확인
                     <i class="fa fa-chevron-down spaceLeft"></i></button>
                  </span>
            </div>
         </div>
         <div class="form-group">
            <sform:label path="pass" class="col-sm-3 control-label" for="inputPassword">비밀번호</sform:label>
            <div class="col-sm-6">
               <sform:input path="pass" class="form-control" id="inputPassword" type="password"
                  placeholder="비밀번호"></sform:input>
                <sform:errors element="span class='errormsg'" path="pass"/>
               <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
               확인</label>
            <div class="col-sm-6">
               <input class="form-control" id="inputPasswordCheck" type="password"
                  placeholder="비밀번호 확인">
               <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
            </div>
         </div>
            <div class="form-group">
            <label class="col-sm-3 control-label" for="inputPasswordFind">비밀번호 찾기 질문</label>
            <div class="col-sm-6">
               <select class="form-control" id="inputPasswordFind" >
                  <option>내 보물 1호는?</option>
               </select>
            </div>
         </div>
            <div class="form-group">
            <label class="col-sm-3 control-label" for="inputPasswordAnswer">비밀번호 질문 답</label>
            <div class="col-sm-6">
               <input class="form-control" id="inputPasswordAnswer" type="text">
               
            </div>
         </div>
         <div class="form-group">
            <sform:label path="nickName" class="col-sm-3 control-label" for="inputName">닉네임</sform:label>
            <div class="col-sm-6">
               <div >
               <sform:input path="nickName" class="form-control" id="inputName" type="text"
                  placeholder="닉네임"/><sform:errors element="span class='errormsg'" path="nickName"/>
                  <span class="input-group-btn">
                     <button class="btn btn-success" style="background-color:#27AB99; border-color:#fff;" >중복확인
                     <i class="fa fa-chevron-down spaceLeft"></i></button>
                  </span>
               </div>
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputArea">지역</label>
            <div class="row">            
               <div class="col-sm-6">
                  <select class="form-control" id="sel1">
                     <option>서울특별시</option>
                  </select>
               </div>
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputKeyword">키워드</label>
            <div class="row">            
               <div class="col-sm-6">
                  <input class="form-control" id="inputKeyword" type="text"
                  placeholder="#키워드">
               </div>
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
            <div class="col-sm-6" data-toggle="buttons">
               <label class="btn btn-warning active"> <input id="agree"
                  type="checkbox" autocomplete="off" checked="checked"> <span
                  class="fa fa-check"></span>
               </label> <a href="#">이용약관</a> 에 동의 합니다.
            </div>
         </div>
         <div class="form-group">
            <div class="col-sm-12 text-center">
               <button class="btn btn-primary" type="submit" style="background-color:orange; border-color:#fff;" onclick="location='join_after.jsp'">
                  회원가입<i class="fa fa-check spaceLeft"></i>
               </button>
               <button class="btn btn-default" type="submit" style="background-color:#27AB99; border-color:#fff;">
                  가입취소<i class="fa fa-times spaceLeft"></i>
               </button>
            </div>
         </div>
         <hr>
   </sform:form>
  
   <jsp:include page="/layout/footer.jsp"></jsp:include>
   </div>
</body>
<script>
               
      //이미지넣기
      var InputImage =  (function loadImageFile() {
    	  if (window.FileReader) {
        	var ImagePre; 
        	var ImgReader = new window.FileReader();
      		var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i; 
 
       		ImgReader.onload = function (Event) {
            if (!ImagePre) {
                var newPreview = document.getElementById("imagePreview");
                ImagePre = new Image();
                ImagePre.style.width = "200px";
                ImagePre.style.height = "140px";
                newPreview.appendChild(ImagePre);
            }
            ImagePre.src = Event.target.result;
        };
        return function () {
            var img = document.getElementById("image").files;
            if (!fileType.test(img[0].type)) { 
             alert("이미지 파일을 업로드 하세요"); 
             return; 
            }
            ImgReader.readAsDataURL(img[0]);
        }
    }
    document.getElementById("imagePreview").src = document.getElementById("image").value;
});

	/* $(function() {
         //모달을 전역변수로 선언
         var modalContents = $(".modal-contents");
         var modal = $("#defaultModal");

         $('.onlyAlphabetAndNumber').keyup(function(event) {
            if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
               var inputVal = $(this).val();
               $(this).val($(this).val().replace(/[^_a-z0-9]/gi, '')); //_(underscore), 영어, 숫자만 가능
            }
         });

         $(".onlyHangul").keyup(function(event) {
            if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
               var inputVal = $(this).val();
               $(this).val(inputVal.replace(/[a-z0-9]/gi, ''));
            }
         });

         $(".onlyNumber").keyup(function(event) {
            if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
               var inputVal = $(this).val();
               $(this).val(inputVal.replace(/[^0-9]/gi, ''));
            }
         });

         //------- 검사하여 상태를 class에 적용
         $('#id').keyup(function(event) {

            var divId = $('#divId');

            if ($('#id').val() == "") {
               divId.removeClass("has-success");
               divId.addClass("has-error");
            } else {
               divId.removeClass("has-error");
               divId.addClass("has-success");
            }
         });

         $('#password').keyup(function(event) {

            var divPassword = $('#divPassword');

            if ($('#password').val() == "") {
               divPassword.removeClass("has-success");
               divPassword.addClass("has-error");
            } else {
               divPassword.removeClass("has-error");
               divPassword.addClass("has-success");
            }
         });

         $('#passwordCheck').keyup(function(event) {

            var passwordCheck = $('#passwordCheck').val();
            var password = $('#password').val();
            var divPasswordCheck = $('#divPasswordCheck');

            if ((passwordCheck == "") || (password != passwordCheck)) {
               divPasswordCheck.removeClass("has-success");
               divPasswordCheck.addClass("has-error");
            } else {
               divPasswordCheck.removeClass("has-error");
               divPasswordCheck.addClass("has-success");
            }
         });

         $('#name').keyup(function(event) {

            var divName = $('#divName');

            if ($.trim($('#name').val()) == "") {
               divName.removeClass("has-success");
               divName.addClass("has-error");
            } else {
               divName.removeClass("has-error");
               divName.addClass("has-success");
            }
         });

         $('#nickname').keyup(function(event) {

            var divNickname = $('#divNickname');

            if ($.trim($('#nickname').val()) == "") {
               divNickname.removeClass("has-success");
               divNickname.addClass("has-error");
            } else {
               divNickname.removeClass("has-error");
               divNickname.addClass("has-success");
            }
         });

         $('#email').keyup(function(event) {

            var divEmail = $('#divEmail');

            if ($.trim($('#email').val()) == "") {
               divEmail.removeClass("has-success");
               divEmail.addClass("has-error");
            } else {
               divEmail.removeClass("has-error");
               divEmail.addClass("has-success");
            }
         });

         $('#phoneNumber').keyup(function(event) {

            var divPhoneNumber = $('#divPhoneNumber');

            if ($.trim($('#phoneNumber').val()) == "") {
               divPhoneNumber.removeClass("has-success");
               divPhoneNumber.addClass("has-error");
            } else {
               divPhoneNumber.removeClass("has-error");
               divPhoneNumber.addClass("has-success");
            }
         }); */

          //------- validation 검사
         $("form").submit(
               function(event) {

                  var provision = $('#provision');
                  var memberInfo = $('#memberInfo');
                  var divId = $('#divId');
                  var divPassword = $('#divPassword');
                  var divPasswordCheck = $('#divPasswordCheck');
                  var divName = $('#divName');
                  var divNickname = $('#divNickname');
                  var divEmail = $('#divEmail');
                  var divPhoneNumber = $('#divPhoneNumber');

                  //회원가입약관
                  if ($('#provisionYn:checked').val() == "N") {
                     modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
                     modal.modal('show'); //모달 띄우기

                     provision.removeClass("has-success");
                     provision.addClass("has-error");
                     $('#provisionYn').focus();
                     return false;
                  } else {
                     provision.removeClass("has-error");
                     provision.addClass("has-success");
                  }

                  //개인정보취급방침
                  if ($('#memberInfoYn:checked').val() == "N") {
                     modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
                     modal.modal('show');

                     memberInfo.removeClass("has-success");
                     memberInfo.addClass("has-error");
                     $('#memberInfoYn').focus();
                     return false;
                  } else {
                     memberInfo.removeClass("has-error");
                     memberInfo.addClass("has-success");
                  }
            });
      }); 
	
	////////////////////// 체크하는 코드 및 전송 ajax
	
	$("#checkId").on("click", function(){
		if($("#checkId").html()){
			$("#afterId").html("아이디를 입력하여주십시오.");
		}else{
			
		}
	});
   </script>
</html>