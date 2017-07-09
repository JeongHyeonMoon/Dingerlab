<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="category">
	<ul id="category-list">
		<li>
			<a href="./about">About us</a>
		</li>
		<li>
			<a href="./character">Character</a>
		</li>
		<li>
			<a href="./market">Market</a>
		</li>
		<li>
			<a href="./media">Media</a>
		</li>
		<li>
			<a href="./event">Event</a>
		</li>
		<li>
			<a href="./contact">Contact</a>
		</li>
	</ul>
	
	<ul id="small-category-list">
		
		<c:choose>
			
			<c:when test="${characterNameIdList != null}">
				<c:forEach var="characterNameId" items="${characterNameIdList}">
					<li class="small-category">
						${characterNameId.cName}
						<input type="hidden" class="cId" value="${characterNameId.cId}">
					</li>
				</c:forEach>
			</c:when>
			
			<c:when test="${categoryList != null }">
				<c:forEach var="category" items="${categoryList}">
					<li class="small-category">${category}</li>
				</c:forEach>
			</c:when>
		</c:choose>
		
	</ul>
</div>