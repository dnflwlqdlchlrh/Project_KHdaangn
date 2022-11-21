<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<body>
	<div id="scroll-wrap">
		<a id="back-to-top"></a>
	</div>

	<c:if test="${empty sessionScope.loginData}">
	<div class="post-write">
		<c:url var="job-postsAddUrl" value="${job-posts}/add"/>
		<div class="post-click house-add-click" onclick="location.href='${job-postsUrl}'">
			<div id="post-write-img"></div>
		</div>
	</div>
	</c:if>
	<script type="text/javascript">
		$(function() {
			$('#back-to-top').on('click', function(e) {
				e.preventDefault();
				$('html,body').animate({
					scrollTop : 0
				}, 600);
			});
	
			$(window).scroll(function() {
				if ($(document).scrollTop() > 100) {
					$('#back-to-top').addClass('show');
				} else {
					$('#back-to-top').removeClass('show');
				}
			});
		});
		
		// Scroll Animation (sa, 스크롤 애니메이션)
		const saDefaultMargin = 300;
		let saTriggerMargin = 0;
		let saTriggerHeight = 0;
		const saElementList = document.querySelectorAll('.sa');
	
		const saFunc = function() {
		  for (const element of saElementList) {
		    if (!element.classList.contains('show')) {
		      if (element.dataset.saMargin) {
		        saTriggerMargin = parseInt(element.dataset.saMargin);
		      } else {
		        saTriggerMargin = saDefaultMargin;
		      }
	
		      if (element.dataset.saTrigger) {
		        saTriggerHeight = document.querySelector(element.dataset.saTrigger).getBoundingClientRect().top + saTriggerMargin;
		      } else {
		        saTriggerHeight = element.getBoundingClientRect().top + saTriggerMargin;
		      }
	
		      if (window.innerHeight > saTriggerHeight) {
		        let delay = (element.dataset.saDelay) ? element.dataset.saDelay : 0;
		        setTimeout(function() {
		          element.classList.add('show');
		        }, delay);
		      }
		    }
		  }
		}
	
		window.addEventListener('load', saFunc);
		window.addEventListener('scroll', saFunc);
	</script>
</body>
</html>

