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
	<div class="header-wrap">
		<div class="nav">
			<div class="nav-logo">
				<a href="/KHdaangn"></a>
			</div> 
			<div class="nav-main">
				<ul class="nav-item">
					<li><a href="/KHdaangn">중고거래</a></li>
					<li><a href="/KHdaangn/jobs">알바</a></li>
					<li><a href="/KHdaangn/realty">부동산 직거래</a></li>
				</ul>
			</div>
			<div class="search-bar">
				<input class="" placeholder="물품이나 동네를 검색해보세요.">
			</div>
			<div class="nav-login">
				<button class="btn-chat">채팅하기</button>
				<button class="btn-login">로그인</button>
			</div>
			<!-- 
			<div class="nav-login">
				<c:if test="${empty sessionScope.loginData}">
					<button class="btn-join><a href="/join">회원가입</a></li>
					<button class="btn-login><a href="/login">로그인</a></li>
				</c:if>
				<c:if test="${not empty sessionScope.loginData}">
					<button class="btn-chat"><a href="/chat">채팅하기</a></li>
					<button class="btn-logout"><a href="/logout">로그아웃</a></li>
				</c:if>
			</div>
			 -->
		</div>
	</div>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="main-wrap">
		<div class="main-content">
			당신 근처의<br> KH당근마켓<br>
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
		<div>
			중고거래 인기매물<br>
			<!-- 중고거래 인기매물 -->
			<a href="/KHdaangn/hot_articles">인기매물 더 보기</a>
		</div>
		<div>
			<a href="/KHdaangn/top_keywords">중고거래 인기검색어</a>
			<!-- 인기검색어 -->
		</div>
	</div>	
	<!-- //Main -->
	
	<!-- Footer -->
	<div class="footer-wrap">
		<footer class="footer">
			<div class="footer-nav">
				<div class="footer-nav-left">
					<ul>
						<li><a href="/hot_articles">중고거래</a>
						<li><a href="">동네가게</a>
						<li><a href="">당근알바</a>
					</ul>
					<ul>
						<li><a href="">당근비즈니스</a>
						<li><a href="">채팅하기</a>
					</ul>
					<ul>
						<li><a href="">자주 묻는 질문</a>
						<li><a href="">회사 소개</a>
						<li><a href="">인재 채용</a>
					</ul>
				</div>
				<div class="footer-nav-right">
					<div class="">당근마켓 앱 다운로드</div>
					<div class="">
						<a href="https://apps.apple.com/kr/app/%EB%8B%B9%EA%B7%BC%EB%A7%88%EC%BC%93-%EC%A4%91%EA%B3%A0%EA%B1%B0%EB%9E%98-%ED%95%84%EC%88%98%EC%95%B1/id1018769995">App Store</a>
						<a href="https://play.google.com/store/apps/details?id=com.towneers.www&hl=ko&pli=1">Google Play</a>
					</div>
				</div>
			</div>
			<div class="footer-info">
				<div class="footer-info-left">
					프로젝트 참여인원 : 강청하, 노수진, 서중완, 이다은, 허윤<br> 
					프로젝트 진행기간 : 2022. 11. 08 ~ 2022. 12. 09
				</div>
				<div class="footer-info-right">
					<a aria-labbel="facebook" href="https://www.facebook.com/" target="_blank">
						<svg></svg>
					</a>
					<a aria-labbel="instagram" href="https://www.facebook.com/" target="_blank">
						<svg></svg>
					</a>
					<a aria-labbel="youtube" href="https://www.facebook.com/" target="_blank">
						<svg></svg>
					</a>
					<a aria-labbel="blog" href="https://www.facebook.com/" target="_blank">
						<svg></svg>
					</a>
					<div>
						<label class="">
							<svg></svg>
							<select id="label-select-nation" class="">
								<option value="kr" selected>한국어</option>
								<option value="none">none</option>
								<option value="none">none</option>
								<option value="none">none</option>
								<option value="none">none</option>
							</select>
							<svg></svg>
						</label>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- //Footer -->
</body>
</html>