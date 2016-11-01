<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br>
		<br>
		
		 <form id="form" class="form-horizontal" role="form" method="post">
    		 <div class="dividerHeading">
				<h4><span>비밀번호 찾기</span></h4>
				
			</div>
		<br>
		<br>
		<div class="form-group">
      		 <label class="col-sm-3 control-label"></label>
         	 <div class="col-sm-6">
             	<input class="form-control" type="password" id="pass1" 
              	 placeholder="재설정할 비밀번호를 입력해주세요.">
           		<br>
           		 <input class="form-control" type="password" id="pass2" 
               	placeholder="재설정할 비밀번호를 한번더 입력해주세요.">
            	<br>
            	<center>
            		<Button type="button" class="btn btn-lg btn-default" id="rePass" href="#">비밀번호 재설정</Button>
            	</center>
        	 </div>
       	 </div>
	  </form>	
	</div>
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>


</body>
<script>
	
	$("#rePass").on("click", function(){
		var pass1=$("#pass1").val();
		var pass2=$("#pass2").val();
		var check=/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
		if(!check.test(pass1)){
			alert("숫자, 특수문자 포함 8자 이상");
		}else{
			if(pass1.length<8){
				alert("숫자, 특수문자 포함 8자 이상");
			}else{
				if(pass1!=pass2){
					alert("비밀번호를 일치시켜주십시오.");
				}else{
					var data={
							"id":"<%=request.getParameter("id")%>",
							"pass":pass1
					};
					<c:url value="/passCheck3" var="passCheck3"/>
						$.ajax({
							type:"post",
							url:"${passCheck3}",
							data: data,
							success : function(data) {
								if(data=="성공"){
									location.href="<%=request.getContextPath()%>/login/login.jsp";
								}else{
									alert("실패");
								}
							},
							error : function(xhr, status, error) {
								alert("다시 입력하여 주십시오.");
							},
							ContentType : "application/x-www-form-urlencoded;charset=UTF-8"
						});
				}
			}
		}
	});
</script>
</html>