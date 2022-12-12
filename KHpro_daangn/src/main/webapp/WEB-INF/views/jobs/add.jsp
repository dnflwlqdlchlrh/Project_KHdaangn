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
	<form action="${jobAdd}" method="post" enctype="multipart/form-data">
	<div class="main-wrap">
		<div class="posting-wrap">
			<h1>알바공고 쓰기</h1>
			
			<!-- 로그인 구현시 삭제 -->
			<div class="temp-wrap">
				<h3>temporarily section (login data)</h3>
				<h3>상호명</h3><input type="text" name="companyName" value="${jobAdd.companyName}">
				<h3>사용자id</h3><input type="text" name="userId" value="${jobAdd.userId}">
			</div>
			<!-- //로그인 구현시 삭제 -->
			
			<div class="add-photo">
				<h3>사진(선택)</h3>
				<p>일하는 공간이나 일과 관련된 사진을 올려보세요</p>
				<div class="addPhotoIcon">+</div>
				<input type="file" name="upload" onchange="uploadCheck(this);" multiple>
			</div>
			<div class="add-title">
				<h3>제목</h3>
				<input type="text" name="title" placeholder="구인 내용 요약"value="${jobAdd.title}" >
			</div>
			<div class="add-info">
				<h3>정보</h3>
				<div class="info-wrap">
					<select name="payType">
						<option value="hour">시급</option>
						<option value="day">일급</option>
						<option value="month" selected>월급</option>
						<option value="one">건당급</option>
					</select>
					<input type="text" name="pay" placeholder="9,160" value="${jobAdd.pay}" onKeyUp="this.value=this.value.replace(/[^0-9]/g,'')" >
					<p>원</p>
				</div>
				<input type="text" name="address" id="address" placeholder="위치(주소)" value="${jobAdd.address}" onClick="addAddress()" >
				<input type="hidden" type="text" name="addressCode" id="addressCode" value="${jobAdd.addressCode}">
				<input type="hidden" type="text" name="addressName" id="addressName" value="${jobAdd.addressName}">
			</div>
			<div class="add-week">
				<h3>일하는 요일</h3>
				<div class="week-btn">
					<input class="rounded" type="button" name="week" value="월">
					<input class="rounded" type="button" name="week" value="화">
					<input class="rounded" type="button" name="week" value="수">
					<input class="rounded" type="button" name="week" value="목">
					<input class="rounded" type="button" name="week" value="금">
					<input class="rounded" type="button" name="week" value="토">
					<input class="rounded" type="button" name="week" value="일">
					<div class="nego-wrap"><input type="checkbox" name="weekNego" value="협의"><p>협의가능</p></div>
				</div>
			</div>
			<div class="add-time">
				<h3>일하는 시간</h3>
				<div class="time-wrap">
					<select name="startTime">
						<option value="00:00">00:00</option>
						<option value="00:30">00:30</option>
						<option value="01:00">01:00</option>
						<option value="01:30">01:30</option>
						<option value="02:00">02:00</option>
						<option value="02:30">02:30</option>
						<option value="03:00">03:00</option>
						<option value="03:30">03:30</option>
						<option value="04:00">04:00</option>
						<option value="04:30">04:30</option>
						<option value="05:00">05:00</option>
						<option value="05:30">05:30</option>
						<option value="06:00">06:00</option>
						<option value="06:30">06:30</option>
						<option value="07:00">07:00</option>
						<option value="07:30">07:30</option>
						<option value="08:00">08:00</option>
						<option value="08:30">08:30</option>
						<option value="09:00" selected>09:00</option>
						<option value="09:30">09:30</option>
						<option value="10:00">10:00</option>
						<option value="10:30">10:30</option>
						<option value="11:00">11:00</option>
						<option value="11:30">11:30</option>
						<option value="12:00">12:00</option>
						<option value="12:30">12:30</option>
						<option value="13:00">13:00</option>
						<option value="13:30">13:30</option>
						<option value="14:00">14:00</option>
						<option value="14:30">14:30</option>
						<option value="15:00">15:00</option>
						<option value="15:30">15:30</option>
						<option value="16:00">16:00</option>
						<option value="16:30">16:30</option>
						<option value="17:00">17:00</option>
						<option value="17:30">17:30</option>
						<option value="18:00">18:00</option>
						<option value="18:30">18:30</option>
						<option value="19:00">19:00</option>
						<option value="19:30">19:30</option>
						<option value="20:00">20:00</option>
						<option value="20:30">20:30</option>
						<option value="21:00">21:00</option>
						<option value="21:30">21:30</option>
						<option value="22:00">22:00</option>
						<option value="22:30">22:30</option>
						<option value="23:00">23:00</option>
						<option value="23:30">23:30</option>
					</select>
					<p>~</p>
					<select name="endTime">
						<option value="00:00">00:00</option>
						<option value="00:30">00:30</option>
						<option value="01:00">01:00</option>
						<option value="01:30">01:30</option>
						<option value="02:00">02:00</option>
						<option value="02:30">02:30</option>
						<option value="03:00">03:00</option>
						<option value="03:30">03:30</option>
						<option value="04:00">04:00</option>
						<option value="04:30">04:30</option>
						<option value="05:00">05:00</option>
						<option value="05:30">05:30</option>
						<option value="06:00">06:00</option>
						<option value="06:30">06:30</option>
						<option value="07:00">07:00</option>
						<option value="07:30">07:30</option>
						<option value="08:00">08:00</option>
						<option value="08:30">08:30</option>
						<option value="09:00">09:00</option>
						<option value="09:30">09:30</option>
						<option value="10:00">10:00</option>
						<option value="10:30">10:30</option>
						<option value="11:00">11:00</option>
						<option value="11:30">11:30</option>
						<option value="12:00">12:00</option>
						<option value="12:30">12:30</option>
						<option value="13:00">13:00</option>
						<option value="13:30">13:30</option>
						<option value="14:00">14:00</option>
						<option value="14:30">14:30</option>
						<option value="15:00">15:00</option>
						<option value="15:30">15:30</option>
						<option value="16:00">16:00</option>
						<option value="16:30">16:30</option>
						<option value="17:00">17:00</option>
						<option value="17:30">17:30</option>
						<option value="18:00" selected>18:00</option>
						<option value="18:30">18:30</option>
						<option value="19:00">19:00</option>
						<option value="19:30">19:30</option>
						<option value="20:00">20:00</option>
						<option value="20:30">20:30</option>
						<option value="21:00">21:00</option>
						<option value="21:30">21:30</option>
						<option value="22:00">22:00</option>
						<option value="22:30">22:30</option>
						<option value="23:00">23:00</option>
						<option value="23:30">23:30</option>
					</select>
				</div>
				<div class="nego-wrap"><input type="checkbox" name="timeNego" value="협의"><p>협의가능</p></div>
			</div>
			
			<div class="add-detail">
				<h3>상세정보</h3>
				<input type="text" name="detail" placeholder="예) 업무 예시, 근무 여건, 지원자가 갖추어야 할 능력, 우대 사항 등" value="${jobAdd.detail}">
			</div>
			<button onclick="formCheck(this.form)">작성 완료</button>
		</div>
	</div>
	</form>
	<!-- //Main -->
	
	<!-- Footer -->
	<%@ include file="../module/footer.jsp" %>
	<!-- //Footer -->
	
	<script type="text/javascript">

	function formCheck(form) {
		var modal = new bootstrap.Modal(document.getElementById("errorModal"), {
			keyboard: false
		});
	
		form.submit();
	}
	
	function uploadCheck(element) {
		var modal = new bootstrap.Modal(document.getElementById("errorModal"), {
			keyboard: false
		});
		var title = modal._element.querySelector(".modal-title");
		var body = modal._element.querySelector(".modal-body");
		
		if(element.files.length > 5) {
			title.innerText = "파일 업로드 제한";
			body.innerText = "파일은 업로드는 최대 5개 까지만 할 수 있습니다.";
			element.value = "";
			modal.show();
			return;
		}
		
		for(file of element.files) {
			console.log("1" + element.files);
			console.log("2" + element.files[0]);
			if(file.size / 1000 / 1000 > 10.0) {
				title.innerText = "파일 크기 제한";
				body.innerText = "파일은 최대 10MB 를 초과할 수 없습니다.";
				element.value = "";
				modal.show();
				return;
			}
		}
	}
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">	
		function addAddress() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		            //팝업에서 검색결과 항목을 클릭했을때 실행하는 부분
		            var roadAddr = data.roadAddress; //도로명 주소 변수 //중고판매가 아닌 알바는 도로명 주소도 사용 가능
		            var jibunAddr = data.jibunAddress; //지번 주소 변수 
		            var bcode = data.bcode; //동 코드
		            var bname = data.bname //동 이름
		            //document.getElementById('member_post').value = data.zonecode; //우편번호는 X
		            
		            if(roadAddr !== ''){
		               document.getElementById("address").value = roadAddr;
		            } 
		            else if(jibunAddr !== ''){
		               document.getElementById("address").value = jibunAddr;
		            }
		            document.getElementById("addressCode").value = bcode;
		            document.getElementById("addressName").value = bname;
		        }
		    }).open();
		};
    </script>
</body>
</html>
