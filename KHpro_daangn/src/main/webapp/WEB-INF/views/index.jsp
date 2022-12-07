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
			<div class="img-section2">
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
			<div class="img-section2">
				<div class="main-img"><img src="${img}/main-img03.png"></div>
			</div>
		</div>
		<div class="main-content">
			<div class="img-section2">
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
			<div class="main-top"><h1>중고거래 인기매물</h1></div>
			<!-- 중고거래 인기매물 페이지 복사 -->
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
			<!-- //중고거래 인기매물 페이지 복사 -->
			<a href="${hotArticles}">인기매물 더 보기</a>
		</div>
		<div class="third-content">
			<a href="${topKeywords}">중고거래 인기검색어</a>
			<ul>
				<li><a class="keyword" href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword1}"/>검색어1</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword2}"><c:out value="${keywordList.keyword2}"/>검색어2</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword3}"><c:out value="${keywordList.keyword3}"/>검색어3</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword4}"><c:out value="${keywordList.keyword4}"/>검색어4</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword5}"><c:out value="${keywordList.keyword5}"/>검색어5</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword6}"><c:out value="${keywordList.keyword6}"/>"${keyword6}"</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword7}"><c:out value="${keywordList.keyword7}"/>"${keyword7}"</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword8}"><c:out value="${keywordList.keyword8}"/>"${keyword8}"</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword9}"><c:out value="${keywordList.keyword9}"/>"${keyword9}"</a></li>
				<li><a class="keyword" href="${search}/${keywordList.keyword1}"><c:out value="${keywordList.keyword10}"/>"${keyword10}"</a></li>
			</ul>
		</div>
	</div>	
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="./module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
