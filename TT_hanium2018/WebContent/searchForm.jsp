<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viwport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/korea-map-font-v1.css">

<title>Insert title here</title>
</head>
<body>


	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-default fixed-top">
	<div class="container">
		<a class="navbar-brand" href="home.jsp">TT</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<br><br>
	<!-- Page Content -->
	<form action="result.jsp" name="str" method="post">
	<div class="container">

		<!-- Heading Row -->
		<div class="row my-4">
			<div class="col-lg-8">
				<h1>전국지도 및 주제검색</h1>
			<ul class="korea-map-font-v1">
				<li class="강원">a</li>
				<li class="경기">b</li>
				<li class="경남">c</li>
				<li class="경북">d</li>
				<li class="광주">e</li>
				<li class="대구">f</li>
				<li class="대전">g</li>
				<li class="부산">h</li>
				<li class="서울">i</li>
				<li class="세종">j</li>
				<li class="울산">k</li>
				<li class="인천">l</li>
				<li class="전남">m</li>
				<li class="전북">n</li>
				<li class="제주">o</li>
				<li class="충남">p</li>
				<li class="충북">q</li>
			</ul>
			</div>
			<!-- /.col-lg-8 -->
			<div class="col-lg-4">
				<h1>시,군,구 단위까지 나올예정</h1>
				<p>~~지역이 선택되었습니다.</p>
			</div>
			<!-- /.col-md-4 -->
		</div>
		<!-- /.row -->


		<div class="container">
<div class="table-responsive">
<table class="table">
			<tr>
				<th>여행의 주체</th>
				<td><button class="go-button" type="button" name="tagB" value="가족">가족</button></td>
				<td><button class="go-button" type="button" name="tagB" value="어린이">어린이</button></td>							
				<td><button class="go-button" type="button" name="tagB" value="나홀로">나홀로</button></td>
				<td><button class="go-button" type="button" name="tagB" value="강아지">강아지</button></td>
				<td><button class="go-button" type="button" name="tagB" value="친구">친구</button></td>
			
								
			</tr>
			
			<tr>
				<th>여행을 떠나는 시기</th>
				<td><button class="go-button" type="button" name="tagB" value="봄">봄</button></td>
				<td><button class="go-button" type="button" name="tagB" value="여름">여름</button></td>							
				<td><button class="go-button" type="button" name="tagB" value="가을">가을</button></td>
				<td><button class="go-button" type="button" name="tagB" value="겨울">겨울</button></td>
				<td><button class="go-button" type="button" name="tagB" value="주말">주말</button></td>
			</tr>
			
			<tr>
				<th>여행의 목적</th>
				<td><button class="go-button" type="button" name="tagB" value="휴양">휴양</button></td>
				<td><button class="go-button" type="button" name="tagB" value="관광">관광</button></td>							
				<td><button class="go-button" type="button" name="tagB" value="캠핑">캠핑</button></td>
				<td><button class="go-button" type="button" name="tagB" value="먹방">먹방</button></td>
				<td><button class="go-button" type="button" name="tagB" value="쇼핑">쇼핑</button></td>
			</tr>
			
			<tr>
				<th>여행의 장소</th>
				<td><button class="go-button" type="button" name="tagB" value="바다">바다</button></td>
				<td><button class="go-button" type="button" name="tagB" value="계곡">계곡</button></td>							
				<td><button class="go-button" type="button" name="tagB" value="산">산</button></td>
				<td><button class="go-button" type="button" name="tagB" value="놀이공원">놀이공원</button></td>
				<td><button class="go-button" type="button" name="tagB" value="공연">공연</button></td>
			</tr>
			
			<tr>
				<th>여행의 이동수단</th>
				<td><button class="go-button" type="button" name="tagB" value="시티투어">시티투어</button></td>
				<td><button class="go-button" type="button" name="tagB" value="기차">기차</button></td>							
				<td><button class="go-button" type="button" name="tagB" value="버스">버스</button></td>
				<td><button class="go-button" type="button" name="tagB" value="자전거">자전거</button></td>
				<td><button class="go-button" type="button" name="tagB" value="도보">도보</button></td>
			</tr>
		</table>
</div>
</div>
<div class="container text-center">
				<input type="submit" class="btn btn-info btn-danger btn-md" value="검색하기" title="검색하기">
				&nbsp;&nbsp;<input type="reset" class="btn btn-info btn-secondary btn-md"value="초기화" title="초기화">
			</div>

		</form>
	<br><br>
		<!-- Content Row -->
		<div class="row">
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">추천1</h2>
						<p class="card-text">좋아요 순으로 인기있는 맛집</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">자세히 보기</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">추천2</h2>
						<p class="card-text">좋아요 순으로 인기있는 여행지</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">자세히보기</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">추천3</h2>
						<p class="card-text">좋아요 순으로 인기있는 맛집 랜덤 추천</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">자세히 보기</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->


		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->


	<!-- Footer -->
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; TT(Travel&Testy)</p>
	</div>
	<!-- /.container --> </footer>

</html>