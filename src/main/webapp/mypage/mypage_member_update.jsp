<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/layout/whatcss.jsp"></jsp:include>
<jsp:include page="/layout/whatjs.jsp"></jsp:include>

<style>
.errormsg {
	color: red;
}
</style>
</head>
<body>
	<jsp:include page="/layout/header.jsp"></jsp:include>

	<br>
	<br>

	<div class="container-fluid">
		<div class="row sub_content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="dividerHeading">
					<h4>
						<span>정보수정</span>
					</h4>

				</div>
			</div>
		</div>
		<section class="wrapper">
			<section class="content left_sidebar">
				<div class="container">
					<div class="row">
						<!--Sidebar Widget-->
						<div class="col-lg-3">
							<div class="sidebar">
								<div class="widget widget_categories">
									<ul class="arrows_list sidenav">
										<li><img src="${login.profileImg }" class="img-circle"
											alt="${login.nickname }" width="150" height="150" hspace="50"> <br>
										</li>
										<h4 align="center">

											${login.nickname } <span class="label label-default"
												style="background-color: grey">일반회원</span>
										</h4>

										<div class="widget_title">
											<h4>
												<span>마이페이지</span>
											</h4>
										</div>
										<c:url value="/mypageUpdate" var="mypageUpdate"/>
										<li><a href="${mypageUpdate }">
										<i class="fa fa-angle-right"></i>정보수정</a></li>
										<li style="margin-left: 10px"><a
											href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
												내글</a></li>
										<li style="margin-left: 10px"><a
											href="<%=request.getContextPath()%>/mypage/mypage_favorite.jsp">
												관심사</a></li>
										<li style="margin-left: 10px"><a
											href="<%=request.getContextPath()%>/mypage/mypage_scrap.jsp">
												스크랩</a></li>
										<li style="margin-left: 10px"><a
											href="<%=request.getContextPath()%>/mypage/mypage_meeting.jsp">
												모임</a></li>

									</ul>
								</div>
							</div>

						</div>

						<div class="col-lg-6 container ">
							<sform:form id="form" class="form-horizontal" role="form"
							method="post" action="updateUser" modelAttribute="member">

							<div class="form-group">
								<sform:label path="profileImg" class="col-sm-3 control-label"
									for="inputEmail">프로필 사진 등록</sform:label>
								<div class="col-sm-6">
									<div id="imagePreview"></div>
									<br>
									<sform:input path="profileImg" id="image" type="file"
										onchange="InputImage();"></sform:input>
								</div>
							</div>
							<div class="form-group">
								<sform:label path="pass" class="col-sm-3 control-label"
									for="inputPassword">비밀번호</sform:label>
								<div class="col-sm-6">
									<sform:input path="pass" class="form-control"
										id="inputPassword" type="password" placeholder="비밀번호"
										onblur="checkPass()"></sform:input>
									<sform:errors element="span class='errormsg'" path="pass" />
									<p class="help-block" id="passP">숫자, 특수문자 포함 8자 이상</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
									확인</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputPasswordCheck"
										type="password" placeholder="비밀번호 확인" onblur="checkSamePass()">
									<p class="help-block" id="passS">비밀번호를 한번 더 입력해주세요.</p>
								</div>
							</div>
							<div class="form-group">
								<sform:label path="nickname" class="col-sm-3 control-label"
									for="inputName">닉네임</sform:label>
								<div class="col-sm-6">
									<div>
										<sform:input path="nickname" class="form-control"
											id="inputName" type="text" placeholder="닉네임" />
										<sform:errors element="span class='errormsg'" path="nickname" />
										<span class="input-group-btn">
											<button type="button" id="checkNickname"
												class="btn btn-success"
												style="background-color: #27AB99; border-color: #fff;">
												중복확인 <i class="fa fa-chevron-down spaceLeft"></i>
											</button>
										</span>
									</div>
								</div>
							</div>

							<div class="form-group">
								<sform:label path="region" class="col-sm-3 control-label"
									for="inputArea">지역</sform:label>
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
								<sform:label path="favorite" class="col-sm-3 control-label"
									for="inputKeyword">키워드</sform:label>
								<div class="row">
									<div class="col-sm-6">
										<sform:input path="favorite" class="form-control"
											id="inputKeyword" type="text"
											placeholder="#키워드     ex)   #뭐하지#뭐하조"></sform:input>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12 text-center">
									<sform:button class="btn btn-primary"
										style="background-color:orange; border-color:#fff;">
                  						수정<i class="fa fa-check spaceLeft"></i>
									</sform:button>
									<sform:button onclick="memberDel()" class="btn btn-default"
										type="button"
										style="background-color:#27AB99; border-color:#fff;">
               							  탈퇴<i class="fa fa-times spaceLeft"></i>
									</sform:button>
								</div>
							</div>
							<hr>
						</sform:form>
							
						</div>
					</div>
				</div>
			</section>
		</section>
	</div>






	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script>
var checkIdComplete=false;
var checkEmailComplete=false;
var checkNicknameComplete=false;
var profileImg="";


	var InputImage = (function loadImageFile() {
		if (window.FileReader) {
			var ImagePre;
			var ImgReader = new window.FileReader();
			var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i;

			ImgReader.onload = function(Event) {
				if (!ImagePre) {
					var newPreview = document.getElementById("imagePreview");
					ImagePre = new Image();
					ImagePre.style.width = "200px";
					ImagePre.style.height = "140px";
					ImagePre.type = "circle";
					newPreview.appendChild(ImagePre);
				}
				ImagePre.src = Event.target.result;

			};

			return function() {

				var img = document.getElementById("image").files;

				if (!fileType.test(img[0].type)) {
					alert("이미지 파일을 업로드 하세요");
					return;
				}

				ImgReader.readAsDataURL(img[0]);
			}

		}

		document.getElementById("imagePreview").src = document
				.getElementById("image").value;

	})();

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
    var memberDel = function(){
      location.href="<%=request.getContextPath()%>/mypage/mypage_member_delete.jsp";
	}

	var checkPass = function() {
		var pass = $("#inputPassword").val();
		var check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
		if (!check.test(pass)) {
			$("#passP").css("color", "red");
		} else {
			if (pass.length < 8) {
				$("#passP").css("color", "red");
			} else {
				$("#passP").css("color", "black");
			}
		}
	}

	var checkSamePass = function() {
		var pass1 = $("#inputPassword").val();
		var pass2 = $("#inputPasswordCheck").val();
		if (pass1 == pass2) {
			$("#passS").css("color", "black");
		} else {
			$("#passS").css("color", "red");
		}
	}

	<c:url value="/checkNickname" var="checkNickname"/>
	$("#checkNickname").on("click", function() {
		var checkNickname = $("#inputName").val();
		$.ajax({
			type : "post",
			url : "${checkNickname}",
			data : {
				"nickname" : checkNickname
			},
			success : function(data) {
				alert(data);
				if (data == "등록 가능한 닉네임입니다.") {
					checkNicknameComplete = true;
				} else {
					checkNicknameComplete = false;
				}
			},
			error : function(xhr, status, error) {
				alert(error);
			},
			ContentType : "application/x-www-form-urlencoded;charset=UTF-8"
		});
	});

	<c:url value="/changeCapital" var="changeCapital"/>
	$("#sel1")
			.on(
					"change",
					function() {
						var citystr = "";
						var sel1 = $("#sel1").val();
						$(".sel2").remove();
						$
								.ajax({
									type : "get",
									url : "${changeCapital}",
									dataType : "json",
									data : {
										"sel1" : sel1
									},
									success : function(data) {
										for (var i = 0; i < data.length; i++) {
											citystr += "<option class='sel2'>"
													+ data[i].city
													+ "</option>";
										}
										$("#sel2").append(citystr);
									},
									error : function(xhr, status, error) {
										alert(error);
									},
									ContentType : "application/x-www-form-urlencoded;charset=UTF-8"
								});
					});
</script>
</html>