<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">

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
						<h4><span>관리자 계정 (알림 관리)&nbsp;&nbsp;<a href="adminpage_board.jsp" style="color:#27AB99;"><i class="fa fa-chevron-circle-right"></i></a> </span></h4>
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
               		<button onclick="location='<%=request.getContextPath()%>/admin/adminpage_notice.jsp'" style="background-color:#27AB99;color:#fff;border-style: none;">알림 등록</button>
               		<br>
               		<br>
					<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>Image</th>
                        <th>Title</th>
                        <!-- <th>Link</th> -->
                        <th>AdminId</th>
                        <th>option</th>
                    </tr>
                    </thead>
                    <tbody id = "tbody">
                   
                   <!--동적으로 리스트가 생성됩니다.  -->
                    
                    </tbody>
                </table>
                <center>
                
               </center>
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