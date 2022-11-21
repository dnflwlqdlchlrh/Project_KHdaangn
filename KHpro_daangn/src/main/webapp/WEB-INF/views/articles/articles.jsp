<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>'${title}' | KH당근마켓 중고거래</title>
	<%@ include file="../module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="../module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="post-wrap">
		<div class="slide-img">
			<img alt="" src="${img}/article-img.JPG">
		</div>
		<div class="id-section">
			<a href="${user}" class="">
				<div class="id-section-left">
					<div class="id-img"><img src=""></div>
					<div class="id-name">당근당근</div>
					<div class="id-address">남구 문현제2동</div>
				</div>
				<div class="id-section-right">
					<div class="dgree">39.6℃</div>
					<div class="dgree-level"></div>
					<div class="icon"></div>
					<div class="manner-dgree">매너온도</div>
				</div>
			</a>
		</div>
		<hr>
		<div class="title">
			<div class="title-main">삼성 55인치 tv</div>
			<div class="title-sort">디지털기기</div>
			<div class="title-date">2일 전</div>
			<div class="title-amount">100,000원</div>
		</div>
		<div class="detail">
			<div class="detail-content">룰루랄라</div>
			<div class="detail-info">
				<div class="like">관심 39</div>
				<div class="chat">채팅 79</div>
				<div class="view">조회 1431</div>
			</div>
		</div>
		<hr>
		<div class="recommand-articles">
			<div class="posts">
				<a href="${articles}" class="">
					<article>
						<div class="article-img"><img alt="" src="${img}/article-img.JPG"></div>
						<div class="atticle-content">
							<div class="article-title">삼성 55인치 tv</div>
							<div class="article-amount">100,000원</div>
							<div class="article-address">부산 남구 문현제2동</div>
							<div class="article-like">관심 40</div>
							<div class="article-chat">채팅 79</div>
						</div>
					</article>
				</a>
			</div>
		</div>
	</div>
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="../module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
