<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
	String contextPath = request.getContextPath();
	if(contextPath == "/"){
		contextPath = "";
	}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="../../favicon.ico"> -->

    <title>首页</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=contextPath %>/css/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=contextPath %>/css/dashboard.css" rel="stylesheet">

  </head>

  <body onload="initSearchBoardAndTopic();">

    <jsp:include page="commonNavigationBar.jsp"></jsp:include>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar" id="boardList">
            
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		  <br />
		  <div class="text-right">
		  <shiro:hasRole name="superadmin">
		  	<a href="javascript:void(0);" id="addBoardPage" onclick="addBoardPage();"  class="btn btn-primary">新建版块</a>
		  </shiro:hasRole>
		  	<a href="javascript:void(0);" id="updateBoardPage" class="btn btn-primary">管理版块</a>
          	<a href="<%=contextPath %>/board/addTopicPage" id="posting" class="btn btn-primary">发表主题帖</a>
		  </div>
		  <br />
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="col-sm-7">标题</th>
                  <th class="col-sm-2">发帖人</th>
                </tr>
              </thead>
              <tbody>
              	
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

	<script type="text/javascript">
		var contextPath = '<%=contextPath %>';
	</script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=contextPath %>/js/jquery/jquery.min.js"></script>
    <script src="<%=contextPath %>/js/bootstrap/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <%-- <script src="<%=contextPath %>/assets/js/vendor/holder.min.js"></script> --%>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <%-- <script src="<%=contextPath %>/assets/js/ie10-viewport-bug-workaround.js"></script> --%>
    <!-- 引入layer -->
    <script src="<%=contextPath %>/layer/layer.js"></script>
    
    <script src="<%=contextPath %>/my/my.js"></script>
  </body>
</html>
