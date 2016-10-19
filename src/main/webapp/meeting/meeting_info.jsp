<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
	<jsp:include page="/layout/header.jsp"></jsp:include>

	<div class="container">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<h2>신전떡볶이 천안모임&nbsp;</h2>
							<nav id="breadcrumbs">충남 > #신전 #떡볶이 #음식</nav>
							<nav style="float: right">
								<label for="follow">팔로우</label>
								<button id="follow" style="color: #27AB99;">
									<i class="fa fa-heart-o"></i>
								</button>
							</nav>
						</div>
					</div>
				</div>

				<div class="row sub_content">
						<div class="col-lg-6 col-sm-6 col-md-6">
							<div class="dividerHeading">
								<h4>
									<span>모임 소개</span>
								</h4>

							</div>
							<div class="widget_content content center">
							<img class="left_img img-thumbnail" src="images/about_1.png">
							<div class="content">
							<br><br><br><br><br><br>
							</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6">
							<div class="dividerHeading">
								<h4>
									<span>게시판</span>
								</h4>
							</div>
							<ul class="list_style circle">
								<li><a href="meeting_board_info.jsp"><i
										class="fa fa-angle-right"></i> 신전 1차 정모</a></li>
								<li><a href="meeting_board_info.jsp"><i
										class="fa fa-angle-right"></i> 신전 2차 정모</a></li>
								<li><a href="meeting_board_info.jsp"><i
										class="fa fa-angle-right"></i> 신전 3차 정모</a></li>
								<li><a href="meeting_board_info.jsp"><i
										class="fa fa-angle-right"></i> 신전 4차 정모</a></li>
								<li><a href="meeting_board_info.jsp"><i
										class="fa fa-angle-right"></i> 신전 5차 정모</a></li>
							</ul>
						</div>
				</div>
			</div>




	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
<script>
	
</script>
</html>