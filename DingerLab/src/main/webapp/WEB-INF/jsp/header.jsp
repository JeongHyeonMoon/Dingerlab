<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <header>
    	<a href="./">
    		<span>D</span>inger's <span>L</span>ab.
    	</a>
    	
    	<ul id="language-list">
    		<li><a href="#" class="activate" onclick="languageClick(this);">한국어</a></li>
    		<li><a href="#" onclick="languageClick(this);">English</a></li>
    		<li><a href="#" onclick="languageClick(this);">日本語</a></li>
    	</ul>
    	<jsp:include page="category.jsp"></jsp:include>
    </header>