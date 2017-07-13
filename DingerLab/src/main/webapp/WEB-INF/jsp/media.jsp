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
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"><!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link type="text/css" rel="stylesheet" href="css/media.css">
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.jquery.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrap.youtubepopup.js"></script>
	<script type="text/javascript" src="js/media.js"></script>
	
	<title>Dinger's Lab</title>
</head>
<body style="background-image: url('images/footer/footerImage.jpg');">
	<jsp:include page="header.jsp"></jsp:include>

	<section class="first-section">
		<h3>Video Clips</h3>
		<div class="swiper-container three-show">
			<div class="swiper-wrapper">
				<div class="swiper-slide youtube" rel="XDdTizWKH2Q">
					<img alt="bg1" src="images/media/1.JPG">
				</div>
				<div class="swiper-slide youtube" rel="qzgEt6rt6yw">
					<img alt="bg1" src="images/media/2.JPG">
				</div>
				<div class="swiper-slide youtube" rel="xLrtqxBgxII">
					<img alt="bg1" src="images/media/3.JPG">
				</div>
				<div class="swiper-slide youtube" rel="c4Qt7RY-7dM">
					<img alt="bg1" src="images/media/4.JPG">
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<div class="swiper-button-prev" style="background-image: url('images/left-arrow.png');"></div>
		    <div class="swiper-button-next" style="background-image: url('images/right-arrow.png');"></div>
		</div>
	</section>
	
	<section>
		<h3>Blog / SNS</h3>
		<div class="swiper-container three-show">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img alt="bg1" src="images/about/product/product1.jpg">
				</div>
				<div class="swiper-slide">
					<img alt="bg1" src="images/about/product/product2.jpg">
				</div>
				<div class="swiper-slide">
					<img alt="bg1" src="images/about/product/product3.png">
				</div>
				<div class="swiper-slide">
					<img alt="bg1" src="images/about/product/product1.jpg">
				</div>
				<div class="swiper-slide">
					<img alt="bg1" src="images/about/product/product2.jpg">
				</div>
				<div class="swiper-slide">
					<img alt="bg1" src="images/about/product/product3.png">
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<div class="swiper-button-prev" style="background-image: url('images/left-arrow.png');"></div>
		    <div class="swiper-button-next" style="background-image: url('images/right-arrow.png');"></div>
		</div>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>