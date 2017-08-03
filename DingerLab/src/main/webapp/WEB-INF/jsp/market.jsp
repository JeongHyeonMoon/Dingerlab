<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="webjars/normalize.css/7.0.0/normalize.css">
	<link type="text/css" rel="stylesheet" href="css/header.css">
	<link type="text/css" rel="stylesheet" href="css/category.css">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/header.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsBy1zOEc8d1buJnhe5fgqkYhCo6kbFxo&callback=initMap"></script>
	
	<link type="text/css" rel="stylesheet" href="css/market.css">
	<link type="text/css" rel="stylesheet" href="css/footer.css">
	<script type="text/javascript" src="js/market.js"></script>
	<title>Dinger's Lab</title>
</head>
<body style="background-image: url('images/footer/footerImage.jpg');">
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<h3>Offline</h3>
		<ul class="grid-section">
			<li>
				<div class="grid-cell">
					<input type="hidden" class="yPos" value="37.4922149">
					<input type="hidden" class="xPos" value="127.020674">
					<input type="hidden" class="description" value="서울시 서초구 사임당로 23길 43">
					<h3>Ationery</h3>
					<img class="market-thumnail" alt="" src="images/market/offline/ationery.JPG">
				</div>
			</li>
			<li>
				<div class="grid-cell">
					<input type="hidden" class="yPos" value="37.5679718">
					<input type="hidden" class="xPos" value="127.010902">
					<input type="hidden" class="description" value="서울시 중구 을지로 281 배움터 2층 디자인박물관">
					<h3>DDP</h3>
					<img class="market-thumnail" alt="" src="images/market/offline/ddp.JPG">
				</div>
			</li>
		</ul>
	</section>
	
	<section>
		<h3>Online</h3>
		<ul class="grid-section">
			<li>
				<div class="offline-grid" url="http://handion.com/mshop?m=196">
					<input type="hidden" class="yPos" value="37.4922149">
					<input type="hidden" class="xPos" value="127.020674">
					<input type="hidden" class="description" value="서울시 서초구 사임당로 23길 43">
					<h3>7hands</h3>
					<img class="market-thumnail" alt="" src="images/market/online/7hands.png">
				</div>
			</li>
		</ul>
	</section>
	
	<div id="modal">
		<div id="modal-section">
			<div id="modal-container">
				<h1>This is title</h1>
				<img class="quiteBtn" src="images/character/quiteButton.png">
				
				<div id="googleMap"></div>
				<div id="modal-description"></div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>