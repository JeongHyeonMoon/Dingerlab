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
	<script type="text/javascript" src="js/character.js"></script>
	
	<title>Dinger's Lab</title>
</head>
<body style="background-image: url('images/footer/footerImage.jpeg');">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="category.jsp"></jsp:include>
	
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

</body>
</html>