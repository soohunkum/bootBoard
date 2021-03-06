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
   		<h1>게임 소개</h1>
   		<p>여러가지 게임들을 소개하는 곳입니다</p>
   			<a class = "btn btn-primary btn-lg  bg-danger" href = "bbs.jsp" role = "button">게임리뷰 게시판으로 가기</a>
   	</div>
   </div>
   <nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-left">
	<div class ="container">
		<a class="navbar-brand" href="index.html">금수훈</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">메인
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#career">경력</a></li>
				<li class="nav-item"><a class="nav-link" href="#portfolio">포트폴리오</a></li>
				<li class="nav-item"><a class="nav-link" href="#contact">연락처</a></li>
			</ul> 
		</div>
	</div>
	</nav>
	<section class = "container mt-5" id= "home">
		<div class = "text-center">
			<img src = "img/baram.jpg" class="img-fluid mb-3 rounded"/>
			<h2>바람의 나라</h2>
		<a href = "https://game.naver.com/lounge/The_Kingdom_of_the_Wind/now" ><img src = "img/b.svg" class="img-fluid mr-1"><span class = "mr-2">홈페이지로 가기</span></a>
			
			
		</div>
	</section>
	<section class = "bg-white text-dark mt-5 mb-3 pt-5 pb-4" id="career">
		<div class = "text-center mb-3 text-dark">
		<h2>게임정보</h2>
		</div>
		<div class = "row justify-content-center">
			<div class = "col-4 text-left mb-5" style = "max-width: 480;">
				<ul class = "mt-5">
					<li class ="mt-4">장르 : MMORPG</li>
					<li class ="mt-4">등급 : 전체이용가</li>
					<li class ="mt-4">출시 : 1996.04.05</li>
					<li class ="mt-4">제작 : (주)넥슨코리아</li>
					<li class ="mt-4">배급 : (주)넥슨코리아</li>
				</ul>
			</div>
			<div class = "col-4 text-left mb-5" style="max-width: 480;">
				<ul  class = "mt-5">
					<li class = "mt-4">언어 : 한국어</li>
					<li class = "mt-4">플랫폼 : Windows</li>
				</ul> 
			</div>
		</div>
	</section>
	<section class = "mb-3 pt-4 pb-5" id="portfolio">
		<div class = "text-center">
			<h2>직업</h2>
		</div>
		<div class = "container mt-3" style = "max-width: 920px;">
			<div class ="card-deck">
				
				<div class = "card">
					<img class = "card-img-top" src = "img/sky.gif"/>
					<div class = "card-body">
						<h4 class = "card-title">천인</h4>
						<p class = "card-text" style="text-align: justify">
				스킬(98개) <br> 창조/개조/지배의 능력을 가졌다. </p>
					</div>
				</div>
				<div class = "card">
					<img class = "card-img-top" src = "img/yongsul.jpg"/>
					<div class = "card-body">
						<h4 class = "card-title">영술사</h4>
						<p class = "card-text" style="text-align: justify">
				스킬(35개)<br> 영술사는 각기 다른 역할을 수행할 수 있는 요괴 대장군, 도깨비불, 괴선에 빙의되어 다양한 전투 상황에 빠르게 대처할 수 있다 </p>
					</div>
				</div>
				<div class = "card">
					<img class = "card-img-top" src = "img/mado.jpg"/>
					<div class = "card-body">
						<h4 class = "card-title">마도사</h4>
						<p class = "card-text" style="text-align: justify">
				스킬(64개)<br> 광폭의 힘으로 아군의 마법을 더욱 강력하게 만든다. </p>
					</div>
				</div>
				<div class = "card">
					<img class = "card-img-top" src = "img/arrow.jpg"/>
					<div class = "card-body">
						<h4 class = "card-title">궁사</h4>
						<p class = "card-text" style="text-align: justify">
				스킬(102개)<br> 궁술을 통하여 강력한 원거리 공격을 자랑한다. </p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class ="bg-white" id ="contact">
		<div class ="container">
			<div class ="row">
				<div class ="col-lg-6">
					<h2 class ="mt-5">연락처</h2>
					<div class = "d-flex flex-row">
						<div class ="p-3 align-self-start">
							<img src ="img/d.svg"/>
						</div>
						<div class ="p-3 align-self-end" style ="text-align : justify">
							JSP 기반 웹 사이트 개발 문의
						</div>
					</div>
					<div class = "d-flex flex-row">
						<div class ="p-3 align-self-start">
							<img src ="img/d.svg"/>
						</div>
						<div class ="p-3 align-self-end" style ="text-align : justify">
							JSP 기반 웹 사이트 개발 문의
						</div>
					</div>
					<div class = "d-flex flex-row">
						<div class ="p-3 align-self-start">
							<img src ="img/d.svg"/>
						</div>
						<div class ="p-3 align-self-end" style ="text-align : justify">
							JSP 기반 웹 사이트 개발 문의
						</div>
					</div>
					<div class = "d-flex flex-row">
						<div class ="p-3 align-self-start">
							<img src ="img/d.svg"/>
						</div>
						<div class ="p-3 align-self-end" style ="text-align : justify">
							JSP 기반 웹 사이트 개발 문의
						</div>
					</div>
				</div>
				<div class ="col-lg-6">
					<div class = "card text-center card-form my-4">
						<div class = "card-body">
							<h2>간편 문의</h2>
							<form>
								<div class = "form-group">
									<input type = "text" class ="form-control form-control- lg" placeholder="이름"/>
								</div>
								<div class = "form-group">
									<textarea class = "form-control form-control-lg" placeholder ="내용을 입력하세요" style = "resize:none;"></textarea>
								</div>
								<button type ="submit" class ="btn btn-success">전송하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class ="text-center bg-dark text-white">
		<div class = "footer-above">
			<div class = "container pt-4">
				<div class = "row">
					<div class = "footer-col col-md-4">
						<h3 style ="color : white;">위치</h3>
						<p>영남기술교육원<br />대구광역시 달서구</p>
					</div>
					<div class = "footer-col col-md-4">
						<h3 style ="color: white;">소셜 미디어</h3>
						<a href ="#" class ="btn btn-light m-2">페이스북</a>
						<a href ="#" class ="btn btn-light m-2">유튜브</a>
						<a href ="#" class ="btn btn-light m-2">블로그</a>
					</div>
					<div class ="footer-col col-md-4">
						<h3 style = "color : white;">개발자 한 마디</h3>
						<p>언제든지 연락주세요!</p>
					</div>
				</div>
			</div>
		</div>
		<div class ="footer-below pb-4">
			<div class = "container text-center">
				<div>Copyright &copy; 금수훈 2020. All Right Reserved.</div>
			</div>
		</div>
	</footer>
    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
   
  </body>
</html>