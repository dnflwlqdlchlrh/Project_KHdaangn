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
				<h2>인기 당근알바</h2>
				<c:if test="${empty sessionScope.loginData}">
				<!-- 로그인 구현 후 not empty 로 변경 하시오. -->
				<%--c:if test="${not empty sessionScope.loginData}" --%>
					<div class="post-btn">
						<button onclick="location.href='${jobAddUrl}'">글쓰기</button>
					</div>
				</c:if>
			</div>
			
			<c:forEach items="${jobsList}" var="jobsList" begin="0" end="9">
				<div class="post">
					<form action="${jobPostsUrl}" method="get">
					<div class="post-click" onclick="location.href='${jobPostsUrl}/${jobList.jobBId}'">
						<!-- c:if태그로 이미지가 존재할때와 없을때를 구분해서 없을때는 패키지에 직접 저장한 이미지 사용해야 함 -->
						<img class="post-img" src="${pageContext.request.contextPath}/${jobsList.imgObj.url}/${jobList.imgObj.uuidName}">
						<div class="post-content">
							<div class="post-title"><c:out value="${jobsList.detailObj.title}"/></div>
							<div class="post-id"><c:out value="${jobsList.detailObj.companyName}"/></div>
							<div class="post-address"><c:out value="${jobsList.detailObj.address}"/></div>
							<div class="post-amount"><c:out value="${jobsList.detailObj.payType}"/><c:out value="${jobList.detailObj.pay}"/></div>
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
			<div class="posts" style="margin: 5rem auto 0;">
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
