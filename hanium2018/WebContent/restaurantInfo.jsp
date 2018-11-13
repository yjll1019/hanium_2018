<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<!-- Naver 지도 API -->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1OERpCoygykgEQcnSyfZ&submodules=geocoder"></script>

<title>상세 페이지</title>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-default fixed-top">
		<div class="container">
			<a class="navbar-brand" href="home.jsp">모찌</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="home.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 사진 -->
	<div align="center" style="margin-top: 80px;">
		<img src="img/구로구.jpg" width="200px" height="200px" align="middle" />
	</div>


	<!-- 음식점 정보 -->
	<div align="center" style="margin-top: 30px;">
		<h2>댕댕이와 함께하는 음식점</h2>
		<i style="color: #4582EC;">#강아지</i> <i style="color: #4582EC;">#양식</i>
		<i style="color: #4582EC;">#구로구</i>
		<hr width="80%" size="1px">
	</div>

	<div align="center" style="margin-top: 30px;">
		<table cellpadding="5px">
			<tr>
				<td width="80" height="30">주소</td>
				<td>서울특별시 구로구 연동로 320 @@@</td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>000 - 0000 - 0000</td>
			</tr>
			<tr>
				<td>메뉴</td>
				<td>
					<ul style="align: left;">
						<li>문어</li>
						<li>키조개</li>
						<li>해물탕</li>
					</ul>
				</td>
			</tr>
		</table>
		<hr width="80%" size="1px">
	</div>

	<!-- 지도 -->
	<div id="map" style="width: 300px; height: 300px; margin-left: 500px;"></div>
	<script>
      var map = new naver.maps.Map('map');
      var myaddress = '구로구 연동로 320';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
      naver.maps.Service.geocode({address: myaddress}, function(status, response) {
          if (status !== naver.maps.Service.Status.OK) {
              return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
          }
          var result = response.result;
          // 검색 결과 갯수: result.total
          // 첫번째 결과 결과 주소: result.items[0].address
          // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
          var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
          map.setCenter(myaddr); // 검색된 좌표로 지도 이동
          // 마커 표시
          var marker = new naver.maps.Marker({
            position: myaddr,
            map: map
          });
          // 마커 클릭 이벤트 처리
          naver.maps.Event.addListener(marker, "click", function(e) {
            if (infowindow.getMap()) {
                infowindow.close();
            } else {
                infowindow.open(map, marker);
            }
          });
          // 마크 클릭시 인포윈도우 오픈
          var infowindow = new naver.maps.InfoWindow({
              content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
          });
      });
      </script>
	<!-- 리뷰 -->
	<div align="center" style="margin-top: 50px; margin-bottom: 50px;">
		<h2>REVIEW</h2>
		</br>
		<table style="max-width:500px; align:center;">
			<tr>
				<td width="90" height="50">댕댕맘 |</td>
				<td>맛집이내여~</td>
			</tr>
			<tr>
				<td height="50">낑깡쥔 |</td>
				<td>해물탕 최고 ^____^</td>
			</tr>
		</table>
	</div>
</body>
</html>