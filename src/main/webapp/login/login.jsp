<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	 
</head>
<style>
</style>
<body>
   <jsp:include page="/layout/header.jsp"></jsp:include>
 
   <br>
   <div class="dividerHeading">
		<h4><span>로그인</span></h4>
	</div>
   <c:url value="/login" var="login"/>
   <form class="form-horizontal" role="form" method="post"
     	action="${login }">
   
	<br>
	<br>
      <div class="form-group">
       
       
         <label class="col-sm-3 control-label">ID</label>
         <div class="col-sm-6">
            <input class="form-control" type="text" id="inputId" name="inputId"
               placeholder="ID를 입력해주세요">
         </div>
      </div>

      <div class="form-group">
         <label class="col-sm-3 control-label">PASSWORD</label>
         <div class="col-sm-6">
            <input class="form-control" id="inputPassword" type="password" name="inputPassword"
               placeholder="비밀번호를 입력해주세요">
         </div>
      </div>

      <div class="form-group">
         <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit" style="background-color:#27AB99;border-color:#fff;">로그인</button>
            <c:url value="/join" var="join"/>
            <button onclick="location='${join }'" class="btn btn-primary" type="button" style="background-color:orange;border-color:#fff;">회원가입</button>
           	<a href="find_user_id.jsp" style="margin-left:300px; color:#303436;">   아이디찾기</a> 
            	<span>&#10072;</span>
            <a href="find_user_pass1.jsp" style="color:#303436;">  비밀번호찾기</a>
         </div>
      </div>
   </form>
   <br>
   <br>
   <br>
   <br>
   <br>
   <jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script>
	$(document).ready(function(){
		if("${loginFail }"=="다시 입력하여주십시오."){
			alert("${loginFail }");
		}
	});
</script>
</html>