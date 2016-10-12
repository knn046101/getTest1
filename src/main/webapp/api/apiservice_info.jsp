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
	
	<section class="clients">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 ">
						<div class="dividerHeading">
							<h4><span id ="title"></span></h4>
							
							
						</div>
						
						
					<div class="row">
						<div class="col-md-5" id="img">
							
						</div>
						
							<div class="col-md-2" >
							<!-- 공백을 위한 div -->
						</div>
						
						<div class="col-md-5" id="maincontent">
						<h1 class="row sub_content">소개</h1>
							
						</div>
					</div>
						
						
						
						
						
						
				<div class="row">
				<div class="col-md-5">
					<h2 id ="intro">
						기본 정보
					</h2>
					
					
	
				</div>
				
				
				<div class="col-md-2">
				<!-- 공백을 위한 div -->
	
				</div>
				<div class="col-md-5">
					<h2 id ="detail">
						상세 정보
					</h2>
					
					
				</div>
				
			</div>
					</div>
				</div>
			</div>
		</section>
	
	

		

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


var detailurl ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?";
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
			
			introhomepage ="<br><h3>홈페이지</h3><p>"+homepage+"</p>";
			
			introtel="<br><p>전화번호: "+tel+"</p>";
			
	       /*상세정보 */
	       var address=itemArray.addr1;
	       var zip=itemArray.zipcode;
	       
	        insertaddress = "<br><h3>주소</h3><p> "+address+"</p>";
			insertzip="<br><p>우편번호: "+zip+"</p>";
			
			
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
		alert("fail:"+error);
	}

})


}); 
</script>
   
</body>
</html>