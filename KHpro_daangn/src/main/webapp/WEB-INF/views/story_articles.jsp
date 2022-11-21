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
	<div class="post-wrap">
		<div class="slide-img">
			<img alt="" src="${img}/article-img.jpg">
		</div>
		<div class="id-section">
			<a href="${user}" class="">
				<div class="id-section-left">
					<div class="id-img"><img src=""></div>
					<div class="id-name">당근당근</div>
					<div class="id-address">고양시 덕양구 행신동</div>
				</div>
				<div class="id-section-right">
					<div class="dgree">51.7℃</div>
					<div class="dgree-level"></div>
					<div class="icon"></div>
					<div class="manner-dgree">매너온도</div>
				</div>
			</a>
		</div>
		<hr>
		<div class="detail">
			<div class="detail-content">룰루랄라</div>
			<div class="detail-info">
				<div class="date">2시간 전</div>
				<div class="view">조회 1431</div>
			</div>
		</div>
		<hr>
		<div class="comment">
			<h3>댓글 2</h3>
			<div class="comment-list">
				<div class="comment-section">
					<div class="commnet-img"><img src=""></div>
					<div class="commnet-name">토마토</div>
					<div class="commnet-address">덕양구 행신동</div>
					<div class="commnet-text">눈누난나</div>
					<div class="commnet-date">31분전</div>
				</div>			
			</div>
			<div class="comment-list">
				<div class="comment-section">
					<div class="commnet-img"><img src=""></div>
					<div class="commnet-name">토마토</div>
					<div class="commnet-address">덕양구 행신동</div>
					<div class="commnet-text">눈누난나2</div>
					<div class="commnet-date">30분전</div>
				</div>			
			</div>
		</div>
		<hr>
		<div class="reply">
			<input class="reply-input">
			<button class="btn-reply">작성</button>
		</div>
		<hr>
		<div class="recommand-articles">
			<h3>KH당근마켓 인기중고</h3>
			<div class="hot_articles-link"><a href="${hot_articles}">더 구경하기</a></div>
			<div class="posts">
				<a href="${articels}" class="">
					<article>
						<div class="article-img"><img alt="" src="${img}/article-img.jpg"></div>
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
	<%@ include file="./module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
