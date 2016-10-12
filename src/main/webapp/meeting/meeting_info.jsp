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
<%@include file="/layout/whatcss.jsp"%>
<%@include file="/layout/whatjs.jsp"%>
<!-- CSS FILES -->
<!-- <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="../css/fractionslider.css"/>
    <link rel="stylesheet" href="../css/style-fraction.css"/>

    <link rel="stylesheet" type="text/css" href="../css/switcher.css" media="screen" /> -->
</head>


<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row sub_content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="dividerHeading">
					<h4>
						<span>모임</span>
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
											alt="${login.nickname }" width="150" height="150" hspace="50">
											<br></li>
										<h4 align="center">
											${login.nickname } 

										</h4>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
	</div>
	<jsp:include page="../layout/footer.jsp"></jsp:include>

</body>
<script>
</script>
</html>