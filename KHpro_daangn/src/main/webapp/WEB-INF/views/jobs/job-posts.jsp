<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${detailInfo.title} - ${detailInfo.addressName} | 우리동네에서 찾는 당근알바</title>
	<title><c:out value="${detailInfo.title}"/></title>
	<%@ include file="../module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="../module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<form action="${jobPostsUrl}" method="get" id="jobPost">
	<!-- <form action="${job-posts}/${jobInfo.jobBId}" method="get">-->
	<div class="post-wrap">
		<div class="slide-img">
			<c:forEach items="${fileDatas}" var="file">
				<li><img src="${pageContext.request.contextPath}/${file.url}/${file.uuidName}"></li>
			</c:forEach>	
		</div>
		
		<div class="id-section">
			<div class="id-section-left">
				<div class="id-img"><img src=""></div>
				<div class="id-name">${jobInfo.userId}</div>
				<div class="id-address">${detailInfo.address}</div>
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
				<h1>${detailInfo.title}</h1>
				<div class="title-name">${detailInfo.companyName}</div>
				<div class="title-date">${varInfo.postDateStr}</div>
			</div>
			<div class="title-right">
				<!-- 로그인 구현후 session -> not empty 변경 -->
				<c:if test="${empty sessionScope.loginData}">
				<div class="post-modifyBtn">
					<button onclick="location.href='${jobModifyUrl}/${jobInfo.jobBId}'">수정</button>
				</div>
				<div class="post-deleteBtn">
					<button id="deleteBtn">삭제</button>
				</div>
				</c:if>
			</div>
		</div>
		<div class="info">
			<h2>정보</h2>
			<div class="info-content" style="font-weight: 800;">${detailInfo.payType} ${varInfo.payStr}</div>
			<div class="info-content" id="address">${detailInfo.address}</div>
			<div class="info-content" id="addressCode">${detailInfo.addressCode}</div>
			<div class="info-content">${detailInfo.week} ${detailInfo.weekNego}</div>
			<div class="info-content">${detailInfo.startTime}~${detailInfo.endTime} ${jobMapInfo.timeNego}</div>
		</div>
		<div class="detail">
			<h2>상세내용</h2>
			<div class="detail-content">${detailInfo.detail}</div>
		</div>
		<div class="address">
			<div class="naver-map">
				<h2>주소</h2>
				<!-- Naver Map API -->
				<div class="map-api" id="map" style="width:100%; height:350px;"></div>
				<!-- //Naver Map API -->
			</div>
			<div class="address-detail">${detailInfo.address}</div>
		</div>
		<div class="recommand">
			<h2>${detailInfo.addressName} 근처 알바</h2>
			<c:forEach items="${jobsList}" var="jobsList" begin="0" end="3">
				<div class="post">
					<form action="${jobPostsUrl}" method="get">
						<div class="post-click" onclick="location.href='${jobPostsUrl}/${jobList.jobBId}'">
						<!-- c:if태그로 이미지가 존재할때와 없을때를 구분해서 없을때는 패키지에 직접 저장한 이미지 사용해야 함 -->
							<img class="post-img" src="${pageContext.request.contextPath}/${jobList.imgObj.url}/${jobList.imgObj.uuidName}">
							<div class="post-content">
								<div class="post-title"><c:out value="${jobList.detailObj.title}"/></div>
								<div class="post-companyName"><c:out value="${jobList.detailObj.companyName}"/></div>
								<div class="post-address"><c:out value="${jobList.detailObj.address}"/></div>
								<div class="post-pay"><c:out value="${jobList.detailObj.payType}"/><c:out value="${jobList.detailObj.pay}"/></div>
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
	</form>
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="../module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
