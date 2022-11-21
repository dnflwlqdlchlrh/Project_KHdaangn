<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>간편하고 따뜻한 KH당근 부동산</title>
	<%@ include file="../module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="../module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="main-wrap">
		<div class="post-wrap">
			<h2 class="">인기 부동산 직거래 게시물</h2>
			<c:if test="${empty sessionScope.loginData}">
			<!-- 로그인 구현 후 not empty 로 변경 하시오. -->
			<%--c:if test="${not empty sessionScope.loginData}" --%>
				<div class="post-btn">
					<c:url var="realtyAddUrl" value="realty/add"/>
					<button class="" onclick="location.href='${realtyAddUrl}'">글쓰기</button>
				</div>
			</c:if>
			
			<c:forEach items="${realtyList}" var="realtyList">
				<div class="post">
					<c:url var="realtyPostsUrl" value="/realty-Posts" />
					<form action="${realtyPostsUrl}" method="get">
						<!-- Post (클릭되는 부분) -->
						<div class="post-click" onclick="location.href='${realtyPostsUrl}/${realtyList.title}'">
							<img class="post-img" src="${pageContext.request.contextPath}${realtyList.imgObj.url}/${realtyPostsList.imgObj.uuidName}">
							<div class="post-content">
								<div class="post-title"><c:out value="${realtyList.title}"/></div>
								<div class="post-address"><c:out value="${realtyList.address}"/></div>
								<div class="post-amount"><c:out value="${realtyList.amount}"/></div>
							</div>
						</div>
						<!-- //Post -->
					</form>
				</div>
			</c:forEach>
			
			<!-- forEach realtyList 구현후 삭제 -->
			<c:url var="realtyPostsUrl"  value="/realty-posts" />
			<form action="${realtyPostsUrl}" method="get">
			<div class="post">
				<div class="post-click" onclick="location.href='${realtyPostsUrl}'">
					<img src="resources/img/realty-post-img.jpg">
					<div class="post-content">
						<div class="post-title">투룸이상 300만원/1만원 - 인천광역시 남동구</div>
						<div class="post-address">만수동</div>
						<div class="post-amount">단기 300 / 1</div>
					</div>
				</div>
			</div>
			<div class="post">
				<div class="post-click" onclick="location.href='${realtyPostsUrl}/${realtyList.id}'">
					<img src="${pageContext.request.contextPath}${realtyList.imgObj.url}/${realtyPostList.imgObj.uuidName}">
					<div class="post-content">
						<div class="post-title"><c:out value="${realtyList.title}"/></div>
						<div class="post-address"><c:out value="${realtyList.address}"/></div>
						<div class="post-amount"><c:out value="${realtyList.amount}"/></div>
					</div>
				</div>
			</div>
			<div class="post">
				<a href="/KHdaangn/realty-posts" class="">
					<article>
						<div class="post-img"><img alt="" src="resources/img/realty-post-img.jpg"></div>
						<div class="post-content">
							<div class="post-title">아파트 1억 9,100만원 - 전라남도 목포시</div>
							<div class="post-address">석현동</div>
							<div class="post-amount">매매 1억 9,100</div>
						</div>
					</article>
				</a>
			</div>
			</form>
			<!-- //forEach realtyList 구현후 삭제 -->
		</div>
	</div>
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="../module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
