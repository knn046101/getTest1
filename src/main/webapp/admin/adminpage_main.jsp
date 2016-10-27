<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<style>
a {
   color: #27AB99;
}
</style>
</head>
<body>
   <jsp:include page="/layout/header.jsp"></jsp:include>

   <br>
   <br>

   <div class="container-fluid">
      <div class="row sub_content">
         <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="dividerHeading">
               <h4>
                  <span>관리자 계정</span>
               </h4>

            </div>
         </div>
      </div>

		<section class="wrapper">
			<section class="content service">
				<div class="container">

					<div class="col-sm-6 col-md-6 col-lg-6">
						<div class="serviceBox_2">
							<a
								href="<%=request.getContextPath()%>/admin/adminpage_board.jsp"
								style="color: #555;"> <i class="fa fa-edit"></i>
								<h3>총 게시글 관리</h3>
								<label id="board"></label>
							</a>

						</div>
					</div>
						
					<div class="col-sm-6 col-md-6 col-lg-6">
						<div class="serviceBox_2">
							<a href="<%=request.getContextPath()%>/admin/adminpage_user.jsp"
								style="color: #555";> <i class="fa fa-users"></i>
								<h3>회원 관리</h3>
								<label id="user"></label>
							</a>
						</div><br>
					</div>
					
					<div class="col-sm-6 col-md-6 col-lg-6">
						<div class="serviceBox_2">
							<a
								href="<%=request.getContextPath()%>/admin/adminpage_adv_board.jsp"
								style="color: #555";> <i class="fa fa-bullhorn"></i>
								<h3>광고글 관리</h3>
								<label id="ad"></label>
							</a>

						</div>
					</div>
					
					<div class="col-sm-6 col-md-6 col-lg-6">
						<div class="serviceBox_2">
							<a
								href="<%=request.getContextPath()%>/admin/adminpage_notice_board.jsp"
								style="color: #555";> <i class="fa fa-bell-o"></i>
								<h3>알림 관리</h3>
								<label>Total: 11</label>
							</a>

						</div>
					</div>
					
				</div>
			</section>
		</section>


              
                  
            

   <jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script>
<c:url value="/countAd" var="countAd"/>
      $(document).on("ready",function(){
         $.ajax({
            type:"post",
            url:"${countAd}",
            dataType:"json",
            
            success:function(data){
               $("#ad").append("Total: ").append(data);
            },
            error:function(xhr, status, error){
               alert(error);
            },
            ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
         });
      });
      
<c:url value="/countUser" var="countUser"/>
         $(document).on("ready",function(){
            $.ajax({
               type:"post",
               url:"${countUser}",
               dataType:"json",
               
               success:function(data){
                  $("#user").append("Total: ").append(data);
               },
               error:function(xhr, status, error){
                  alert(error);
               },
               ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
            });
         });
      
<c:url value="/countBoard" var="countBoard"/>
            $(document).on("ready",function(){
               $.ajax({
                  type:"post",
                  url:"${countBoard}",
                  dataType:"json",
                  
                  success:function(data){
                     $("#board").append("Total: ").append(data);
                  },
                  error:function(xhr, status, error){
                     alert(error);
                  },
                  ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
               });
            });
   
</script>

</html>