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
			<h2 style="font-color: orange;">중개수수료 없는</h2>
			<h2>부동산 직거래에는<br>개인의 매물만 올려주세요.</h2>
			
			<div class="add-type">
				<h3>매물 종류</h3>
				<select>
					<option value="none" selected>매물 종류 선택</option>
					<option value="oneroom">원룸</option>
					<option value="villa">빌라(투룸 이상)</option>
					<option value="apt">아파트</option>
					<option value="store">상가</option>
					<option value="others">기타(사무실, 주택, 토지 등)</option>
				</select>
			</div>
			<!-- option value="none" 일경우 -->
			<div class="add-notice">
				<p>이런 매물은 올릴 수 없어요</p>
				<ul>
					<li>공인중개사 매물</li>
					<li>신축 건물 분양 매물</li>
					<li>원룸텔, 고시원, 모텔, 호텔 매물</li>
					<li>쉐어하우스, 룸메이트 구하는 매물</li>
					<li>전화, 카톡 유도 매물(사기 위험)</li>
				</ul>
			</div>
			<!-- //option value="none" 일경우 -->
			
			<!-- option value="oneroom" 일 경우 -->
			<div class="add-video">
				<h3 class="add-h3">매물 소개 영상</h3><h3 class="choice-gray">(선택)</h3>
				<p class="add-gray">직접 촬영한 매물 소개 영상을 올려 신뢰도를 높여보세요.</p>
				<button class="btn-video">매물 소개 영상 올리기</button>
			</div>
			<div class="add-photo">
				<h3>사진</h3>
				<p class="add-gray">매물의 모든 측면을 파악할 수 있도록 여러 사진을 올려주세요.</p>
				<button class="btn-video">0/20</button>
			</div>
			<div class="add-two-input">
				<h3 class="add-h3">실평수(전용면적)</h3><h3 class="choice-gray">(선택)</h3>
				<div class="input-wrap">
					<div class="input-left">
						<div class="input-title">실평수</div>
						<input placeholder="0">평
					</div>
					<div class="input-right">
						<div class="input-title">전용 면적</div>
						<input placeholder="0">㎡
					</div>
				</div>
			</div>
			<div class="add-two-checkbox">
				<h3>원룸 구조</h3>
				<div class="checkbox-wrap">
					<div class="checkbox-left"><input type="checkbox">오픈형</div>
					<div class="checkbox-right"><input type="checkbox">분리형</div>
				</div>
			</div>
			<div class="add-adress-twoline">
				<h3>매물 주소</h3>
				<input placeholder="주소">▷
				<input placeholder="위치 한줄 설명(ex. 강남역 도보 5분)">
			</div>
			<div class="add-trade">
				<h3>선호하는 거래방식</h3>
				<button class="rounded2">단기</button>
				<button class="rounded2">월세</button>
				<button class="rounded2">전세</button>
				<button class="rounded2">매매</button>
			</div>
			<div class="add-two-input">
				<h3 class="add-h3">층</h3><h3 class="choice-gray">(선택)</h3>
				<div class="input-wrap">
					<div class="input-left">
						<div class="input-title">전체층</div>
						<input placeholder="0">층
					</div>
					<div class="input-right">
						<div class="input-title">해당층</div>
						<input placeholder="0">층
					</div>
					<div class="checkbox"><input type="checkbox">반지하</div>
				</div>
			</div>
			<div class="add-two-checkbox">
				<h3 class="add-h3">입주 가능일</h3><h3 class="choice-gray">(선택)</h3>
				<div class="checkbox-wrap">
					<div class="checkbox-left"><input type="checkbox">즉시 가능</div>
					<div class="checkbox-right"><input type="checkbox">날짜 지정</div>
				</div>
			</div>
			<div class="add-three-checkbox">
				<h3>대출</h3>
				<div class="checkbox-wrap">
					<div class="checkbox-left"><input type="checkbox">가능</div>
					<div class="checkbox-mid"><input type="checkbox">불가능</div>
					<div class="checkbox-right"><input type="checkbox">확인필요</div>
				</div>
			</div>
			<div class="add-three-checkbox">
				<h3>반려동물</h3>
				<div class="checkbox-wrap">
					<div class="checkbox-left"><input type="checkbox">가능</div>
					<div class="checkbox-mid"><input type="checkbox">불가능</div>
					<div class="checkbox-right"><input type="checkbox">확인필요</div>
				</div>
			</div>
			<div class="add-three-checkbox">
				<h3>주차</h3>
				<div class="checkbox-wrap">
					<div class="checkbox-left"><input type="checkbox">가능</div>
					<div class="checkbox-mid"><input type="checkbox">불가능</div>
					<div class="checkbox-right"><input type="checkbox">확인필요</div>
				</div>
			</div>
			<div class="add-two-checkbox">
				<h3>엘리베이터</h3>
				<div class="checkbox-wrap">
					<div class="checkbox-left"><input type="checkbox">있음</div>
					<div class="checkbox-right"><input type="checkbox">없음</div>
				</div>
			</div>
			<div class="add-facility">
				<h3 class="add-h3">내부 시설</h3><h3 class="choice-gray">(선택)</h3>
				<div class="checkbox-wrap2">
					<input type="checkbox">복층
					<input type="checkbox">옥탑
					<input type="checkbox">세탁기
					<input type="checkbox">냉장고
					<input type="checkbox">에어컨
					<input type="checkbox">전자렌지
					<input type="checkbox">가스렌지
					<input type="checkbox">인덕션
					<input type="checkbox">침대
				</div>
			</div>
			<div class="add-detail">
				<h3 class="add-h3">매물 설명</h3><h3 class="choice-gray">(선택)</h3>
				<input placeholder="이 매물의 특징이 있다면 알려주세요.">
			</div>
			<button>글쓰기</button>
		</div>
	</div>
	<!-- //option value="oneroom" 일 경우 -->
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="../module/footer.jsp" %>
	<!-- //Footer -->
</body>
</html>
