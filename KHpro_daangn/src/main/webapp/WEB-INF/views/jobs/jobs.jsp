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
	<div class="main-wrap">
		<div class="main-top-wrap">
			<div class="main-top">
				<div class="main-text">
					<h1>우리 동네에서 찾는<br>당근알바<br></h1>
					<p>걸어서 10분 거리의<br>동네 알바들 여기 다 있어요.</p>
				</div>
				<div class="main-img">
					<img src="${img}/jobs-img.png">
				</div>
			</div>
		</div>
		
		<div class="post-wrap">
			<div class="post-top-wrap">
				<h2 class="">인기 당근알바</h2>
				<c:if test="${empty sessionScope.loginData}">
				<!-- 로그인 구현 후 not empty 로 변경 하시오. -->
				<%--c:if test="${not empty sessionScope.loginData}" --%>
					<div class="post-btn">
						<button onclick="location.href='${jobAddUrl}'">글쓰기</button>
					</div>
				</c:if>
			</div>
			
			<c:forEach items="${jobsList}" var="jobsList">
			<!-- 게시물 갯수 제한 구현해야함 -->
				<div class="post">
					<form action="${jobPostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="post-click" onclick="location.href='${jobPostsUrl}/${jobsList.title}'">
							<img class="post-img" src="${pageContext.request.contextPath}${jobsList.imgObj.url}/${jobPostsList.imgObj.uuidName}">
							<div class="post-content">
								<div class="post-title"><c:out value="${jobsList.title}"/></div>
								<div class="post-id"><c:out value="${jobsList.id}"/></div>
								<div class="post-address"><c:out value="${jobsList.address}"/></div>
								<div class="post-amount"><c:out value="${jobsList.amount}"/></div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
			</c:forEach>
			
			<div class="karrot-app" onclick="location.href=''">
				<div class="app-left">
					<img src="${img}/jobs_banner.png">
				</div>
				<div class="app-mid">
					우리동네 알바가 궁금하다면<br>당근마켓에서 바로 찾아보세요!<br>
				</div>
				<div class="app-right">
					앱 다운로드 하기
				</div>
			</div>
			
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
