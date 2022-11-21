/**
 * 
 */
 function login_check() {
			var userId = document.getElementById("userId");
			var userPw = document.getElementById("userPw");
			if (userId.value == "") {
				alert("아이디를 입력하세요.");
				userId.focus();
				return false;
			}
			;

			if (userPw.value == "") {
				alert("비밀번호를 입력하세요.");
				userPw.focus();
				return false;
			}
			;

			$.ajax({
				url : "${pageContext.request.contextPath}loginChk",
				type : "post",
				dataType : "json",
				data : {
					"userId" : $("#userId").val(),
					"userPw" : $("#userPw").val()
				},
				success : function(data) {
					if (data == 1) {
						//입력 값 전송
						document.login_form.submit();
					} else {
						alert("아이디 또는 비밀번호가 일치하지 않습니다.")
					}
				}
			})

		}