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
             	<input class="form-control" type="text" id="email" 
              	 placeholder="회원가입시 등록한 이메일을 주소를 작성해주세요.">
           		<br>
           		 <input class="form-control" type="text" id="id" 
               	placeholder="회원가입시 등록한 아이디를 작성해주세요.">
            	<br>
            	<div class="col-sm-12 text-center">
            		 <button class="btn btn-primary" type="submit" style="background-color:#27AB99;border-color:#fff;">다음으로</button>
            	</div>
        	 </div>
       	 </div>
	  </form>	
	</div>
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>
	
</body>

<script>
var email="<%=request.getParameter("email")%>";
var id="<%=request.getParameter("id")%>";
$(document).ready(function(){
	if(email!="null"){
		$("#email").val(email);
	}
	if(id!="null"){
		$("#id").val(id);
	}
});

$("#form").on("submit",function(e){
	e.preventDefault();
	id=$("#id").val();
	var data={
			"email":$("#email").val(),
			"id":id
	}
	<c:url value="/passCheck1" var="passCheck1"/>
	$.ajax({
		type:"post",
		url:"${passCheck1}",
		data: data,
		success : function(data) {
			if(data=="성공"){
				location.href="<%=request.getContextPath()%>/login/find_user_pass2.jsp?id="+id;
			}else{
				alert("다시 입력하여 주십시오.");
			}
		},
		error : function(xhr, status, error) {
			alert("다시 입력하여 주십시오.1");
		},
		ContentType : "application/x-www-form-urlencoded;charset=UTF-8"
	});
});
</script>
</html>