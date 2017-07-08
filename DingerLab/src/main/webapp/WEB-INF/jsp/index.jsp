<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="webjars/normalize.css/7.0.0/normalize.css">
	<link type="text/css" rel="stylesheet" href="css/header.css">
	<link type="text/css" rel="stylesheet" href="css/index.css">
	<link type="text/css" rel="stylesheet" href="css/category.css">
	<link type="text/css" rel="stylesheet" href="css/footer.css">
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.jquery.js"></script>
	<script type="text/javascript" src="js/header.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<meta charset="UTF-8">
	<title>Dinger's Lab</title>
</head>
<body style="background-image: url('images/footer/footerImage.jpg');">
	<jsp:include page="header.jsp"></jsp:include>
	
	<div id="video-section">
		<div id="image-layer">
			<video autoplay="autoplay" loop="loop" poster="images/background.png" muted>
				<source src="movie/Introducing  Machanic paper Toys.mp4">
			</video>
			
			<div id="icon-container">
				<div id="icon-section" >
					<i id="icon" class="fa fa-angle-down" onclick="scrollMove();" ></i>
				</div>
			</div>
		</div>
	</div>
	<div id="contents">
		<div id="introduce">
			<h1>딩거랩에 어서오세요</h1>
			<p>딩거랩은 종이와 기계공학을 결합하여 보다 다양하고 새로운 가치를 가진 제품을 만들어내는 곳입니다. </p>
			<p>기존의 종이 제품이 할 수 없다고 생각했던 일을 해내는 제품들을 즐겨주세요. </p>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<c:forEach var="photo" items="${photos}">
						<div class="swiper-slide">
							<img alt="bg1" src="images/index${photo}">
						</div>
					</c:forEach>
				</div>
				<div class="swiper-pagination"></div>
				<div class="swiper-button-prev" style="background-image: url('images/left-arrow.png');"></div>
			    <div class="swiper-button-next" style="background-image: url('images/right-arrow.png');"></div>
			</div>
		</div>
	</div>
</body>
</html>