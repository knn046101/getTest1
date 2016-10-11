<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
	<jsp:include page="/layout/whatcss.jsp"></jsp:include>
	<jsp:include page="/layout/whatjs.jsp"></jsp:include>
</head>
<body>
	
	
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br>
		<br>
	
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="dividerHeading">
						<h4><span>관리자 계정 (게시글 관리)&nbsp;&nbsp;<a href="adminpage_user.jsp" style="color:#27AB99;"><i class="fa fa-chevron-circle-right"></i></a> </span></h4>
					</div>
					 <label class="col-sm-3 control-label"></label>
					 <div class="col-sm-6">
					 <center>
          			  <div>
          			  		<select style="height:28px;">
          			  			<option>사용자</option>
          			  			<option>글번호</option>
          			  		</select>
							<input class="input-text" name="s" id="search" type="text" />
							<button style="background-color:#27AB99;color:#fff;border-style: none;"><i class="fa fa-search"></i></button>
										</div>
               		</div>
               		</center>
               		<br>
               		<br>
					<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>Board No</th>
                        <th>Category</th>
                        <th>Title</th>
                        <th>User</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>먹거리</td>
                        <td>갓신전 리뷰</td>
                        <td>YoungKingBoss</td>
                        <td><Button>삭제</Button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>나들이</td>
                        <td>한강페스티벌 </td>
                        <td>경으니</td>
                        <td><Button>삭제</Button></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>취미</td>
                        <td>생활코딩취미</td>
                        <td>코천종연</td>
                        <td><Button>삭제</Button></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>먹거리</td>
                        <td>삼겹싸롱 또가고싶다</td>
                        <td>현정찡</td>
                        <td><Button>삭제</Button></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>먹거리</td>
                        <td>화이팅!</td>
                        <td>뿡기님</td>
                        <td><Button>삭제</Button></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div> <!--./row-->
				</div>
			</div>
		</div>
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>
	</div>


	

</body>

<script>

</script>
</html>