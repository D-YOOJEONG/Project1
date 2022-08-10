<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>HOME</title>

    <!-- 부트스트랩 -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	
  </head>
  <body>
  <h1 class="text-center">로그인</h1>
	<form class="form-horizontal" id="loginForm" name="structuredDataForm" method="post" action="" enctype="multipart/form-data">
	  <div class="form-group">
	    <label for="inputId" class="col-sm-5 control-label">아이디</label>
	    <div class="col-sm-7">
	      <input type="text" class="form-control" id="inputId" placeholder="Id" style="width:25%;">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword" class="col-sm-5 control-label">비밀번호</label>
	    <div class="col-sm-7">
	      <input type="password" class="form-control" id="inputPassword" placeholder="Password" style="width:25%;">
	    </div>
	  </div>
	  <div class="form-group">
	    <div class="col-sm-offset-5 col-sm-10">
	      <div class="checkbox">
	        <label>
	          <input type="checkbox"> 내 정보 기억하기
	        </label>
	      </div>
	    </div>
	  </div>
	  <div class="form-group">
	    <div class="col-sm-offset-5 col-sm-10">
	      <input type="button" id="login" class="btn btn-default" value="로그인">
	    </div>
	  </div>
	</form>
	<div class="container">
	  <div class="col-xs-5 text-right">
	  	<c:url value="signUp.do" var="signUp"></c:url>
	  	<a href="${signUp}" >회원가입</a>
	  </div>
	  <div class="col-xs-7 text-left">
	  	<a href="#">test</a>
	  </div>
	</div>

  </body>

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script>
	$("#login").click(function(e){
		$(".form-group").attr("class", "form-group");
		
		if($("#inputId").val() == ""){
			alert("아이디를 입력해주세요.");
			$("#inputId").closest(".form-group").attr("class", "form-group has-error");
			$("#inputId").focus();
			return false;
		}
		if($("#inputPassword").val() == ""){
			alert("비밀번호를 입력해주세요.");
			$("#inputPassword").closest(".form-group").attr("class", "form-group has-error");
			$("#inputPassword").focus();
			return false;
		}
		
		$("#loginForm").target = "_self";
		$("#loginForm").submit();
	});
</script>
</html>
