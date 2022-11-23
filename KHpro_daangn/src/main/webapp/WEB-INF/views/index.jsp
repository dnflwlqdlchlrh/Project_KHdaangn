<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>당신 근처의 KH당근마켓</title>
	<%@ include file="./module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="./module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="main-wrap">
		<div class="main-content">
			<div class="text-section">
				<div class="main-title">당신 근처의<br> KH당근마켓<br></div>
				<div class="main-detail">중고 거래부터 동네 정보까지, 이웃과 함께해요.<br>가깝고 따뜻한 당신의 근처를 만들어요.</div>
			</div>
			<div class="img-section">
				<div class="main-img"><img src="${img}/main-img01.png"></div>
			</div>
		</div>
		<div class="main-content">
			우리 동네<br> 중고 직거래 마켓<br>
		</div>
		<div class="main-content">
			이웃과 함께 하는<br> 동네생활<br>
		</div>
		<div class="main-content">
			내 근처에서 찾는<br> 동네가게<br>
		</div>
		<div class="second-content">
			중고거래 인기매물<br>
			<a href="${hotArticles}">인기매물 더 보기</a>
		</div>
		<div class="third-content">
			<a href="${topKeywords}">중고거래 인기검색어</a>
			<ul>
				<li><a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword1}"/>"${keyword1}"</a></li>
				<li><a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword1}"/>"${keyword1}"</a></li>
				<li><a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword1}"/>"${keyword1}"</a></li>
			</ul>
		</div>
	</div>	
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="./module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
