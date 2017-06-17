<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="/webjars/normalize.css/7.0.0/normalize.css">
	<link type="text/css" rel="stylesheet" href="/css/header.css">
	<link type="text/css" rel="stylesheet" href="/css/index.css">
	<link type="text/css" rel="stylesheet" href="/css/category.css">
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/js/header.js"></script>
	<script type="text/javascript" src="/js/index.js"></script>
	<meta charset="UTF-8">
	<title>Dinger Lab</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div id="video-section">
		<div id="image-layer">
			<jsp:include page="category.jsp"></jsp:include>
			<video autoplay="autoplay" loop="loop" poster="/images/background.png" muted>
				<source src="/movie/Introducing  Machanic paper Toys.mp4">
			</video>
			
			<div id="icon-container">
				<div id="icon-section" >
					<i id="icon" class="fa fa-angle-down" onclick="scrollMove();" ></i>
				</div>
			</div>
			
		</div>
	</div>
	
</body>
</html>