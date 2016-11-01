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
            		 <button id="nextBtn" class="btn btn-primary" type="button" style="background-color:#27AB99;border-color:#fff;">다음으로</button>
            	</div>
            	<br>
            </div>
           		
        	 </div>
       	 </div>
	  
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>


</body>
<script>
	var id="<%=request.getParameter("id")%>"
	$("#nextBtn").on("click",function(){
		var question=$("#inputPasswordFind").val();
		var answer=$("#inputPasswordAnswer").val()
		
		var data={
			"question":question,
			"answer":answer,
			"id":id
		};
		
		<c:url value="/passCheck2" var="passCheck2"/>
		$.ajax({
			type:"post",
			url:"${passCheck2}",
			data: data,
			success : function(data) {
				if(data=="성공"){
					location.href="<%=request.getContextPath()%>/login/find_user_pass3.jsp?id="+id;
				}else{
					alert("질문과 답을 다시 입력하여 주십시오.");
				}
			},
			error : function(xhr, status, error) {
				alert("다시 입력하여 주십시오.");
			},
			ContentType : "application/x-www-form-urlencoded;charset=UTF-8"
		});
	});
</script>
</html>