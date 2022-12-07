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
		
		<div class="id-section">
			<div class="id-section-left">
				<div class="id-img"><img src=""></div>
				<h2>당근당근</h2>
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
			<div class="title-left">
				<h1>[부평역]주5일/4시간/130~150만원/홍보/상담/초보 경단가능</h1>
				<div class="title-name">당근당근</div>
				<div class="title-date">약 1년 전 작성</div>
			</div>
			<div class="title-right">
				<!-- 로그인 구현후 session -> not empty 변경 -->
				<c:if test="${empty sessionScope.loginData}">
				<div class="post-modifyBtn">
					<button class="" onclick="location.href='${jobModifyUrl}'">수정</button>
				</div>
				</c:if>
			</div>
		</div>
		<div class="info">
			<h2>정보</h2>
			<div class="info-content" style="font-weight: 800;">월급 103만원</div>
			<div class="info-content">인천 부평구 광장로 4</div>
			<div class="info-content">월~금 협의</div>
			<div class="info-content">10:00~16:00 협의</div>
		</div>
		<div class="detail">
			<h2>상세내용</h2>
			<div class="detail-content">룰루랄라</div>
		</div>
		<div class="address">
			<div class="naver-map">
				<h2>주소</h2>
				<!-- Naver Map API -->
				<div class="map-api">
					naver map api
				</div>
				<!-- //Naver Map API -->
			</div>
			<div class="address-detail">인천 부평구 광장로4</div>
		</div>
		<div class="recommand">
			<!-- api에서 동네 정보(동이름 ex. 부평동, 삼성동) 불러 오기 -->
			<h2><c:out value="${map.adress}"/> 근처 알바</h2>
			<c:forEach items="${jobsList}" var="jobsList">
			<!-- 게시물 갯수 제한 구현해야함 (4개) -->
				<div class="post">
					<form action="${jobPostsUrl}" method="get">
						<div class="post-click" onclick="location.href='${jobPostsUrl}/${jobsList.title}'">
							<img class="post-img" src="${pageContext.request.contextPath}${jobsList.imgObj.url}/${jobPostsList.imgObj.uuidName}">
							<div class="post-content">
								<div class="post-title"><c:out value="${jobsList.title}"/></div>
								<div class="post-id"><c:out value="${jobsList.id}"/></div>
								<div class="post-address"><c:out value="${jobsList.address}"/></div>
								<div class="post-amount"><c:out value="${jobsList.amount}"/></div>
							</div>
						</div>
					</form>
				</div>
			</c:forEach>
		
		
			<!-- forEach jobsList 구현후 삭제 -->
			<div class="posts">
				<div class="post">
					<form action="${jobPostsUrl}" method="get">
						<div class="post-click" onclick="location.href='${jobPostsUrl}'">
							<img class="post-img" src="${img}/job-post-img.jpg">
							<div class="post-content">
								<div class="post-title">전화업무(아웃바운드) 10시-4시까지 구합니다</div>
								<div class="post-id">콜센터</div>
								<div class="post-address">경기도 부천시 상동</div>
								<div class="post-amount">월급 1,500,000</div>
							</div>
						</div>
					</form>
				</div>
				<div class="post">
					<form action="${jobPostsUrl}" method="get">
						<div class="post-click" onclick="location.href='${jobPostsUrl}'">
							<img class="post-img" src="${img}/job-post-img.jpg">
							<div class="post-content">
								<div class="post-title">전화업무(아웃바운드) 10시-4시까지 구합니다</div>
								<div class="post-id">콜센터</div>
								<div class="post-address">경기도 부천시 상동</div>
								<div class="post-amount">월급 1,500,000</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- //forEach jobsList 구현후 삭제 -->
		</div>
	</div>
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="../module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
