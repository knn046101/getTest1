<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS FILES -->
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="../css/fractionslider.css"/>
    <link rel="stylesheet" href="../css/style-fraction.css"/>

    <link rel="stylesheet" type="text/css" href="../css/switcher.css" media="screen" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<style>
</style>
<body>
   <jsp:include page="../layout/header.jsp"></jsp:include>
   <br>
   
   <form class="form-horizontal" role="form" method="post"
      action="javascript:alert( '로그인 성공' );">
      <div class="page-header">
         <h2 class="text-center">로그인</h2>
      </div>
      <div class="form-group">
         <label class="col-sm-3 control-label">ID</label>
         <div class="col-sm-6">
            <input class="form-control" type="text" id="inputId" 
               placeholder="ID를 입력해주세요">
         </div>
      </div>

      <div class="form-group">
         <label class="col-sm-3 control-label">PASSWORD</label>
         <div class="col-sm-6">
            <input class="form-control" id="inputPassword" type="password"
               placeholder="비밀번호를 입력해주세요">
         </div>
      </div>



      <div class="form-group">
         <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit" style="background-color:#27AB99;border-color:#fff;">로그인</button>
            <button onclick="location='../join/join.jsp'" class="btn btn-primary" type="submit" style="background-color:orange;border-color:#fff;">회원가입</button>
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
   <jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
<script></script>
</html>