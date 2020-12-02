<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("userId");
%>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"/>

    <title>게임리뷰홈페이지</title>
  </head>
  <body>
   <nav class = "navbar navbar-expand-sm navbar-light bg-light font-weight-bolder">
   	<a class = "navbar-brand" href="main.jsp">게임리뷰홈페이지</a>
   	<button class = "navbar-toggler" type = "button" data-toggle = "collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportContent" aria-expanded="false" aria-label = "Toggle navigation">
   		<span class = "navbar-toggler-icon"></span>
   	</button>
   	<div class = "collapse navbar-collapse alert alert-warning" id = "navbarSupportedContent">
   		<ul class = "navbar-nav nav justify-content-center" >
   			<li class = "nav-item">
   				<a class = "nav-link" href = "main.jsp">홈페이지 소개<span class = "sr-only">(current)</span></a>
   			</li>
   			<li class = "nav-item">
   				<a class = "nav-link" href = "game.jsp">게임소개<span class = "sr-only">(current)</span></a>
   			</li>
   			<li class = "nav-item">
   				<a class = "nav-link" href = "bbs.jsp">게임리뷰게시판</a>
   			</li>
   			<li class = "nav-item">
   				<a class = "nav-link" href = "bbs.jsp">QnA게시판</a>
   			</li>
   		</ul>
   		<ul class ="navbar-nav ml-auto">
   			<li class = "nav-item dropdown">
   				<a class = "nav-link dropdown-toggle" href ="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">접속하기</a>
   				<div class = "dropdown-menu" aria-labelledby="navbarDropdown">
<% 
	if(id == null) {
%>
   				<a class = "dropdown-item" href="login.jsp">
   					로그인
   				</a>
   				<div class = "dropdown-divider"></div>
   				<a class ="dropdown-item" href = "join.jsp">회원가입</a>
<% 
	}else{
%>
   				<a class ="dropdown-item" href = "logoutAction.jsp">로그아웃</a>
<%
	}
%>
   				</div>
   			</li>
   		</ul>
   	</div>
   </nav>
     <div class = "container pt-3 bg-warning">
   	<div class = "jumbotron">
   		<h1>홈페이지 소개</h1>
   		<p>좋아하는 게임을 소개하고 후기를 공유하는 홈페이지 입니다</p>
   			<a class = "btn btn-primary btn-lg  bg-danger" href = "bbs.jsp" role = "button">게임리뷰 게시판으로 가기</a>
   	</div>
   </div>

    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
   
  </body>
</html>