<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
		
		 <form class="form-horizontal" role="form" method="post">
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
            		 <button onclick="location='<%=request.getContextPath()%>/list/find_user_pass2.jsp'" class="btn btn-primary" type="submit" style="background-color:#27AB99;border-color:#fff;">다음으로</button>
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

</script>
</html>