<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS FILES -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

<link rel="stylesheet" href="css/fractionslider.css" />
<link rel="stylesheet" href="css/style-fraction.css" />

<link rel="stylesheet" type="text/css" href="css/switcher.css"
	media="screen" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/plugins/canvas-to-blob.js"></script>
<script src="js/fileinput.js"></script>
<!-- MetisMenu CSS -->
<link href="css/metisMenu/metisMenu.min.css" rel="stylesheet">
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
					<div class="col-sm-4 col-md-4 col-lg-4">
						<img src="../WEB_INF/resources/images/admin.png" class="img-circle"
							 width="150" height="150"> <br>
						<h4 align="left">
							${login.nickname } 
							<span class="label label-default"style="background-color: grey">관리자</span>
						</h4>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4">
						<div class="serviceBox_2">
							<a href="mypage/adminpage_board.jsp" style="color:#555;">
							<i class="fa fa-edit"></i>
							<h3>총 게시글 관리</h3>
							<p>Total: 295</p>
							</a>
							
						</div>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4">
						<div class="serviceBox_2">
							<a href="mypage/adminpage_user.jsp" style="color:#555";>
							<i class="fa fa-users"></i>
							<h3>회원 관리</h3>
							<p>Total: 56</p>
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