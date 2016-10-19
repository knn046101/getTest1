<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
	<jsp:include page="/layout/header.jsp"></jsp:include>
	<br>
	<br>
	<c:if test="${!empty login}">
		 <span class="input-group-btn">
            <button onclick="location='<%=request.getContextPath()%>/meeting/meeting_make.jsp'" id="makemeeting" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;float:right;">모임생성
           </button>
         </span>
	</c:if>
	<div class="clients" style="margin:0;">
	
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4><span>모임</span></h4>
						</div>

					</div>
       			</div>
            </div>               
	</div>
		
		<center>	
		<!--start info service-->
		<section class="info_service">
			<div class="container">
                <div class="row sub_content">
                	<div class="col-lg-12 col-md-12 col-sm-12">
                		
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
                    		 
                    		 <button type="button" class="btn btn-default dropdown-toggle"
                        			data-toggle="dropdown">
                        		<span id="srch-sel2">시-군 선택</span> <span class="caret"></span>
                    		 </button>
                     		<ul class="dropdown-menu" id="sel2">

                    		 </ul>
                    		 
                    		 <input type="text" placeholder="#키워드 " class="btn btn-default dropdown-toggle">
                    		<button id="search" class="btn btn-success" style="background-color:#27AB99; border-color:#fff;">검색
           					 </button>
                	
                	</div>
			</div>
		</section>

	
		 <span class="input-group-btn">
            <button onclick="location='meeting_info.jsp'" id="writeboard" class="btn btn-success" style="background-color:orange; border-color:#fff;">신전모임
            </button>
         </span>
	 </center>
	 
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
      $('#sel1').find('a').click(function(e) {
         e.preventDefault();
         var cat = $(this).text();
         $('#srch-sel1').text(cat);
         $('#txt-sel1').val(cat);
         sel1=cat;
         
         <c:url value="/changeCapital" var="changeCapital"/>
         var citystr="";
         $(".sel2").remove();
         $.ajax({
            type:"get",
            url:"${changeCapital }",
            dataType:"json",
            data: {
               "sel1":sel1   
            },
            success:function(data){
               console.log(data);
               for(var i=0; i<data.length; i++){
                  citystr+="<li class='sel2'><a id='sel2check' href='#'>"+data[i].city+"</a></li>";
               }
               $("#sel2").append(citystr);
            },
            error : function(xhr, status, error){
               alert(error);
            },
            ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
         });
      });

      $("#sel2").on("click", "#sel2check",function(e) {
         e.preventDefault();
         var cat = $(this).text();
         $('#srch-sel2').text(cat);
         $('#txt-sel2').val(cat);
         sel2=cat;
      });
  
   });

</script>

</html>