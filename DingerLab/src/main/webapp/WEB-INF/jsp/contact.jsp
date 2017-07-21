<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="webjars/normalize.css/7.0.0/normalize.css">
	<link type="text/css" rel="stylesheet" href="css/header.css">
	<link type="text/css" rel="stylesheet" href="css/category.css">
	<link type="text/css" rel="stylesheet" href="css/footer.css">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/header.js"></script>
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.css">
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsBy1zOEc8d1buJnhe5fgqkYhCo6kbFxo&callback=initMap"></script>
	
	<script type="text/javascript" src="js/contact.js"></script>
	<link type="text/css" rel="stylesheet" href="css/contact.css">
	
	<title>Dinger's Lab</title>
</head>
<body style="background-image: url('images/footer/footerImage.jpg');">
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<h3>Contact</h3>
		<div>
			<img alt="" src="images/contact/mailer.png">
		</div>
		<article id="contact-description">
			<strong>캐릭터 콜라보레이션, 매장 입점, 기타 외주 제작 문의</strong><br> 
			H.P : 010 3558 4351 <br>
			mail : dingerphd@gmail.com
		</article>
		<p> <b>지번</b>   :  서울시 성북구 안암동5가 103-145 </p>
		<p> <b>도로명</b> :  서울시 성북구 인촌로26길 15</p>
		<div id="googleMap"></div>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>