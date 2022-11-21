<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>우리동네에서 찾는 당근알바</title>
	<%@ include file="../module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="../module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="post-wrap">
		<div class="slide-img">
			<img alt="" src="resources/img/realty-post-img.jpg">
		</div>
		<div class="id-section">
			<div class="id-section-left">
				<div class="id-img"><img src=""></div>
				<div class="id-name">당근당근</div>
				<div class="id-address">심곡동</div>
			</div>
			<div class="id-section-right">
				<div class="dgree">78.2℃</div>
				<div class="dgree-level"></div>
				<div class="icon"></div>
				<div class="manner-dgree">매너온도</div>
			</div>
		</div>
		<hr>
		<div class="title">
			<div class="title-stat">
				<div class="">세입자</div>
				<div class="">투룸</div>
			</div>
			<div class="title-name">
				<div class="stat">판매중</div>
				<div class="title-main">단기 300 / 1</div>
			</div>
			<div class="title-date">2개월 전 작성</div>
		</div>
		<div class="info">
			<div class="info-title">정보</div>
			<div class="info-content">월급 103만원</div>
			<div class="info-content">인천 부평구 광장로 4</div>
			<div class="info-content">월~금 협의</div>
			<div class="info-content">10:00~16:00 협의</div>
		</div>
		<div class="detail">
			<div class="detail-title">상세 내용</div>
			<div class="detail-content">룰루랄라</div>
		</div>
		<div class="address">
			<div class="naver-map">
				<!-- Naver Map API -->
				naver map api
				<!-- //Naver Map API -->
			</div>
			<div class="address-detail">인천 부평구 광장로4</div>
		</div>
		<div class="recommand">
			<div class="recommand-title">부평동 근처 알바</div>
			<div class="posts">
				<a href="/KHdaangn/realty-posts" class="">
					<article>
						<div class="posts-img"><img alt="" src="resources/img/realty-post-img.jpg"></div>
						<div class="posts-content">
							<div class="posts-title">투룸이상 300만원/1만원 - 인천광역시 남동구</div>
							<div class="posts-address">만수동</div>
							<div class="posts-amount">단기 300 / 1</div>
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
