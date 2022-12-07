<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>KH당근마켓 중고거래 | 당신 근처의 KH당근마켓</title>
	<%@ include file="./module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="./module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="main-wrap">
		<div class="main-top"><h1>중고거래 인기매물</h1></div>
		
		<div class="article-top">
			<c:if test="${empty sessionScope.loginData}">
			<!-- 로그인 구현 후 not empty 로 변경 하시오. -->
			<%--c:if test="${not empty sessionScope.loginData}" --%>
				<div class="post-btn2">
					<c:url var="articlesAddUrl" value="articles/add"/>
					<button class="" onclick="location.href='${articlesAddUrl}'">글쓰기</button>
				</div>
			</c:if>
			<div class="selector">
				<div class="selector1">
					<label for="province"></label>
					<select id="province" name="province" onchange="adressSelect(this)">
						<option>지역을 선택하세요</option>
						<option value="seoul">서울특별시</option>
						<option value="busan">부산광역시</option>
						<option value="daegu">대구광역시</option>
						<option value="incheon">인천광역시</option>
						<option value="gwangju">광주광역시</option>
						<option value="daejeon">대전광역시</option>
						<option value="ulsan">울산광역시</option>
						<option value="sejong">세종특별자치시</option>
						<option value="gyenggi">경기도</option>
						<option value="gangwon">강원도</option>
						<option value="chungbuk">충청북도</option>
						<option value="chungnam">충청남도</option>
						<option value="jeollabuk">전라북도</option>
						<option value="jeollanam">전라남도</option>
						<option value="gyeongbuk">경상북도</option>
						<option value="gyeongnam">경상남도</option>
						<option value="jeju">제주특별자치도</option>
					</select>
				</div>
				<div class="selector2">
					<label for="district"></label>
					<select id="district" name="district">
						<option>동네를 선택하세요</option>
					</select>
				</div>
			</div>
		</div>
		
		<div class="article-wrap">
			<%-- 
			<div class="article-posts">
				<c:forEach items="${articlesList}" var="articlesList">
					<div class="post">
						<form action="${articlePostsUrl}" method="get">
							<!-- Post (클릭되는 부분) -->
							<div class="article-click" onclick="location.href='${articlePostsUrl}/${articlesList.title}'">
								<img class="article-img" src="${pageContext.request.contextPath}${articlesList.imgObj.url}/${articlePostsList.imgObj.uuidName}">
								<div class="atticle-content">
									<div class="article-title"><c:out value="${articlesList.title}"/></div>
									<div class="article-amount"><c:out value="${articlesList.amount}"/></div>
									<div class="article-address"><c:out value="${articlesList.address}"/></div>
									<div class="article-like"><c:out value="${articlesList.like}"/></div>
									<div class="article-chat"><c:out value="${articlesList.chat}"/></div>
								</div>
							</div>
							<!-- //Post -->
						</form>
					</div>
				</c:forEach>
			</div>
			 --%>
			<!-- forEach jobsList 구현후 삭제 -->
			<div class="article-posts">
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
				<div class="post">
					<form action="${articlePostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="article-click" onclick="location.href='${articles}'">
							<img class="article-img" src="${img}/article-img.JPG">
							<div class="atticle-content">
								<div class="article-title">삼성 55인치 tv</div>
								<div class="article-amount">100,000원</div>
								<div class="article-address">부산 남구 문현제2동</div>
								<div class="article-like">관심 40</div>
								<div class="article-chat">채팅 79</div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
			</div>
			<!-- //forEach jobsList 구현후 삭제 -->
		</div>
		<div class="article-bottom">
			<h2>더 구경하고 싶나요?</h2>
			<p>당근마켓 앱에서 따뜻한 거래를 직접 경험해보세요!</p>
			<button>App Store</button>
			<button>Google play</button>
		</div>
	</div>
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="./module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
