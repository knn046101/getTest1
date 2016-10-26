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
							<span>관리자 계정 (알림 관리)&nbsp;&nbsp;<a
								href="adminpage_notice.jsp" style="color: #27AB99;"><i
									class="fa fa-chevron-circle-right"></i></a>
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
											<h3>전체알림</h3>
											<label class="col-sm-4 control-label" for="image">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림&nbsp;&nbsp;
											</label>
											<div class="col-sm-8">
												<div class="col-sm-4">
												<input type="radio" name="sports" value="링크">&nbsp;링크&nbsp;<br>
												<input type="text" class="form-control col-sm-4"
													id="adsTitle"></input> 
												
												<input type="radio" name="sports" value="농구">검색<br>
												<input type="text" name="location" placeholder="어디에서">
												<select name="numberOfPeople">
														<option>몇 명이서</option>
														<option>혼자서</option>
														<option>둘이서</option>
														<option>3명이상</option>
													</select>
												<select name="category">
														<option>카테고리</option>
														<option>먹거리</option>
														<option>나들이</option>
														<option>취미</option>
												</select>
												<br>
												<input type="text" name="what" placeholder="무엇을">	
												</div>
											</div>

										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="adjoin">
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
											<h3>수신동의</h3>
											<label class="col-sm-4 control-label" for="image">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												링크</label>
											<div class="col-sm-4">
												<input type="url" class="form-control col-sm-3" id="link">
											</div>
										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="adjoin">
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
											<label class="col-sm-4 control-label" for="image">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												링크</label>
											<div class="col-sm-4">
												<input type="url" class="form-control col-sm-3" id="link">
											</div>
										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="adjoin">
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
											<label class="col-sm-4 control-label" for="image">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												링크</label>
											<div class="col-sm-4">
												<input type="url" class="form-control col-sm-3" id="link">
											</div>
										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="adjoin">
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
											<label class="col-sm-4 control-label" for="image">알림
												제목</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												내용</label>
											<div class="col-sm-4">
												<input type="text" class="form-control col-sm-3"
													id="adsTitle"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label" for="image">알림
												링크</label>
											<div class="col-sm-4">
												<input type="url" class="form-control col-sm-3" id="link">
											</div>
										</div>
										<br>
										<div class="form-group">
											<div class="col-sm-12 text-center">
												<button class="btn btn-primary" type="button"
													style="background-color: orange; border-color: #fff;"
													id="adjoin">
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
<<<<<<< HEAD
	
=======

var title;
var content;
var taglink;


<c:url value="/sendByToken" var="sendByToken"/>
    $('#notipush').on("click",function(){
    	
    	title = $('#notiTitle').val();
    	content =$('#notiContent').val();
    	taglink = $('#link').val();
    	
    	var alldata ={
    			"title":title,
    			"content":content,
    			"taglink":taglink
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







>>>>>>> branch 'master' of https://github.com/knn046101/getTest1.git
</script>
</html>