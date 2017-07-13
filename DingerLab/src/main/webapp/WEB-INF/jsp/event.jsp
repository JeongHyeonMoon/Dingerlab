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
	
	<link type="text/css" rel="stylesheet" href="css/event.css">
	<script type="text/javascript" src="js/event.js"></script>
	
	<title>Dinger's Lab</title>
</head>
<body style="background-image: url('images/footer/footerImage.jpg');">
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<h3>Event</h3>
		<ul id="event-list">
			<li>
				<div class="event-cell">
					<img alt="bg1" src="images/market/ationery.JPG">
				</div>
			</li>
			<li>
				<div class="event-cell">
					<img alt="bg1" src="images/market/ationery.JPG">
				</div>
			</li>
		</ul>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>