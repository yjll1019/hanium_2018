<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 음식점 상세보기 </title>

<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
body { font-family:jeju gothic; }
img { margin-left: 15px; margin-right: 15px;}
</style>

</head>
<body>
	<div align="center" style="margin-top:50px;"> <span style="font-size: 40px; font-weight: bold;"> T T </span> </div>

	<!-- 사진 -->
	<div align="center" style="margin-top:80px;">
		<img src="images/dog.jpg" width="200px" height="200px" align="middle"/>
	</div>
	
	<!-- 좋아요 버튼 
	<div align="center" style="margin-top:20px; margin-left:170px;">
		 더블클릭하면 체크가 풀림
		<input type="radio" value="1" ondblclick="this.checked=false"/>
	</div>
	-->
	<!-- 음식점 정보 -->
	<div align="center" style="margin-top:30px;">
		<h2> 댕댕이와 함께하는 음식점
			<input type="radio" value="1" ondblclick="this.checked=false"/>
		</h2>
		<hr width="80%" size="1px">
	</div>
	
	<div align="center" style="margin-top:30px;">
		<table cellpadding="5px">
			<tr>
				<td width="80" height="30"> 주소 </td>
				<td> 서울특별시 구로구 연동로 320 @@@</td>
			</tr>
			<tr>
				<td>	</td>
			</tr>
			<tr>
				<td> 전화번호 </td>
				<td> 000 - 0000 - 0000 </td>
			</tr>
			<tr>
				<td> 메뉴 </td>
				<td>
					<ul style="align:left;">
						<li> 떡볶이 </li>
						<li> 피자 </li>
						<li> 치킨마요 </li>
					</ul>
				</td>
			</tr>
		</table>
		<hr width="80%" size="1px">
	</div>
	
	<!-- 지도 -->
	<div align="center" style="margin-top:50px; margin-bottom:50px;">
		<img src="images/map.JPG" width="400px" height="250px" align="middle"/>
	</div>
	<hr width="80%" size="1px">
	
	<!-- 블로그 -->
	<div align="center" style="margin-top: 50px; margin-bottom: 50px;">
		<h2> BLOG </h2> 
		<table>
			<tr>
				<td width="100" height="140"> <img src="images/dog1.jpg" width="100px" height="120px"/> </td>
				<td width="100" height="140"> <img src="images/dog2.jpg" width="100px" height="120px"/> </td>
				<td width="100" height="140"> <img src="images/dog3.jpg" width="100px" height="120px"/> </td>
				<td width="100" height="140"> <img src="images/dog4.jpg" width="100px" height="120px"/> </td>
				<td width="100" height="140"> <img src="images/dog5.jpg" width="100px" height="120px"/> </td>
			</tr>
			<tr style="font-size: 12px;">
				<td height="50"> [맛집리뷰] 댕댕이와 함께 ... </td>
				<td height="50"> [맛집리뷰] 댕댕이와 함께 ... </td>
				<td height="50"> [맛집리뷰] 댕댕이와 함께 ... </td>
				<td height="50"> [맛집리뷰] 댕댕이와 함께 ... </td>
				<td height="50"> [맛집리뷰] 댕댕이와 함께 ... </td>
			</tr>
		</table>
	</div>
	<hr width="80%" size="1px">
	
	<!-- 리뷰 -->
	<div align="center" style="margin-top: 50px; margin-bottom: 50px;">
		<h2> REVIEW </h2>
		<table width="80%">
			<tr>
				<td width="80" height="50"> 댕댕맘 |</td>
				<td> 맛집이내여~ </td>
			</tr>
			<tr>
				<td height="50"> 낑깡쥔 |</td>
				<td> 떡볶이 최고 ^____^ </td>
			</tr>
		</table>
	</div>
</body>
</html>