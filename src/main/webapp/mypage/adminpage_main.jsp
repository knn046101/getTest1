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
		<div class="container">
		<section class="wrapper">
			<section class="content left_sidebar">
				<div class="container">
					<div class="row">
						<!--Sidebar Widget-->
						<div class="col-lg-3">
							<div class="sidebar">
								<div class="widget widget_categories">
									<ul class="arrows_list sidenav">
										<li><img src="../WEB_INF/resources/images/admin.png" class="img-circle"
											width="150" height="150"> <br>
										
												<h4 align="left">
												${login.nickname } 
												<span class="label label-default"style="background-color: grey">관리자</span>
												</h4>
										</li>
									</ul>
								</div>
							</div>
							</div>
							<section class="wrapper">
			<div class="container">
				<div class="row sub_content">
					
                    <div class="col-lg-4">
                        <div class="serviceBox_1">
                            <div class="icon_service">
                                <i class="fa fa-laptop"></i>
                                <h3>Modern Design</h3>
                            </div>
                            <div class="fr_content">
                                <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor. Cum sociis natoque penatibus mag dis parturient.</p>
                                <a class="read" href="#">Read more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="serviceBox_1">
                            <div class="icon_service">
                                <i class="fa fa-trophy"></i>
                                <h3>Branding Theme</h3>
                            </div>
                            <div class="fr_content">
                                <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor. Cum sociis natoque penatibus mag dis parturient.</p>
                                <a class="read" href="#">Read more</a>
                            </div>
                        </div>
                    </div>
				</div>
				
			</div>
		</section>
		</div>
		

						
						
					</div>
				</div>

			</section>
		</section>
						</div>
						<div class="col-lg-6 "></div>
						
	</div>


	



	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script></script>

</html>