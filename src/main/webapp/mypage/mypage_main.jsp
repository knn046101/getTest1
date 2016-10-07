<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>Insert title here</title>
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
	<div class="container">
		<div class="row content">
			<div class="row sub_content">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="dividerHeading">
						<h4>
							<span>모아보기</span>
						</h4>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="sidebar">
					<div class=" col-sm-3 navbar-collapse">
						<img src="../images/ma.png" class="img-circle" alt="Cinque Terre"
							width="150" height="150"><br>
						<h4 align="left">
							마동석 <span class="label label-default">일반회원</span>
						</h4>
						<ul class="nav nav-pills nav-stacked">
							<li class="active"><a href="index.html"><i
									class="fa fa-dashboard fa-fw"></i>정보수정</a></li>
							<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>내글<span
									class="fa arrow"></span></a></li>
							<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>관심사</a>
							</li>
							<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>스크랩</a>
							</li>
							<li><a href="#"><i class="fa fa-wrench fa-fw"></i>모임<span
									class="fa arrow"></span></a></li>
						</ul>

					</div>
				</div>


				<div class="container col-sm-10">
					<div class="row sub_content">

						<hr>
						<div class="row">
							<div class="col-sm-2 text-center ">
								<h3>
									<a href="#">내글</a>

								</h3>
							</div>
							<div class="row sub_content">
								<div class="col-lg-9 ">
									<div class="images-style">
										<div class="row">
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="row">
							<div class="col-sm-2 text-center ">
								<h3>
									<a href="#">관심사</a>

								</h3>
							</div>
							<div class="row sub_content">
								<div class="col-lg-9 ">
									<div class="images-style">
										<div class="row">
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
												<div class="row">
							<div class="col-sm-2 text-center ">
								<h3>
									<a href="#">스크랩</a>

								</h3>
							</div>
							<div class="row sub_content">
								<div class="col-lg-9 ">
									<div class="images-style">
										<div class="row">
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
										<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
											<div class="col-sm-3 images-style-inner">
												<a href="#"><img class="img-rounded img-responsive"
													src="images/img-style.png" alt="" /></a>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script></script>
</html>