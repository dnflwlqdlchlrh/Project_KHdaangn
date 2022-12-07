<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<footer class="footer-wrap">
	<div class="footer-section">
		<div class="footer-section-left">
			<ul>
				<li><a href="${hotArticles}">중고거래</a>
				<li><a href="">동네가게</a>
				<li><a href="${jobs}">당근알바</a>
			</ul>
			<ul>
				<li><a href="">당근비즈니스</a>
				<li><a href="${chat}">채팅하기</a>
			</ul>
			<ul>
				<li><a href="">자주 묻는 질문</a>
				<li><a href="">회사 소개</a>
				<li><a href="">인재 채용</a>
			</ul>
		</div>
		<div class="footer-section-right">
			<h4>당근마켓 앱 다운로드</h4>
			<div>
				<a href="https://apps.apple.com/kr/app/%EB%8B%B9%EA%B7%BC%EB%A7%88%EC%BC%93-%EC%A4%91%EA%B3%A0%EA%B1%B0%EB%9E%98-%ED%95%84%EC%88%98%EC%95%B1/id1018769995">App Store</a>
				<a href="https://play.google.com/store/apps/details?id=com.towneers.www&hl=ko&pli=1">Google Play</a>
			</div>
		</div>
	</div>
	<div class="footer-info">
		<div class="footer-info-left">
			<h4>프로젝트 참여인원 :</h4><p>강청하, 노수진, 서중완, 이다은, 허윤</p> 
			<h4>프로젝트 진행기간 :</h4><p>2022. 11. 08 ~ 2022. 12. 09</p>
		</div>
		<div class="footer-info-right">
			<div class="footer-a">
				<a href="https://www.facebook.com/" target="_blank">facebook</a>
				<a href="https://www.instagram.com/" target="_blank">instagram</a>
				<a href="https://www.youtube.com/" target="_blank">youtube</a>
				<a href="https://blog.naver.com/" target="_blank">blog</a>
			</div>
			<div class="footer-select">
				<select id="label-select-nation" class="">
					<option value="kr" selected>한국</option>
					<option value="none">none</option>
					<option value="none">none</option>
					<option value="none">none</option>
					<option value="none">none</option>
				</select>
			</div>
		</div>
	</div>
</footer>
