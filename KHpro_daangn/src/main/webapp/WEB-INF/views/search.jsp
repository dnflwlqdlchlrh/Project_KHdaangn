<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>"${search}" 중고거래 | 당신 근처의 KH당근마켓</title>
	<%@ include file="./module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="./module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="main-wrap">
		<div class="result-container">
			<div class="result-box">
				<h3>중고거래 인기매물</h3>
				<div class="result-post">
					<a href="${articels}" class="">
						<article>
							<div class="result-img"><img alt="" src="${img}/article-img.jpg"></div>
							<div class="result-content">
								<div class="result-title">어린이자전거 아동자전거 네발자전거</div>
								<div class="result-address">울산 중구 남외동</div>
								<div class="result-amount">42,000원</div>
								<div class="result-like">0</div>
							</div>
						</article>
					</a>
				</div>
				<div class="result-post">
					<a href="${articles}" class="">
						<article>
							<div class="result-img"><img alt="" src="${img}/article-img.jpg"></div>
							<div class="result-content">
								<div class="result-title">어린이자전거 아동자전거 네발자전거</div>
								<div class="result-address">울산 중구 남외동</div>
								<div class="result-amount">42,000원</div>
								<div class="result-like">2</div>
							</div>
						</article>
					</a>
				</div>
				<div class="result-post">
					<a href="${articles}" class="">
						<article>
							<div class="result-img"><img alt="" src="${img}/article-img.jpg"></div>
							<div class="result-content">
								<div class="result-title">어린이자전거 아동자전거 네발자전거</div>
								<div class="result-address">울산 중구 남외동</div>
								<div class="result-amount">42,000원</div>
								<div class="result-like">10</div>
							</div>
						</article>
					</a>
				</div>
			</div>
		</div>
	</div>	
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="./module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
