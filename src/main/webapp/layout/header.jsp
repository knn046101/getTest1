<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>뭐 하 지 ?</title>
<meta name="description" content="">
</head>
<body>
   <!--Start Header-->
   <header id="header" class="clearfix">
        <div id="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 hidden-xs top-info">
                      
                    </div>
                    <div class="col-sm-5 top-info">
                       <ul>
                       		<c:if test="${empty (login) }">
                            	<li><a href="<%=request.getContextPath() %>/login/login.jsp" class="my-tweet">로그인</a>&#10072;</li>
                            	<c:url value="/join" var="join"/>
                            	<li><a href="${join }" class="my-facebook"> 회원가입</a></li>
                            </c:if>
                            
                            <c:if test="${!empty (login) }">
                            	<li><span>${login.nickname} 님 환영합니다.</span></li>
                            	<c:url value="/logout" var="logout"/>

                            	<li><a href="${logout }" class="my-skype">로그아웃</a></li>

                            	<li><a href="<%=request.getContextPath() %>/mypage/mypage_main.jsp" class="my-skype" style="margin-left: 2px;">&nbsp;마이페이지</a></li>


                        	</c:if>
                        
                        </ul>
                    </div>
                </div>
            </div>
        </div>

		<!-- LOGO bar -->
		<div id="logo-bar" class="clearfix">
			<!-- Container -->
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
					<div class="col-xs-12">
						<div id="logo">
							<h1>
								<a href="<%=request.getContextPath()%>/main.jsp"><img
									src="images/logo.png" alt="" /></a>
							</h1>
						</div>
					</div>
				</div>
			</div>
			<!-- Container / End -->
		</div>
		<!--LOGO bar / End-->

		<!-- Navigation
================================================== -->
		<div class="navbar navbar-default navbar-static-top" role="navigation">
			<div class="container">
				<div class="row">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>

					</div>

					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a
								href="<%=request.getContextPath()%>/list/list_best.jsp">추천!꿀팁</a>
							</li>

							<li><a
								href="<%=request.getContextPath()%>/list/list_editor.jsp">에디터게시글</a>
							</li>

							<li><a
								href="<%=request.getContextPath()%>/meeting/meeting_main.jsp">모임</a>
							</li>

							<li><a
								href="<%=request.getContextPath()%>/list/list_food.jsp">먹거리</a>
							</li>

							<li><a
								href="<%=request.getContextPath()%>/list/list_picnic.jsp">나들이</a>
							</li>

							<li><a
								href="<%=request.getContextPath()%>/list/list_hobby.jsp">취미</a>
							</li>

							<li><a href="#">검색</a>
								<ul class="dropdown-menu">
									<li><a href="#"><input type="text" placeholder="어디에서"></a></li>
									<li><a href="#"> <select>
												<option>몇 명이서</option>
												<option>혼자서</option>
												<option>둘이서</option>
												<option>3명이상</option>
										</select></a></li>
									<li><a href="#"> <select>
												<option>카테고리</option>
												<option>먹거리</option>
												<option>나들이</option>
												<option>취미</option>
										</select></a></li>
									<li><a href="#"><input type="text" placeholder="무엇을"></a></li>
									<li><button
											onclick="location='<%=request.getContextPath()%>/list/list_search.jsp'"
											style="margin: 20px 20px 20px 20px; color: #303436;">
											<i class="fa fa-search"></i>
										</button></li>
								</ul></li>


						</ul>
					</div>


				</div>
			</div>
			<!--/.row -->
		</div>
		<!--/.container -->

	</header>
	<!--End Header-->


	

</body>
</html>
