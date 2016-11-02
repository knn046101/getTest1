<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<title>뭐 하 지 ?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.errormsg {
	color: red;
}
h2 {
	width: 200px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
	h3 {
	width: 200px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
p {
	width: 200px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>
</head>
<body>
	<jsp:include page="/layout/header.jsp"></jsp:include>

	<br>
	<br>
<section class="content left_sidebar">
			<div class="container">
				<div class="row">
					<!--Sidebar Widget-->
					<div class="col-lg-4">
						<div class="sidebar">
							<div class="widget widget_categories">
								<ul class="arrows_list sidenav">
										<li><img src=${login.profileImg } class="img-circle"
											 width="150" height="150" hspace="50"> <br>
										</li>
										<h4 align="center">
                                 ${login.nickname} 
                                 <c:choose>
                                    <c:when test="${login.division eq 'Customer' }">
                                       <span class="label label-default"
                                          style="background-color: grey;color:#fff;">일반회원</span>
                                    </c:when>
                                    <c:when test="${login.division eq 'Editor' }">
                                       <span class="label label-default"
                                          style="background-color: yellow">에디터</span>
                                    </c:when>
                                 </c:choose>
                              </h4>
								</ul>
							</div>
							<div class="widget widget_categories">
								<div class="widget_title">
									<h4><span>마이페이지</span></h4>
								</div>
								<ul class="arrows_list">
									<c:url value="/mypageUpdate" var="mypageUpdate"/>
										
										<li><a href="${mypageUpdate }?loginId=${login.id }">
										정보수정</a></li>
										<li><a 
											href="<%=request.getContextPath()%>/mypage/mypage_myboard.jsp">
												내 글
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_favorite.jsp">
												관심 키워드
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_scrap.jsp">
												스크랩
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_good.jsp">
												좋아요
										</a></li>
										<li><a
											href="<%=request.getContextPath()%>/mypage/mypage_meeting.jsp">
												<i class="fa fa-angle-right"></i>모임
										</a></li>
								</ul>
							</div>
						</div>
					</div>
						<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8  " >
							<div class="row sub_content">
								<div class="meetingList" >
										
								</div>
								
							</div>
							<div style="text-align: center;">
									<ul id="page" class="pagination pull-center mrgt-0">
								
									</ul>
								</div>
					</div>
				</div>
				</div>
			</section>


	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script>
<c:url value="/getMeetingsFollow" var="getMeetingsFollow"/>
	$(document)	.ready(function() {
		var htmlText = "";
		var total_record = 1;
		$(".delete").remove();
		var page_eno;
		var page_sno;
		data={
				"id":"${login.id}"
		};
		$.ajax({
			type : "get",
			url : "${getMeetingsFollow }?pageno=1",
			dataType : "json",
			data: data,
			success : function(args) {
				var length = args.length;
				for (var i = 0; i < length; i++) {
					<c:url value="/retrieveMeeting" var="retrieveMeeting"/>
					htmlText += "<div class='col-sm-6 col-md-4 delete'>"
			        		 	+"<div class='thumbnail'>"
			          			+"<img src="+args[i].meetingImg+" alt='' class='img-responsive' style='height:200px;'>"
			          			+"<div class='caption'>"
			            		+"<h2 class=''>"+args[i].meetingTitle+"</h2>"
			            		+"<h3>"+args[i].meetingContent+"</h3>"
			            		+"<p> 키워드 : "+args[i].meetingKeyword+"</p>"
			            		+"<p> 지   역 : "+args[i].place+"</p>"
			            		+"<div class='btn-toolbar text-center'>"
			             		+"<a href='${retrieveMeeting}?meetingNo="+args[i].meetingNo+"' role='button' class='btn btn-primary pull-right' style='background-color:orange;'><i class='fa fa-location-arrow'></i></a>"
			             		+"</div>"
			             		+"</div>"
			             		+"</div>"
			             		+"</div>";
					}
					$(".meetingList").append(htmlText);
					var recordNum = args[0].recordNum;
					////////////////////// 불러온 테이블 끝////////////////////////
					var pagenotmp = args[0].page;

					if (pagenotmp == null) {
						pagenotmp = 1;
					}
					var pageno = Number(pagenotmp);
					if (pageno < 1) {//현재 페이지
						pageno = 1;
					}
					total_record = recordNum;

					var page_per_record_cnt = 9; //페이지 당 레코드 수
					var group_per_page_cnt = 5; //페이지 당 보여줄 번호 수[1],[2],[3],[4],[5]
										//                                                       [6],[7],[8],[9],[10]                                 
					var record_end_no = pageno* page_per_record_cnt;
					var record_start_no = record_end_no- (page_per_record_cnt - 1);
					if (record_end_no > total_record) {
						record_end_no = total_record;
					}
					var total_page = Math.floor(total_record/ page_per_record_cnt+ (total_record%page_per_record_cnt > 0 ? 1: 0));
					if (pageno > total_page) {
						pageno = total_page;
					}
					//             현재 페이지(정수) / 한페이지 당 보여줄 페지 번호 수(정수) + (그룹 번호는 현제 페이지(정수) % 한페이지 당 보여줄 페지 번호 수(정수)>0 ? 1 : 0)
					var group_no = Math.floor(pageno / group_per_page_cnt) + (pageno % group_per_page_cnt > 0 ? 1 : 0);
					//               현재 그룹번호 = 현재페이지 / 페이지당 보여줄 번호수 (현재 페이지 % 페이지당 보여줄 번호 수 >0 ? 1:0)   
					//            ex)    14      =   13(몫)      =    (66 / 5)      1   (1(나머지) =66 % 5)           

					page_eno = group_no	* group_per_page_cnt;
					//               현재 그룹 끝 번호 = 현재 그룹번호 * 페이지당 보여줄 번호 
					//            ex)    70      =   14   *   5
					page_sno = page_eno- (group_per_page_cnt - 1);
					//                현재 그룹 시작 번호 = 현재 그룹 끝 번호 - (페이지당 보여줄 번호 수 -1)
					//            ex)    66   =   70 -    4 (5 -1)
					if (page_eno > total_page) {
						//               현재 그룹 끝 번호가 전체페이지 수 보다 클 경우      
						page_eno = total_page;
						//               현재 그룹 끝 번호와 = 전체페이지 수를 같게
					}

					var prev_pageno = page_sno - group_per_page_cnt; // <<  *[이전]* [21],[22],[23]... [30] [다음]  >>
						//               이전 페이지 번호   = 현재 그룹 시작 번호 - 페이지당 보여줄 번호수   
						//            ex)      46      =   51 - 5            
					var next_pageno = page_sno + group_per_page_cnt; // <<  [이전] [21],[22],[23]... [30] *[다음]*  >>
						//               다음 페이지 번호 = 현재 그룹 시작 번호 + 페이지당 보여줄 번호수
							//            ex)      56      =   51 - 5
					if (prev_pageno < 1) {
								//               이전 페이지 번호가 1보다 작을 경우      
						prev_pageno = 1;
											//               이전 페이지를 1로
					}
					if (next_pageno > total_page) {
										//               다음 페이지보다 전체페이지 수보가 클경우      
						next_pageno = Math.floor(total_page	/ group_per_page_cnt) * group_per_page_cnt + 1;
							//               next_pageno=total_page
							//               다음 페이지 = 전체페이지수 / 페이지당 보여줄 번호수 * 페이지당 보여줄 번호수 + 1 
							//            ex)            =    76 / 5 * 5 + 1   ????????       
					}

					var pageText = "";
					pageText += "<li><a style='background-color:#27AB99;color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno=1')><i class='fa fa-angle-double-left'></i></a></li>";
					pageText += "<li><a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+ prev_pageno+"')><i class='fa fa-angle-left'></i></a></li>";
					for (var i = page_sno; i <= page_eno; i++) {
						pageText += "<li><a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+i+"')>";
						if (pageno == i) {
							pageText += "" + i + "";
							} else {
								pageText += "" + i + "";
							}
							pageText += "</a></li>";
							<%--   콤마    --%>
							if (i < page_eno) {
								pageText += "<span class='paging'> </span>";
							}
						}
						pageText += "<li><a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+next_pageno+"')><i class='fa fa-angle-right'></i></a></li>";
						pageText += "<li><a style='background-color:#27AB99;color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+total_page+"')><i class='fa fa-angle-double-right'></i></a></li><br class='paging'>";
						$("#page").append(pageText);
					},
					error : function(xhr, status, error) {
					},
					"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
				});
	});

	function send(inputUrl) {
		var url = inputUrl;
		var htmlText = "";
		var total_record = 1;
		$(".delete").remove();
		$(".paging").remove();
		var page_eno;
		var page_sno;
		data={
				"id":"${login.id}"
		};
		$.ajax({
			type : "get",
			url : url,
			dataType : "json",
			data: data,
			// xhr.readyState ==4&& xhr.status==200 상황
			success : function(args) {
				var length = args.length;
				console.log(args);
				for (var i = 0; i < length; i++) {
					<c:url value="/retrieveMeeting" var="retrieveMeeting"/>
						htmlText += "<div class='col-sm-6 col-md-4 delete'>"
		        		 	+"<div class='thumbnail'>"
		          			+"<img src="+args[i].meetingImg+" alt='' class='img-responsive' style='height:200px;'>"
		          			+"<div class='caption'>"
		            		+"<h2 class=''>"+args[i].meetingTitle+"</h2>"
		            		+"<h3>"+args[i].meetingContent+"</h3>"
		            		+"<p> 관심사 : "+args[i].meetingKeyword+"</p>"
		            		+"<p> 지   역 : "+args[i].place+"</p>"
		            		+"<div class='btn-toolbar text-center'>"
		             		+"<a href='${retrieveMeeting}?meetingNo="+args[i].meetingNo+"' role='button' class='btn btn-primary pull-right'>보기</a>"
		             		+"</div>"
		             		+"</div>"
		             		+"</div>"
		             		+"</div>";
				}
				$(".meetingList").append(htmlText);
				////////////////////// 불러온 테이블 끝////////////////////////
				var recordNum = args[0].recordNum;
				var pagenotmp = args[0].page;

				if (pagenotmp == null) {
					pagenotmp = 1;
				}
				var pageno = Number(pagenotmp);
				if (pageno < 1) {//현재 페이지
					pageno = 1;
				}
				total_record = recordNum;

				var page_per_record_cnt = 9; //페이지 당 레코드 수
				var group_per_page_cnt = 5; //페이지 당 보여줄 번호 수[1],[2],[3],[4],[5]
				//									  									  [6],[7],[8],[9],[10]											
				var record_end_no = pageno * page_per_record_cnt;
				var record_start_no = record_end_no - (page_per_record_cnt - 1);
				if (record_end_no > total_record) {
					record_end_no = total_record;
				}
				var total_page = Math.floor(total_record / page_per_record_cnt	+ (total_record % page_per_record_cnt > 0 ? 1	: 0));
				if (pageno > total_page) {
					pageno = total_page;
				}
				//				현재 페이지(정수) / 한페이지 당 보여줄 페지 번호 수(정수) + (그룹 번호는 현제 페이지(정수) % 한페이지 당 보여줄 페지 번호 수(정수)>0 ? 1 : 0)
				var group_no = Math.floor(pageno / group_per_page_cnt) + (pageno % group_per_page_cnt > 0 ? 1 : 0);
				//				현재 그룹번호 = 현재페이지 / 페이지당 보여줄 번호수 (현재 페이지 % 페이지당 보여줄 번호 수 >0 ? 1:0)	
						//				ex) 	14		=	13(몫)		=	 (66 / 5)		1	(1(나머지) =66 % 5)			  
				page_eno = group_no * group_per_page_cnt;
						//					현재 그룹 끝 번호 = 현재 그룹번호 * 페이지당 보여줄 번호 
						//				ex) 	70		=	14	*	5
				page_sno = page_eno - (group_per_page_cnt - 1);
						//				 	현재 그룹 시작 번호 = 현재 그룹 끝 번호 - (페이지당 보여줄 번호 수 -1)
						//				ex) 	66	=	70 - 	4 (5 -1)

				if (page_eno > total_page) {
							//				   현재 그룹 끝 번호가 전체페이지 수 보다 클 경우		
					page_eno = total_page;
							//				   현재 그룹 끝 번호와 = 전체페이지 수를 같게
				}

				var prev_pageno = page_sno - group_per_page_cnt; // <<  *[이전]* [21],[22],[23]... [30] [다음]  >>
						//					이전 페이지 번호	= 현재 그룹 시작 번호 - 페이지당 보여줄 번호수	
						//				ex)		46		=	51 - 5				
				var next_pageno = page_sno + group_per_page_cnt; // <<  [이전] [21],[22],[23]... [30] *[다음]*  >>
						//					다음 페이지 번호 = 현재 그룹 시작 번호 + 페이지당 보여줄 번호수
						//				ex)		56		=	51 - 5
				if (prev_pageno < 1) {
							//					이전 페이지 번호가 1보다 작을 경우		
					prev_pageno = 1;
							//					이전 페이지를 1로
				}
				if (next_pageno > total_page) {
							//					다음 페이지보다 전체페이지 수보가 클경우		
					next_pageno = Math.floor(total_page / group_per_page_cnt) * group_per_page_cnt + 1;
							//					next_pageno=total_page
							//					다음 페이지 = 전체페이지수 / 페이지당 보여줄 번호수 * 페이지당 보여줄 번호수 + 1 
							//				ex)			   = 	76 / 5 * 5 + 1	???????? 		
				}
				var pageText = "";
				pageText += "<li><a style='background-color:#27AB99;color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno=1')><i class='fa fa-angle-double-left'></i></a></li>";
				pageText += "<li><a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+prev_pageno+"')><i class='fa fa-angle-left'></i></a></li>";
				for (var i = page_sno; i <= page_eno; i++) {
					pageText += "<li><a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+i+"')>";
					if (pageno == i) {
						pageText += "" + i + "";
					} else {
						pageText += "" + i + "";
					}
					pageText += "</a></li>";
					<%--	콤마	 --%>
					if (i < page_eno) {
						pageText += "<span class='paging'> </span>";
					}
				}
				pageText += "<li><a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+next_pageno+"')><i class='fa fa-angle-right'></i></a></li>";
				pageText += "<li><a style='background-color:#27AB99;color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingsFollow }?pageno="+total_page+"')><i class='fa fa-angle-double-right'></i></a></li><br class='paging'>";
				$("#page").append(pageText);
			},
			error : function(txt, txt2, xhr) {
				console.log("error", xhr);
			},
			"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
		});
	}
</script>
</html>