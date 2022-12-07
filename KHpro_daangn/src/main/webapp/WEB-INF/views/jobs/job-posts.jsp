<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>우리동네에서 찾는 당근알바</title>
	<title><c:out value="${jobsList.title}"/></title>
	<%@ include file="../module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="../module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="post-wrap">
		<div class="slide-img">
			<img alt="" src="resources/img/job-post-img.jpg">
		</div>
		<!-- session -> not empty 변경 -->
		<c:if test="${empty sessionScope.loginData}">
			<div class="post-btn">
				<button class="" onclick="location.href='${jobModifyUrl}'">수정</button>
			</div>
		</c:if>
		
		<div class="id-section">
			<div class="id-section-left">
				<div class="id-img"><img src=""></div>
				<div class="id-name">당근당근</div>
				<div class="id-address">부평동</div>
			</div>
			<div class="id-section-right">
				<div class="dgree">36.9℃</div>
				<div class="dgree-level"></div>
				<div class="icon"></div>
				<div class="manner-dgree">매너온도</div>
			</div>
		</div>
		<hr>
		<div class="title">
			<div class="title-main">[부평역]주5일/4시간/130~150만원/홍보/상담/초보 경단가능</div>
			<div class="title-name">당근당근</div>
			<div class="title-date">약 1년 전 작성</div>
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
			<div class="posts">
				<a href="/KHdaangn/job-posts" class="">
					<article>
						<div class="posts-img"><img alt="" src="resources/img/job-post-img.jpg"></div>
						<div class="posts-content">
							<div class="posts-title">전화업무(아웃바운드) 10시-4시까지 구합니다</div>
							<div class="posts-id">콜센터</div>
							<div class="posts-address">경기도 부천시 상동</div>
							<div class="posts-amount">월급 1,500,000</div>
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
