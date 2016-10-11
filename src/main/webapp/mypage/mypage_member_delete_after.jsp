<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
<jsp:include page="/layout/whatcss.jsp"></jsp:include>
<jsp:include page="/layout/whatjs.jsp"></jsp:include>

</head>
<body>
		<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br>
		<br>
	
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4">
					<section class="content not_found">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-lg-12 col-md-12">
						<div class="page_404">
							<h2>탈퇴완료!</h2>
							<p>안녕히가십시오.</p>
							<a href="<%=request.getContextPath() %>/main.jsp" class="btn btn-default btn-lg back_home">
								<i class="fa fa-arrow-circle-o-left"></i>
								홈으로
							</a>
							<a href="<%=request.getContextPath() %>/join.jsp" class="btn btn-default btn-lg back_home">
								<i class="fa fa-arrow-circle-o-left"></i>
								회원가입
							</a>
						</div>
					</div>
				</div>
				
			</div>
		</section>
		
					</div>
				</div>
			</div>
		</div>
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script></script>
</html>