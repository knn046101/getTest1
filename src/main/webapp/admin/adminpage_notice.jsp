<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
               <label class="col-sm-3 control-label"></label>
               <br> <br>
               <div class="row sub_content">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                     <form id="form" class="form-horizontal" role="form" method="post"
                        action="#">
                        <div class="form-group">
                           <label class="col-sm-4 control-label" for="image">알림 제목</label>
                           <div class="col-sm-4">
                              <input type="text" 
                                 class="form-control col-sm-3" id="adsTitle"></input>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-sm-4 control-label" for="image">알림 내용</label>
                           <div class="col-sm-4">
                              <input type="text" 
                                 class="form-control col-sm-3" id="adsTitle"></input>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-sm-4 control-label" for="image">알림 링크</label>
                           <div class="col-sm-4">
                              <input type="url"  class="form-control col-sm-3"
                                 id="link"> 
                           </div>
                        </div>
                        <br>
                        <div class="form-group">
                           <div class="col-sm-12 text-center">
                              <button class="btn btn-primary" type="button"
                                 style="background-color:orange; border-color:#fff;" id="adjoin">
                                    알림 등록<i class="fa fa-check spaceLeft"></i>
                              </button>
                           </div>
                        </div>

                     </form>
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
</script>
</html>