<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>뭐 하 지 ?</title>
<meta name="description" content="">
<style>
	h3{
		text-align: center;
		margin-bottom:5px;
	}
</style>

</head>
<body>


	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br> <br>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="dividerHeading">
						<h4>
							<span>관리자 계정 (알림 관리)&nbsp;&nbsp;
							</span>
						</h4>
					</div>
					<label class="col-sm-3 control-label"></label> <br> <br>
					<div class="row sub_content">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#home">전체</a></li>
								<li><a data-toggle="tab" href="#menu1">수신동의</a></li>
								<li><a data-toggle="tab" href="#menu2">직장인</a></li>
								<li><a data-toggle="tab" href="#menu3">학생</a></li>
								<li><a data-toggle="tab" href="#menu4">기타</a></li>
							</ul>
							<div class="tab-content">
								<div id="home" class="tab-pane fade in active">
									<form id="form" class="form-horizontal" role="form"
										method="post" action="#">
										<div class="form-group">
											<h3>전체 알림</h3>
											<label class="col-sm-4 control-label" for="title0">알림 제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="title0"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="content0">알림 내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="content0"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label">알림 링크</label>
											
												<div class="col-sm-4">
				
												<input type="text" class="form-control col-sm-4" id="linkcontent0"></input> 
	
												</div>
											

										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="tab0">
													알림 등록<i class="fa fa-check spaceLeft"></i>
												</button>
											</div>
										</div>

									</form>
								</div>
								
								<div id="menu1" class="tab-pane fade">
									<form id="form" class="form-horizontal" role="form"
										method="post" action="#">
										<div class="form-group">
											<h3>수신 동의</h3>
											<label class="col-sm-4 control-label" for="title1">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="title1"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="content1">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="content1"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label">알림 링크
											</label>
											
												<div class="col-sm-4">
												
												<input type="text" class="form-control col-sm-4" id="linkcontent1"></input> 
												
												</div>
											

										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="tab1">
													알림 등록<i class="fa fa-check spaceLeft"></i>
												</button>
											</div>
										</div>

									</form>
								</div>
								
								<div id="menu2" class="tab-pane fade">
									<form id="form" class="form-horizontal" role="form"
										method="post" action="#">
										<div class="form-group">
											<h3>직장인</h3>
											<label class="col-sm-4 control-label" for="title2">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="title2"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="content2">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="content2"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label">알림 링크
											</label>
										
												<div class="col-sm-4">
												
												<input type="text" class="form-control col-sm-4" id="linkcontent2"></input> 
												
												</div>
										
										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="tab2">
													알림 등록<i class="fa fa-check spaceLeft"></i>
												</button>
											</div>
										</div>

									</form>
								</div>
								
								<div id="menu3" class="tab-pane fade">
									<form id="form" class="form-horizontal" role="form"
										method="post" action="#">
										<div class="form-group">
											<h3>학생</h3>
											<label class="col-sm-4 control-label" for="title3">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="title3"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="content3">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="content3"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" >알림 링크
											</label>
											
												<div class="col-sm-4">
											
												<input type="text" class="form-control col-sm-4" id="linkcontent3"></input> 
												
												</div>
											

										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="tab3">
													알림 등록<i class="fa fa-check spaceLeft"></i>
												</button>
											</div>
										</div>

									</form>
								</div>
								
								<div id="menu4" class="tab-pane fade">
									<form id="form" class="form-horizontal" role="form"
										method="post" action="#">
										<div class="form-group">
											<h3>기타</h3>
											<label class="col-sm-4 control-label" for="title4">알림 제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="title4">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="content4">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="content4"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림 링크
											</label>
											
												<div class="col-sm-4">
												
												<input type="text" class="form-control col-sm-4" id="linkcontent4"> 
											
												</div>
											
										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="tab4">
													알림 등록<i class="fa fa-check spaceLeft"></i>
												</button>
											</div>
										</div>

									</form>
								</div>
							</div>

						</div>
					</div>
					<!--./row-->
				</div>

				<div class="row">
					<jsp:include page="/layout/footer.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>




</body>

<script>
var title;
var content;
var link;;
var search;
var select;

<c:url value="/sendByAllToken" var="sendByAllToken"/>
    $('#tab0').on("click",function(){
    	
    	title = $('#title0').val();
    	content =$('#content0').val();
    	link = $('#linkcontent0').val();
    	
    	var alldata ={
    			"title":title,
    			"content":content,
    			"link":link
    			
    			};
    	
       $.ajax({
          type:"post",
          url:"${sendByAllToken}",
          
          data :alldata,
          
          success:function(data){
            alert("푸시메세지 전송이 완료되었습니다.");
          }
        	  ,
          error:function(xhr, status, error){
             alert(error);
          },
          ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
       });
    });
    
    <c:url value="/sendByToken" var="sendByToken"/>
        $('#tab1').on("click",function(){
        	
        	title = $('#title1').val();
        	content =$('#content1').val();
        	link = $('#linkcontent1').val();
        	
        	
        	console.log(search);
        	console.log(select);
        	var alldata ={
        			"title":title,
        			"content":content,
        			"link":link
        			
        			};
        	
           $.ajax({
              type:"post",
              url:"${sendByToken}",
              
              data :alldata,
              
              success:function(data){
                alert("푸시메세지 전송이 완료되었습니다.");
              }
            	  ,
              error:function(xhr, status, error){
                 alert(error);
              },
              ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
           });
        });
        
        <c:url value="/sendByBizToken" var="sendByBizToken"/>
            $('#tab2').on("click",function(){
            	
            	title = $('#title2').val();
            	content =$('#content2').val();
            	link = $('#linkcontent2').val();
            	
            	
            	var alldata ={
            			"title":title,
            			"content":content,
            			"link":link
            			
            			};
            	
               $.ajax({
                  type:"post",
                  url:"${sendByBizToken}",
                  
                  data :alldata,
                  
                  success:function(data){
                    alert("푸시메세지 전송이 완료되었습니다.");
                  }
                	  ,
                  error:function(xhr, status, error){
                     alert(error);
                  },
                  ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
               });
            });
            

<c:url value="/sendByStudentToken" var="sendByStudentToken"/>
    $('#tab3').on("click",function(){
    	
    	title = $('#title3').val();
    	content =$('#content3').val();
    	link = $('#linkcontent3').val();
    	
    	
    	var alldata ={
    			"title":title,
    			"content":content,
    			"link":link
    			
    			};
    	
       $.ajax({
          type:"post",
          url:"${sendByStudentToken}",
          
          data :alldata,
          
          success:function(data){
            alert("푸시메세지 전송이 완료되었습니다.");
          }
        	  ,
          error:function(xhr, status, error){
             alert(error);
          },
          ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
       });
    });
    
    <c:url value="/sendByEtcToken" var="sendByEtcToken"/>
        $('#tab4').on("click",function(){
        	
        	title = $('#title4').val();
        	content =$('#content4').val();
        	link = $('#linkcontent4').val();
        	
        	
        	var alldata ={
        			"title":title,
        			"content":content,
        			"link":link
        			
        			};
        	
           $.ajax({
              type:"post",
              url:"${sendByEtcToken}",
              
              data :alldata,
              
              success:function(data){
                alert("푸시메세지 전송이 완료되었습니다.");
              }
            	  ,
              error:function(xhr, status, error){
                 alert(error);
              },
              ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
           });
        });
        
        
        
        <c:url value="/insertNoti" var="insertNoti"/>
            $("#tab0").on("click", function(){
               
               allData={
                  "notiTitle":$("#title0").val(),
                  "notiContent":$("#content0").val(),
                  "link":$("#linkcontent0").val(),
                  "notiTarget":"0"
               };
               
               $.ajax({
                  type:"post",
                  url:"${insertNoti }",
                  data: allData,
                  success:function(data){
                     if(data=="저장"){
                        alert("저장되었습니다.");
                         location.href="<%=request.getContextPath()%>/admin/adminpage_notice_board.jsp";
                     }else{
                        alert("저장 실패");
                     }
                  },
                  error:function(xhr, status, error){
                     alert(error);
                  },
                  ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
               });
            });        
        
        <c:url value="/insertNoti" var="insertNoti"/>
            $("#tab1").on("click", function(){
               
               allData={
                  "notiTitle":$("#title1").val(),
                  "notiContent":$("#content1").val(),
                  "link":$("#linkcontent1").val(),
                  "notiTarget":"1"
               };
               
               $.ajax({
                  type:"post",
                  url:"${insertNoti }",
                  data: allData,
                  success:function(data){
                     if(data=="저장"){
                        alert("저장되었습니다.");
                         location.href="<%=request.getContextPath()%>/admin/adminpage_notice_board.jsp";
                     }else{
                        alert("저장 실패");
                     }
                  },
                  error:function(xhr, status, error){
                     alert(error);
                  },
                  ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
               });
            });
        
        
/*  광고 데이타베이스에 저장  */
        <c:url value="/insertNoti" var="insertNoti"/>
        $("#tab2").on("click", function(){
           
           allData={
              "notiTitle":$("#title2").val(),
              "notiContent":$("#content2").val(),
              "link":$("#linkcontent2").val(),
              "notiTarget":"2"
           };
           
           $.ajax({
              type:"post",
              url:"${insertNoti }",
              data: allData,
              success:function(data){
                 if(data=="저장"){
                    alert("저장되었습니다.");
                     location.href="<%=request.getContextPath()%>/admin/adminpage_notice_board.jsp";
                 }else{
                    alert("저장 실패");
                 }
              },
              error:function(xhr, status, error){
                 alert(error);
              },
              ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
           });
        });
        
        <c:url value="/insertNoti" var="insertNoti"/>
            $("#tab3").on("click", function(){
               
               allData={
                  "notiTitle":$("#title3").val(),
                  "notiContent":$("#content3").val(),
                  "link":$("#linkcontent3").val(),
                  "notiTarget":"3"
               };
               
               $.ajax({
                  type:"post",
                  url:"${insertNoti }",
                  data: allData,
                  success:function(data){
                     if(data=="저장"){
                        alert("저장되었습니다.");
                         location.href="<%=request.getContextPath()%>/admin/adminpage_notice_board.jsp";
                     }else{
                        alert("저장 실패");
                     }
                  },
                  error:function(xhr, status, error){
                     alert(error);
                  },
                  ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
               });
            });

            
            <c:url value="/insertNoti" var="insertNoti"/>
                $("#tab4").on("click", function(){
                   
                   allData={
                      "notiTitle":$("#title4").val(),
                      "notiContent":$("#content4").val(),
                      "link":$("#linkcontent4").val(),
                      "notiTarget":"4"
                   };
                   
                   $.ajax({
                      type:"post",
                      url:"${insertNoti }",
                      data: allData,
                      success:function(data){
                         if(data=="저장"){
                            alert("저장되었습니다.");
                             location.href="<%=request.getContextPath()%>/admin/adminpage_notice_board.jsp";
                         }else{
                            alert("저장 실패");
                         }
                      },
                      error:function(xhr, status, error){
                         alert(error);
                      },
                      ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
                   });
                });
                
      
</script>
</html>