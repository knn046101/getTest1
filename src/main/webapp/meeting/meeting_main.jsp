<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
	.input-group-btn{
		width:0%;
	}
	.thumbnail>img, .thumbnail a>img {
    margin-right: auto;
    margin-left: auto;
    width: 100%;
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
						<span>모임</span>
					</h4>
	<c:if test="${!empty login}">
		<span class="input-group-btn">
			<button
				onclick="location='<%=request.getContextPath()%>/meeting/meeting_make.jsp'"
				id="makemeeting" class="btn btn-success"
				style="background-color: #27AB99; border-color: #fff; float: right;">모임생성
			</button>
		</span>
	</c:if>
	
				</div><br><br><br>
				<!--start info service-->
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="col-lg-4 col-md-4 col-sm-4"></div>
					 <div class="input-group-btn" style="width:0%; line-height:0px">
                     <button type="button" class="btn btn-default dropdown-toggle"
                        data-toggle="dropdown">
                        <span id="srch-sel1">도 선택</span> <span class="caret"></span>
                     </button>
                     <ul class="dropdown-menu" id="sel1">
                        <li><a href="#">서울특별시</a></li>
                        <li><a href="#">인천광역시</a></li>
                        <li><a href="#">대전광역시</a></li>
                        <li><a href="#">대구광역시</a></li>
                        <li><a href="#">광주광역시</a></li>
                        <li><a href="#">울산광역시</a></li>
                        <li><a href="#">부산광역시</a></li>
                        <li><a href="#">경기도</a></li>
                        <li><a href="#">강원도</a></li>
                        <li><a href="#">충청남도</a></li>
                        <li><a href="#">충청북도</a></li>
                        <li><a href="#">전라남도</a></li>
                        <li><a href="#">전라북도</a></li>
                        <li><a href="#">경상남도</a></li>
                        <li><a href="#">경상북도</a></li>
                        <li><a href="#">제주도</a></li>
                     </ul>
                  <!-- 첫번째 행의 첫번째 드롭박스 끝 -->

                  <!--두번째 드롭박스  -->
                     <button type="button" class="btn btn-default dropdown-toggle"
                        data-toggle="dropdown">
                        <span id="srch-sel2">시-군 선택</span> <span class="caret"></span>
                     </button>
                     <ul class="dropdown-menu" id="sel2">
                     </ul>
                  	<input type="hidden" id="txt-sel1"> <input type="hidden"
                     id="txt-sel2"> <input type="hidden" id="txt-category">
                  <input type="hidden" id="txt-numberOfPeople">

					<input type="text" placeholder="#키워드 " id="keyword"
						class="btn btn-default dropdown-toggle">
					<button id="search" class="btn btn-success"
						style="background-color: #27AB99; border-color: #fff;">검색
					</button>
					
					</div>
					<br><br><br><br>
					<!-- Thumbnails -->
				    <div class="container thumbs" id="thumnails">
				      
				    </div><!-- End Thumbnails -->
				    <div style="text-align: center;" id="page"></div>
				</div>
			</div>
		</div>
	</div>

	
	
	<br>
	<jsp:include page="/layout/footer.jsp"></jsp:include>


</body>
<script>
	var sel1;
	var sel2;
	var categorysel;
	var numberOfPeoplessel;

	/*각 드롭다운 목록 (게시글 정보ㅡ 키워드)의 이벤트를 정의 해 둔 부분   */
	$(function() {
		$('#sel1')
				.find('a')
				.click(
						function(e) {
							e.preventDefault();
							var cat = $(this).text();
							$('#srch-sel1').text(cat);
							$('#txt-sel1').val(cat);
							sel1 = cat;

							<c:url value="/changeCapital" var="changeCapital"/>
							var citystr = "";
							$(".sel2").remove();
							$
									.ajax({
										type : "get",
										url : "${changeCapital }",
										dataType : "json",
										data : {
											"sel1" : sel1
										},
										success : function(data) {
											console.log(data);
											for (var i = 0; i < data.length; i++) {
												citystr += "<li class='sel2'><a id='sel2check' href='#'>"
														+ data[i].city
														+ "</a></li>";
											}
											$("#sel2").append(citystr);
										},
										error : function(xhr, status, error) {
											alert(error);
										},
										ContentType : "application/x-www-form-urlencoded;charset=UTF-8"
									});
						});

		$("#sel2").on("click", "#sel2check", function(e) {
			e.preventDefault();
			var cat = $(this).text();
			$('#srch-sel2').text(cat);
			$('#txt-sel2').val(cat);
			sel2 = cat;
		});

	});
	
	
	
<c:url value="/getMeetings" var="getMeetings"/>
	$(document)	.ready(function() {
		var htmlText = "";
		var total_record = 1;
		$(".delete").remove();
		var page_eno;
		var page_sno;
	
		$.ajax({
			type : "get",
			url : "${getMeetings }?pageno=1",
			dataType : "json",
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
			            		+"<p> 관심사 : "+args[i].meetingKeyword+"</p>"
			            		+"<p> 지   역 : "+args[i].place+"</p>"
			            		+"<div class='btn-toolbar text-center'>"
			             		+"<a href='${retrieveMeeting}?meetingNo="+args[i].meetingNo+"' role='button' class='btn btn-primary pull-right'>보기</a>"
			             		+"</div>"
			             		+"</div>"
			             		+"</div>"
			             		+"</div>";
					}
					$(".thumbs").append(htmlText);
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
					pageText += "<a style='color:#363636;' class='paging' href='#' onclick=send('${getMeetings }?pageno=1')>[맨앞으로]</a>";
					pageText += "<a style='color:#363636;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+ prev_pageno+"')>[이전]</a>";
					for (var i = page_sno; i <= page_eno; i++) {
						pageText += "<a style='color:#363636;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+i+"')>";
						if (pageno == i) {
							pageText += "[" + i + "]";
							} else {
								pageText += "" + i + "";
							}
							pageText += "</a>";
							<%--   콤마    --%>
							if (i < page_eno) {
								pageText += "<span class='paging'> , </span>";
							}
						}
						pageText += "<a style='color:#363636;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+next_pageno+"')>[다음]</a>";
						pageText += "<a style='color:#363636;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+total_page+"')>[맨뒤로]</a><br class='paging'>";
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
		$.ajax({
			type : "get",
			url : url,
			dataType : "json",
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
				$(".thumbs").append(htmlText);
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
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=send('${getMeetings }?pageno=1')>[맨앞으로]</a>";
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+prev_pageno+"')>[이전]</a>";
				for (var i = page_sno; i <= page_eno; i++) {
					pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+i+"')>";
					if (pageno == i) {
						pageText += "[" + i + "]";
					} else {
						pageText += "" + i + "";
					}
					pageText += "</a>";
					<%--	콤마	 --%>
					if (i < page_eno) {
						pageText += "<span class='paging'> , </span>";
					}
				}
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+next_pageno+"')>[다음]</a>";
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=send('${getMeetings }?pageno="+total_page+"')>[맨뒤로]</a><br class='paging'>";
				$("#page").append(pageText);
			},
			error : function(txt, txt2, xhr) {
				console.log("error", xhr);
			},
			"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
		});
	}

	
	
	<c:url value="/getMeetingsBySearch" var="getMeetingsBySearch"/>
	$("#search").on("click", function(){
		var htmlText = "";
		var total_record = 1;
		$(".delete").remove();
		$(".paging").remove();
		var page_eno;
		var page_sno;
	
		var alldata={
			"location":$("#txt-sel1").val()+","+$("#txt-sel2").val(),
			"keyword":$("#keyword").val()
		};
		
		$.ajax({
			type : "get",
			url : "${getMeetingsBySearch }?pageno=1",
			dataType : "json",
			data:alldata,
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
			            		+"<p> 관심사 : "+args[i].meetingKeyword+"</p>"
			            		+"<p> 지   역 : "+args[i].place+"</p>"
			            		+"<div class='btn-toolbar text-center'>"
			             		+"<a href='${retrieveMeeting}?meetingNo="+args[i].meetingNo+"' role='button' class='btn btn-primary pull-right'>보기</a>"
			             		+"</div>"
			             		+"</div>"
			             		+"</div>"
			             		+"</div>";
					}
					$(".thumbs").append(htmlText);
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
					pageText += "<a style='color:#363636;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno=1')>[맨앞으로]</a>";
					pageText += "<a style='color:#363636;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+ prev_pageno+"')>[이전]</a>";
					for (var i = page_sno; i <= page_eno; i++) {
						pageText += "<a style='color:#363636;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+i+"')>";
						if (pageno == i) {
							pageText += "[" + i + "]";
							} else {
								pageText += "" + i + "";
							}
							pageText += "</a>";
							<%--   콤마    --%>
							if (i < page_eno) {
								pageText += "<span class='paging'> , </span>";
							}
						}
						pageText += "<a style='color:#363636;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+next_pageno+"')>[다음]</a>";
						pageText += "<a style='color:#363636;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+total_page+"')>[맨뒤로]</a><br class='paging'>";
						$("#page").append(pageText);
					},
					error : function(xhr, status, error) {
					},
					"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
				});
	});
	
	
	function sendBySearch(inputUrl) {
		var url = inputUrl;
		var htmlText = "";
		var total_record = 1;
		$(".delete").remove();
		$(".paging").remove();
		var page_eno;
		var page_sno;
		
		var alldata={
				"location":$("#txt-sel1").val()+","+$("#txt-sel2").val(),
				"keyword":$("#keyword").val()
			};
		
		$.ajax({
			type : "get",
			url : url,
			dataType : "json",
			data:alldata,
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
				$(".thumbs").append(htmlText);
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
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno=1')>[맨앞으로]</a>";
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+prev_pageno+"')>[이전]</a>";
				for (var i = page_sno; i <= page_eno; i++) {
					pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+i+"')>";
					if (pageno == i) {
						pageText += "[" + i + "]";
					} else {
						pageText += "" + i + "";
					}
					pageText += "</a>";
					<%--	콤마	 --%>
					if (i < page_eno) {
						pageText += "<span class='paging'> , </span>";
					}
				}
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+next_pageno+"')>[다음]</a>";
				pageText += "<a style='color:#323A45;' class='paging' href='#' onclick=sendBySearch('${getMeetingsBySearch }?pageno="+total_page+"')>[맨뒤로]</a><br class='paging'>";
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


