<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	
	<link type="text/css" rel="stylesheet" href="css/character.css">
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.jquery.js"></script>
	<script type="text/javascript" src="js/character.js"></script>
	
	<title>Dinger's Lab</title>
</head>
<body style="background-image: url('images/footer/footerImage.jpg');">
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<h3>Character</h3>
		<ul id="grid-section">
			<c:forEach var="character" items="${characterList}">
				<li>
					<div class="grid-cell" data="${character.cId}">
						<h3>${character.cTitle}</h3>
						<img class="character-image" alt="" src="images/character/thumbnail/${character.cThumb}">
						<div class="description" style="${character.cStyle}">${character.cDescription}</div>
					</div>
					
				</li>
			</c:forEach>
		</ul>
	</section>

	<div id="modal">
		<div id="modal-section">
			<div id="modal-container">
			
				<h1>This is title</h1><img class="quiteBtn" src="images/character/quiteButton.png">
				
				<div class="swiper-container">
					<div class="swiper-wrapper">
					</div>
					<div class="swiper-pagination"></div>
					<div class="swiper-button-prev" style="background-image: url('images/left-arrow.png');"></div>
		    		<div class="swiper-button-next" style="background-image: url('images/right-arrow.png');"></div>
				</div>
				
				<div id="video-container">
					
				</div>
				
				<a href="#"><b>구매하기</b></a>
				
				<div id="description-container">
					<span class="cdName">딩고 #4. 아르세</span><br>
					<span class="cdTop1">일단은 탐정</span><br>
					<span class="cdTop2">미상( 딩거: 이상하다 분명히 내가 만들었는데 ...)</span><br>
					<div class="description-subtitle"></div>
					<div class="description-contents">
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>