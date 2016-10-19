<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
		
		
    		 <div class="dividerHeading">
				<h4><span>비밀번호 찾기</span></h4>
				
			</div>
		<br>
		<br>
		<div class="form-group">
			
      		 <label class="col-sm-3 control-label"></label>
         	 <div class="col-sm-6">
             <select class="form-control" id="inputPasswordFind" >
                  <option>내 보물 1호는?</option>
                  <option>출신 고등학교는?</option>
                  <option>내 꿈은?</option>
                  <option>내 생년월일은?</option>
              </select>
              <br>
           		 <input class="form-control" type="text" id="inputPasswordAnswer" 
               	placeholder="A. 답변작성">
            	<br>
            	<div class="col-sm-12 text-center">
            		 <button onclick="location='find_user_pass3.jsp'" class="btn btn-primary" type="submit" style="background-color:#27AB99;border-color:#fff;">다음으로</button>
            	</div>
            	<br>
            </div>
           		
        	 </div>
       	 </div>
	  
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>


</body>
<script></script>
</html>