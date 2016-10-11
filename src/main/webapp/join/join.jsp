<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<jsp:include page="/layout/whatcss.jsp"></jsp:include>
	<jsp:include page="/layout/whatjs.jsp"></jsp:include>
<!-- CSS FILES -->
 <!--    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="css/fractionslider.css"/>
    <link rel="stylesheet" href="css/style-fraction.css"/>

    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript">
</script> -->

<style>
	.errormsg{
		color: red;
	}
</style>
</head>
<body>
	 <jsp:include page="/layout/header.jsp"></jsp:include>   
	 <br>
	 <br>
    
      <div class="modal fade" id="defaultModal">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-hidden="true">×</button>
                  <h4 class="modal-title">알림</h4>
               </div>
               <div class="modal-body">
                  <p class="modal-contents"></p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      <!--// 모달창 -->
      
      <!-- 본문 들어가는 부분 -->
      <sform:form id="form" class="form-horizontal" role="form" method="post"  action="addUser" modelAttribute="member">
         <div class="dividerHeading">
			<h4><span>회원가입</span></h4>
		</div>

         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputEmail">프로필 사진 등록</label>
            <div class="col-sm-6">
               <input id="image" type="file" ></input>
               <div id="preview">
					<img id="imagePreview"/>
				</div>
				<sform:input type="hidden" path="profileImg" class="form-control" id="profileImg"></sform:input>
               <br>
            </div>
         </div>
         
         <div class="form-group">
            <sform:label path="id" class="col-sm-3 control-label" for="inputEmail">ID</sform:label>
            <div class="col-sm-6">
               <sform:input id="id" path="id" class="form-control" placeholder="ID" />
               <sform:errors element="span class='errormsg'" path="id"/>
               <span class="input-group-btn">
                     <button id="checkId" type="button" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">중복확인
                     <i class="fa fa-chevron-down spaceLeft"></i></button>
                  </span>
            </div>
         </div>
         <div class="form-group">
            <sform:label path="email" class="col-sm-3 control-label" for="inputEmail">이메일</sform:label>
            <div class="col-sm-6">
               <sform:input path="email" class="form-control" id="inputEmail" type="email" placeholder="Email"></sform:input>
               <sform:errors element="span class='errormsg'" path="email"/>
                  <span class="input-group-btn">
                     <button type="button" id="checkEmail" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">중복확인
                     <i class="fa fa-chevron-down spaceLeft"></i></button>
                  </span>
            </div>
         </div>
         <div class="form-group">
            <sform:label path="pass" class="col-sm-3 control-label" for="inputPassword">비밀번호</sform:label>
            <div class="col-sm-6">
               <sform:input path="pass" class="form-control" id="inputPassword" type="password"
                  placeholder="비밀번호" onblur="checkPass()"></sform:input>
                <sform:errors element="span class='errormsg'" path="pass"/>
               <p class="help-block" id="passP">숫자, 특수문자 포함 8자 이상</p>
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
               확인</label>
            <div class="col-sm-6">
               <input class="form-control" id="inputPasswordCheck" type="password"
                  placeholder="비밀번호 확인" onblur="checkSamePass()">
               <p class="help-block" id="passS">비밀번호를 한번 더 입력해주세요.</p>
            </div>
         </div>
            <div class="form-group">
            <sform:label path="question" class="col-sm-3 control-label" for="inputPasswordFind">비밀번호 찾기 질문</sform:label>
            <div class="col-sm-6">
               <sform:select path="question" class="form-control" id="inputPasswordFind" >
                  <option>내 보물 1호는?</option>
                  <option>출신 고등학교는?</option>
                  <option>내 꿈은?</option>
                  <option>내 생년월일은?</option>
               </sform:select>
            </div>
         </div>
            <div class="form-group">
            <sform:label path="answer" class="col-sm-3 control-label" for="inputPasswordAnswer">비밀번호 질문 답</sform:label>
            <div class="col-sm-6">
               <sform:input path="answer" class="form-control" id="inputPasswordAnswer" type="text"></sform:input>
               	
            </div>
         </div>
         
         <div class="form-group">
            <sform:label path="nickname" class="col-sm-3 control-label" for="inputName">닉네임</sform:label>
            <div class="col-sm-6">
               <div >
               <sform:input path="nickname" class="form-control" id="inputName" name="inputName" type="text"
                  placeholder="닉네임"/><sform:errors element="span class='errormsg'" path="nickname"/>
                  <span class="input-group-btn">
                     <button type="button" id="checkNickname" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;" >중복확인
                     <i class="fa fa-chevron-down spaceLeft"></i></button>
                  </span>
               </div>
            </div>
         </div>
         
         <div class="form-group">
            <sform:label path="birth" class="col-sm-3 control-label" for="inputBirth">생년월일</sform:label>
            <div class="col-sm-6">
               <div >
               <sform:input path="birth" class="form-control" id="inputName" type="text"
                  placeholder="생년월일 ex)19920328"/><sform:errors element="span class='errormsg'" path="birth"/>
               </div>
            </div>
         </div>
         
         <div class="form-group">
            <sform:label path="region" class="col-sm-3 control-label" for="inputArea">지역</sform:label>
            <div class="row">            
               <div class="col-sm-3">
                  <sform:select path="region" class="form-control" id="sel1">
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
                  </sform:select>
               </div>
               <div class="col-sm-3">
                  <sform:select path="region" class="form-control" id="sel2">
                  </sform:select>
               </div>
            </div>
         </div>
         <div class="form-group">
            <sform:label path="favorite" class="col-sm-3 control-label" for="inputKeyword">키워드</sform:label>
            <div class="row">            
               <div class="col-sm-6">
                  <sform:input path="favorite" class="form-control" id="inputKeyword" type="text"
                  placeholder="#키워드     ex)   #뭐하지#뭐하조"></sform:input>
               </div>
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
            <div class="col-sm-6" data-toggle="buttons">
               <label class="btn btn-warning active"> <input id="agree"
                  type="checkbox" > <span
                  class="fa fa-check"></span>
               </label> <a href="#">이용약관</a> 에 동의 합니다.
            </div>
         </div>
         <div class="form-group">
            <div class="col-sm-12 text-center">
               <sform:button class="btn btn-primary" style="background-color:orange; border-color:#fff;">
                  회원가입<i class="fa fa-check spaceLeft"></i>
               </sform:button>
               <sform:button onclick="home()" class="btn btn-default" type="button" style="background-color:#27AB99; border-color:#fff;">
                  가입취소<i class="fa fa-times spaceLeft"></i>
               </sform:button>
            </div>
         </div>
         <hr>
   </sform:form>
  
   <jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script>
	var checkIdComplete=false;
	var checkEmailComplete=false;
	var checkNicknameComplete=false;
	var reader;
	var profileImg;
	
	$("#form").on("submit", function(e){
		e.preventDefault();
 		if(checkIdComplete && checkEmailComplete && checkNicknameComplete){
			if($("#agree").is(":checked")){
				if($("#inputPassword").val()==$("#inputPasswordCheck").val()){
					this.submit();	
				}else{
					alert("비밀번호를 일치하여 주십시오.");	
				}
			}else{
				alert("약관에 동의하여 주십시오.");	
			}
		}else{
			alert("중복 확인을 클릭하여 주십시오.");
		} 
	});
    var home = function(){
      location.href="<%=request.getContextPath()%>/main.jsp";
    }

    var checkPass = function(){ 
    	var pass=$("#inputPassword").val();
    	var check=/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
    	if(!check.test(pass)){
    		$("#passP").css("color","red");
    	}else{
    		if(pass.length<8){
    			$("#passP").css("color","red");
    		}else{
    			$("#passP").css("color","black");
    		}
    	}
    }
    
    var checkSamePass = function(){ 
    	var pass1=$("#inputPassword").val();
    	var pass2=$("#inputPasswordCheck").val();
    	if(pass1==pass2){
    		$("#passS").css("color","black");
    	}else{
    		$("#passS").css("color","red");
    	}
    }
	/* 읽어온 이미지를 미리보기에 쏴준다 */
	$("#image").change(function() {
		readUploadImage(this);
	});

	
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
							profileImg = null;
							// 미리보기 부분을 null로 바꾼다.
						} else {
							$('#imagePreview').attr('src', e.target.result);
							$('#imagePreview').css('weight', "150px");
							$('#imagePreview').css('height', "150px");
							//썸네일로 미리보기 된 결과값(base64로 인코딩)을  result에 넣는다 
							//문자열 앞에 ""를 넣기 위해 앞뒤로 추가
							profileImg = "\"" + e.target.result + "\"";
							$("#profileImg").val(profileImg);
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
	////////////////////// 체크하는 코드 및 전송 ajax
	<c:url value="/checkId" var="checkId"/>
	$("#checkId").on("click", function(){
		var checkId=$("#id").val();
		console.log(checkId);
		$.ajax({
			type:"post",
			url:"${checkId}",
			data: {
				"id":checkId	
			},
			success:function(data){
				alert(data);
				if(data=="등록 가능한 아이디입니다."){
					checkIdComplete=true;
				}else{
					checkIdComplete=false;
				}
			},
			error : function(xhr, status, error){
				alert(error);
			},
			ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
		});
	});
	
	<c:url value="/checkEmail" var="checkEmail"/>
	$("#checkEmail").on("click", function(){
		var checkEmail=$("#inputEmail").val();
		console.log(checkEmail);
		$.ajax({
			type:"post",
			url:"${checkEmail}",
			data: {
				"email":checkEmail	
			},
			success:function(data){
				alert(data);
				if(data=="등록 가능한 이메일입니다."){
					checkEmailComplete=true;
				}else{
					checkEmailComplete=false;
				}
			},
			error : function(xhr, status, error){
				alert(error);
			},
			ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
		});
	});
	
	<c:url value="/checkNickname" var="checkNickname"/>
	$("#checkNickname").on("click", function(){
		var checkNickname=$("#inputName").val();
		$.ajax({
			type:"post",
			url:"${checkNickname}",
			data: {
				"nickname":checkNickname	
			},
			success:function(data){
				alert(data);
				if(data=="등록 가능한 닉네임입니다."){
					checkNicknameComplete=true;
				}else{
					checkNicknameComplete=false;
				}
			},
			error : function(xhr, status, error){
				alert(error);
			},
			ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
		});
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