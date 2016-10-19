<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
						<span>회원탈퇴</span>
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
										<li><img src=${login.profileImg } class="img-circle"
											 width="150" height="150" hspace="50"> <br>
										</li>
										<h4 align="center">
											${login.nickname }
											<c:choose>
												<c:when test="${login.division eq 'Customer' }">
													<span class="label label-default"
														style="background-color: grey">일반회원</span>
												</c:when>
												<c:when test="${login.division eq 'Editor' }">
													<span class="label label-default"
														style="background-color: yellow">에디터</span>
												</c:when>
											</c:choose>
										</h4>

										<div class="widget_title">
											<h4>
												<span>마이페이지</span>
											</h4>
										</div>
										<c:url value="/mypageUpdate" var="mypageUpdate"/>
										<li><a href="${mypageUpdate }?loginId=${login.id }">
										<i class="fa fa-angle-right"></i>정보수정</a></li>
										</a></li>
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
							<div class="form-group">
								<label class="col-sm-3 control-label"></label>
								<label class="col-sm-3 control-label"></label>
								<label class="col-sm-3 control-label"></label>
								<label class="col-sm-3 control-label"></label>
							</div>
							

						</div>


						<div class="col-lg-6 container ">
							<div class="form-group">
								<label class="col-sm-3 control-label">ID</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" id="inputId"
										name="inputId" placeholder="ID를 입력해주세요">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-3 control-label">PASSWORD</label>
								<div class="col-sm-7">
									<input class="form-control" id="inputPassword" type="password"
										name="inputPassword" placeholder="비밀번호를 입력해주세요">
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12 text-center">
									<button class="btn btn-primary" onclick="location='../main.jsp'" type="submit"
										style="background-color: #27AB99; border-color: #fff;">홈으로</button>
									
									<button onclick="memberDel()" class="btn btn-primary"
										type="button"
										style="background-color: orange; border-color: #fff;">회원탈퇴</button>

								</div>
							</div>

						</div>
					</div>
				</div>
			</section>
		</section>
	</div>






	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script>
<c:url value="/getEditor" var="getEditor"/>
function memberDel{
	var id = $("#inputId").val();
	var pass = $("#inputPassword").val();
}

</script>
</html>