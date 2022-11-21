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
		<div class="main-title"><h1>중고거래 인기매물</h1></div>
		<!-- 다중 셀렉트 박스 구현예정 (JS) -->
		<div class="selector1">
			<select>
				<option value="">지역을 선택하세요</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
			</select>
		</div>
		<div class="selector2">
			<select>
				<option value="">동네를 선택하세요</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
				<option value="seoul">서울특별시</option>
			</select>
		</div>
		<div class="article-wrap">
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
			
			<!-- forEach jobsList 구현후 삭제 -->
			<div class="article-posts">
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
			<div class="article-posts">
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
