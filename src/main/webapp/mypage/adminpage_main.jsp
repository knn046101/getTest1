<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<style>
a {
	color: #27AB99;
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
						<span>관리자 계정</span>
					</h4>

				</div>
			</div>
		</div>

		<section class="wrapper">
			<section class="content service">
				<div class="container">
					<div class="row sub_content">
						<div class="col-sm-3 col-md-3 col-lg-3">
							<img src=${login.profileImg } class="img-circle" width="150"
								height="150"> <br>
							<h4 align="left">
								${login.nickname } <span class="label label-default"
									style="background-color: grey">관리자</span>
							</h4>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="serviceBox_2">
								<a href="mypage/adminpage_board.jsp" style="color: #555;"> <i
									class="fa fa-edit"></i>
									<h3>총 게시글 관리</h3>
									<p>Total: 295</p>
								</a>

							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="serviceBox_2">
								<a href="mypage/adminpage_user.jsp" style="color: #555";> <i
									class="fa fa-users"></i>
									<h3>회원 관리</h3>
									<p>Total: 56</p>
								</a>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="serviceBox_2">
								<a href="mypage/adminpage_adv.jsp" style="color: #555";> <i
									class="fa fa-bullhorn"></i>
									<h3>광고글 관리</h3>
									<p>Total: 11</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
	</div>


	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script></script>

</html>