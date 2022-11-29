/**
 * 
 */

/* header.jsp input box */
function enterkey() {
	if (window.event.keyCode == 13) {
		 // 엔터키가 눌렸을 때 실행할 내용
		 // 검색 기능 구현 전 임시
		 location.href= "search/"
		 
		 // 검색 기능 구현 후 활성화
		 //let value = document.getElementById('search').value;
		 //location.href= "search/" + value;
	}
}

/* hot_article.jsp select box */
 function adressSelect(e) {
	var seoul = ["깅님구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"];
	var busan = ["강서구", "금정구", "기장군", "남구", "동구", "동래구", "부산진구", "북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구"];
	var daegu = ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"];
	var incheon = ["강화구", "계양구", "남동구", "동구", "미추홀구", "부평구", "서구", "연수구", "웅진군", "중구"];
	var gwangju = ["광산구", "남구", "동구", "북구", "서구"];
	var daejeon = ["대덕구", "동구", "서구", "유성구", "중구"];
	var ulsan = ["남구", "동구", "북구", "울주군", "중구"];
	var sejong = ["가람동", "고운동", "금남면", "나성동", "다정동", "대평동", "도담동", "반곡동", "보람동", "부강면", "새롬동", "소담동", "소정면", "아름동", "어진동", "연기면", "연동면", "연서면", "장군면", "전동면", "전의면", "조치원읍", "종촌동", "집현동", "한솔동", "해밀동"];
	var gyenggi = ["가평군", "고양시 덕양군", "고양시 일산동구", "고양시 일산서구", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시", "남양주시", "동두천시", "부천시 소사구", "부천시 오정구", "부천시 원미구", "성남시 분당구", "성남시 수정구", "성남시 중원구", "수원시 권선구" ,"수원시 영통구" ,"수원시 장안구", "수원시 팔달구", "시흥시" ,"안산시 단원구", "안산시 상록구", "안성시", "안양시 동안구", "안양시 만안구", "양주시", "양평군", "여주시", "연천군", "오산시", "용인시 기흥구", "용인시 수지구", "용인시 처인구", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시", "화성시"];
	var gangwon = ["강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군", "영월군", "원주시", "인제군", "정선군", "철원군", "춘천시", "태백시", "평창군", "홍천군", "화천군", "횡성군"];
	var chungbuk = ["괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "제천시", "증평군", "진천군", "청주시 상당구", "청주시 서원구", "청주시 청원구", "청주시 흥덕구", "충주시"];
	var chungnam = ["계롱시", "공주시", "금산군", "논산시", "당진시", "보령시", "부여군", "서산시", "서천군", "아산시", "예산군", "천안시 동남구", "천안시 서북구", "청양군", "태안군", "홍성군"];
	var jeollabuk = ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"];
	var jeollanam = ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"];
	var gyeongbuk = ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"];
	var gyeongnam = ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"];
	var jeju = ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"];
	
	   var target = document.getElementById("district");
	   
	   if(e.value == "seoul") var d = seoul;
	   else if(e.value == "busan") var d = busan;
	   else if(e.value == "daegu") var d = daegu;
	   else if(e.value == "incheon") var d = incheon;
	   else if(e.value == "gwangju") var d = gwangju;
	   else if(e.value == "daejeon") var d = daejeon;
	   else if(e.value == "ulsan") var d = ulsan;
	   else if(e.value == "gyenggi") var d = gyenggi;
	   else if(e.value == "gangwon") var d = gangwon;
	   else if(e.value == "chungbuk") var d = chungbuk;
	   else if(e.value == "chungnam") var d = chungnam;
	   else if(e.value == "jeollabuk") var d = jeollabuk;
	   else if(e.value == "jeollanam") var d = jeollanam;
	   else if(e.value == "gyeongbuk") var d = gyeongbuk;
	   else if(e.value == "gyeongnam") var d = gyeongnam;
	   else if(e.value == "jeju") var d = jeju;
	   
	   target.options.length = 0;
	   
	   for (x in d) {
		   var opt = document.createElement("option");
		   opt.value = d[x];
		   opt.innerHTML = d[x];
		   target.appendChild(opt);
	   }
}

