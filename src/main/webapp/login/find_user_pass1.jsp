<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
<!-- CSS FILES -->
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="../css/fractionslider.css"/>
    <link rel="stylesheet" href="../css/style-fraction.css"/>

    <link rel="stylesheet" type="text/css" href="../css/switcher.css" media="screen" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br>
		<br>
	
		 <form class="form-horizontal" role="form" method="post"
      action="javascript:alert( '로그인 성공' );">
     <div class="dividerHeading">
		<h4><span>로그인</span></h4>
	</div>
	<br>
	<br>
      <div class="form-group">
      	 <label class="col-sm-3 control-label">PASSWORD</label>
         <div class="col-sm-6">
            <input class="form-control" type="text" id="email" 
               placeholder="회원가입할때 입력한 이메일을 작성하세요.">
         </div>
         <br>
         <a class="btn btn-lg btn-default" href="#">확인</a>
      </div>
	  
      <div class="form-group">
         <label class="col-sm-3 control-label">PASSWORD</label>
         <div class="col-sm-6">
            <input class="form-control" id="inputPassword" type="password"
               placeholder="비밀번호를 입력해주세요">
         </div>
      </div>
					
				</form>	
				</div>

	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>



</body>
<script></script>
</html>