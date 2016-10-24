<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>뭐 하 지 ?</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
							<h2>가입완료!</h2>
							<p>${member.nickname } 회원님 환영합니다.</p>
							<a href="<%=request.getContextPath() %>/main.jsp" class="btn btn-default btn-lg back_home">
								<i class="fa fa-arrow-circle-o-left"></i>
								홈으로
							</a>
							<a href="login/login.jsp" class="btn btn-default btn-lg back_home">
								<i class="fa fa-user"></i>
								로그인
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
</html>