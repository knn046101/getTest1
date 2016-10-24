<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
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
	<br>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="dividerHeading">
				<h4>
					<span>아이디 찾기</span>
				</h4>
			</div>
			<br> <br> <br>
		</div>
		<div class="form-group col-sm-12">
			<label class="col-sm-3 control-label"></label>
			<div class="col-sm-6">
				<input class="form-control" name="findEmail" type="text" id="email"
					placeholder="회원가입시 등록한 이메일을 주소를 작성해주세요." /> <br>
			</div>
		</div>
		<div style="text-align: center;">
			<a class="btn btn-lg btn-default">OK</a>
		</div>
	</div>
	<br>
	<br>
      <div class="form-group">
      	 <label class="col-sm-3 control-label"></label>
         <div class="col-sm-6">
           <div class="col-sm-12 text-center">
            	<button class="btn btn-primary" type="submit" style="background-color:#27AB99;border-color:#fff;">ID 확인하기</button>
            </div>
         </div>
		<br><br><br><br>
      </div>

		
<jsp:include page="/layout/footer.jsp"></jsp:include>
		

</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	<c:url value="/findId" var="findId"/>
	$(".btn").on("click", function() {
		var eamil = $("#email").val();
		console.log(email);
		$.ajax({
			type : "post",
			url : "${findId}",
			data : {
				"email" : email
			},
			success : function(data) {
				$(".form-control").val(data);
			},
			error : function(xhr, status, error) {
				alert(error);
			},
			ContentType : "application/x-www-form-urlencoded;charset=UTF-8"
		});
	});
</script>
</html>