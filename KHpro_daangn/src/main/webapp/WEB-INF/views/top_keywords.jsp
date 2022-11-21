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
		<div class="keyword">
			<h1 class="keyword-title">오늘의 중고 인기 검색어</h1>
			<ol class="keyword-list">
				<li>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword1}"/>"${keyword1}"</a>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.rank1}"/>"${rank1}"</a>
				</li>
				<li>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword2}"/>"${keyword2}"</a>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.rank2}"/>"${rank2}"</a>
				</li>
				<li>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword3}"/>"${keyword3}"</a>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.rank3}"/>"${rank3}"</a>
				</li>
				<li>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword4}"/>"${keyword4}"</a>
					<a href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.rank4}"/>"${rank4}"</a>
				</li>
			</ol>
		</div>
	</div>	
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="./module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
