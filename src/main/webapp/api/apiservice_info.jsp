<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/layout/whatcss.jsp"></jsp:include>
	<jsp:include page="/layout/whatjs.jsp"></jsp:include>
</head>
<body>

	<div class="row">

	
		<div class="col-md-12">
		<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		
	</div>
	<h1 style="text-align:center; background-color:#D5D5D5;"><span id ="title" ></span></h1>
	<section class="content about">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-14 col-md-14 col-sm-14 " style="background-color: #bebebe">
						
							
						<nav style="background-color:#D5D5D5;" id="breadcrumbs">
							<ul>
								<li>You are here:</li>
								<li><a href="../main.jsp">Home</a></li>
								<li><a href="../main.jsp">내주변에서는?</a></li>
								<li>내주변 post</li>
							</ul>
						</nav>
									</div>
				</div>
			</div> 
		</section>
		
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6" id="img">
						<div class="col-md-2" id="img">
							<!-- 공백을 위한 div -->
						</div>
						
						</div>
							<div class="col-lg-5 col-sm-5 col-md-5" id="maincontent">
							<div class="dividerHeading">
								<h4><span>소개</span></h4>
							</div>
						</div>
						
					</div>
				<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6" >
					<div class="col-md-2" >
					</div>
				</div>
				<div class="col-lg-5 col-sm-5 col-md-5" >
					
					<h2 id="intro">
					<div class="dividerHeading ">
						<h4><span>상세정보</span></h4>
						
					</div>
					<h2 id="detail">
					</h2>
					</h2>
					<div class="col-md-8" >
					<h2  style="">
					
					</h2>
					
					</div>
					<h2><br><br></h2>
				</div>
	</div>
				
				

<br><br><br>
	<div class="row">
		<div class="col-md-12">
		<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>
	</div>

<script>


$(document).on("ready",function(){ 
	
console.log("들어옴");

var title ="<%=request.getParameter("title")%>";
var contentid =<%=request.getParameter("contentid")%>;
console.log(title);
console.log(contentid);
/*TourApi 키  */	

var key ="JSsZ5Smoa%2BwtJchJy5D5EB9SDU5LGZPuK4285EAR7%2F5wisjKDOJkAFSTyHuY0n4uXOHtfemrXCstsw9AFbI7Nw%3D%3D" ;


var detailurl ="https://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?";
	  detailurl+="ServiceKey="+key+"&contentId="+contentid+"&defaultYN=Y&firstImageYN=Y&addrinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTesting&_type=json"; 
	  

$.ajax({
	

	url:detailurl,
	type:"get",
	success:function(responseTxt){
		console.log("데이터 성공했어요");
		//JSON 계층으로 접근하기

		console.log(responseTxt);
		 var itemArray=responseTxt.response.body.items.item;
		 console.log("itemArray:"+itemArray);
	
		var inserttitle="";
		var insertimg="";
		var insertmaincontent="";
		var introhomepage="";
		var introtel="";
		   var insertaddress =""; 
				var insertzip="";
		
			console.log("item : "+itemArray);
			
		
			/*제목*/
		   title = itemArray.title;
		   inserttitle=title;
			
		    /*소개정보*/
			var img = itemArray.firstimage;//대표이미지
			console.log(img);
			insertimg="<img src="+img+" width='500px' height='333px'/>";
			var overview = itemArray.overview;//개요
			insertmaincontent="<h4>"+overview+"</h4>";
			
			
			/*기본정보*/
			
			var homepage =itemArray.homepage;//홈페이지
			var tel = itemArray.tel;//전화번호
			
			introhomepage ="<h4>홈페이지: "+homepage+"</h4>";
			
			introtel="<h4>전화번호: "+tel+"</h4>";
			
	       /*상세정보 */
	       var address=itemArray.addr1;
	       var zip=itemArray.zipcode;
	       
	        insertaddress = "<h4>주소: "+address+"</h4> ";
			insertzip="<h4>우편번호: "+zip+"</h4>";
			
			
		/*html에 삽입하는 부분 */
		
		
		
		$('#title').append(inserttitle);
		
		/*이미지 삽입  */
		if(img==undefined){
		console.log("이미지가 없습니다.");	
		}
		else{
			$('#img').append(insertimg);
		}
		
		
		$('#maincontent').append(insertmaincontent);
		
		/*홈페이지 삽입  */
		if(homepage==undefined){
			console.log("homepage 없습니다.");	
			}
			else{
				$('#intro').append(introhomepage);
			}
		/*전화번호 삽입  */
		if(tel==undefined){
			console.log("tel 없습니다.");	
			}
			else{
				$('#intro').append(introtel);
			}
		
		
		
		
		
		/*주소 삽입  */
		if(address==undefined){
			console.log("addr1 없습니다.");	
			}
			else{
				$('#detail').append(insertaddress);
			}
	
		
		/*우편번호 삽입  */
		
		if(zip==undefined){
			console.log("zip 없습니다.");	
			}
			else{
				$('#detail').append(insertzip);
			}
	
		
		
	
		
	},
	
	error:function(xhr,status,error){
		console.log("https의 이슈로 인한 css mixissue");
	}

})


}); 
</script>
   
</body>
</html>