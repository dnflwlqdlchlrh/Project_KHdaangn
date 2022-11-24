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
			<div class="img-section">
				<div class="main-img"><img src="${img}/main-img02.png"></div>
			</div>
			<div class="text-section">
				<div class="main-title">우리 동네<br> 중고 직거래 마켓<br></div>
				<div class="main-detail">동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요.</div>
				<div class="btn-section">
					<button class="main-btn" onclick="location.href='${hotArticles}'">인기매물 보기</button>
					<button class="main-btn" onclick="location.href='${trust}'">믿을 수 있는 중고거래</button>
				</div>
			</div>
		</div>
		<div class="main-content">
			<div class="text-section">
				<div class="main-title">이웃과 함께 하는<br> 동네생활<br></div>
				<div class="main-detail">우리 동네의 다양한 이야기를 이웃과 함께 나누어요.</div>
				<ul class="list-section">
					<li class="main-list">
						<div class="list-img"><img src=""></div>
						<div class="list-title">우리동네질문</div>
						<div class="list-detail">궁금한게 있을 땐 이웃에게 물어보세요.</div>
					</li>
					<li class="main-list">
						<div class="list-img"><img src=""></div>
						<div class="list-title">동네분실센터</div>
						<div class="list-detail">무언가를 잃어버렸을 때, 함께 찾을 수 있어요.</div>
					</li>
					<li class="main-list">
						<div class="list-img"><img src=""></div>
						<div class="list-title">동네모임</div>
						<div class="list-detail">관심사가 비슷한 이웃과 온오프라인으로 만나요.</div>
					</li>
				</ul>
			</div>
			<div class="img-section">
				<div class="main-img"><img src="${img}/main-img03.png"></div>
			</div>
		</div>
		<div class="main-content">
			<div class="img-section">
				<div class="main-img"><img src="${img}/main-img04.png"></div>
			</div>
			<div class="text-section">
				<div class="main-title">내 근처에서 찾는<br> 동네가게<br></div>
				<div class="main-detail">우리 동네 가게를 찾고 있나요?<br>동네 주민이 남긴 진짜 후기를 함께 확인해보세요!</div>
				<div class="btn-section">
					<button class="main-btn" onclick="location.href=''">당근마켓 동네가게 찾기</button>
				</div>
			</div>
		</div>
		<div class="second-content">
			중고거래 인기매물<br>
			<div class=""><br>(중고 거래 인기 매물 게시물 위치)<br></div>
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
