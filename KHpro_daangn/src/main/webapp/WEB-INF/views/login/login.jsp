<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원가입 | 당신 근처의 KH당근마켓</title>
	<%@ include file="../module/head.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@ include file="../module/header.jsp" %>
	<!-- //Header -->
		
	<!-- Main -->
	<div class="main-wrap">
		<div class="join-wrap">
			<h2>회원가입</h2>
			<input placeholder="휴대폰 번호를 입력해주세요">
			<button class="join-button">인증문자 받기</button>
			<input class="join-input" placeholder="인증번호를 입력해주세요">
			<div class="policy"><a href="">이용약관</a><p>및</p><a href="">개인정보취급방침</a></div>
			<button class="join-button">동의하고 시작하기</button>
			<!-- 
			<hr>
			<button class="naverLogin">네이버 로그인</button>
			 -->
		</div>
	</div>	
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="../module/footer.jsp" %>
	<!-- //Footer -->	
</body>
</html>
