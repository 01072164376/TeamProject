<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<link rel="stylesheet" href="/ex/resources/css/mypage.css">
<link rel="stylesheet" href="/ex/resources/css/main.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>


<body>
<%@include file="../include/header.jsp"%>

	<!-- 마이페이지 배너이미지 -->
	<div id="mypagebanner">
		<img src="/ex/resources/img/modify.jpg">
	</div>

	<div id="mypageSelect">
		<button id="logoutPage"><a href=../logout>로그아웃</a></button>
		<button id="modifyPage">
			<a href=mypage>회원정보수정</a>
		</button>
		<button id="passwordPage">
			<a href=password>비밀번호 변경</a>
		</button>
		<button id="deleteAccountPage">
			<a href=deleteAccountPage>회원탈퇴</a></button>


	</div>

	<!-- 회원정보수정 페이지 컨텐츠 중간부분 -->
	<div id="mypageModify">
		<!-- <img src="/ex/resources/img/membermodify.jpg"> -->
		<div id="modifyNavi">
			<div id="modifyLeft">
				<h3>
					회원정보 수정
					</h1>
					<a>▶</a>
			</div>
			<div id="modifyRight">
				<h3>
					회원정보수정 완료
					</h1>
			</div>
		</div>
		<div id="modifyContents">
			<div id="guide">
				<a1>
				<h3>▶ 아이디 정보</h3>
				</a> <br>
				<a2>ㅇ 정보수정을 위하여 아래사항을 입력해 주시기 바랍니다.</a> <br>
				<a3>ㅇ *은 필수 입력 항목입니다. 정보수정을 위하여 반드시 기입해 주시기 바랍니다.</a> <br>
			</div>
			 <form action="/ex/mainpage/mypage" method="POST">
				<div id="tableContain">
					<table id="myInfo">
						<tr>
							<td id="td1">아이디</td>
							<input name=id value="${dto.id }" type=hidden>
							<td id="td2">${dto.id }</td>
						</tr>
						<tr>
							<td id="td1">*닉네임</td>
							<td id="td2"><input type="text" id="inputEmail"
								value="${dto.nickname}" name=nickname></td>
						</tr>
					</table>
					<div id="guide">
						<a1>
						<h3>▶ 개인 정보</h3>
						</a>
					</div>
				</div>
				<div id="tableContain">
					<table id="myInfo">
						<tr>
							<td id="td1">*이름</td>
							<td id="td2">${dto.name }</td>
						</tr>
						<tr>
							<td id="td1">*생년월일</td>
							<td id="td2"><fmt:formatDate value="${dto.birthday}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
						<tr>
							<td id="td1">*성별</td>
							<td id="td2">${dto.gender }</td>
						</tr>
						<tr>
							<td id="td1">*연락처</td>
							<td id="td2"><input type="text" class="inputPhone"
								value="${dto.phone }" name=phone id=inputPhone>
						</tr>
						<tr>
							<td id="td1">*주소 <!-- 우편번호 도로명 상세주소 -->
							</td>
							<td id="td2">
								<!-- <input type="text" style="width: 100px; height: 30px; margin-left: 1%;">
                            <input type="button" value="우편번호 찾기" style="height: 30px;"><br>
                            <input type="text" style="width: 400px; height: 30px; margin-left: 1%; margin-top: 7px;">
                            <input type="text" style="width: 200px; height: 30px; margin-left: 1%; margin-top: 7px;">

 						
 						 <!--우편번호 api  --> 
 						 <input type="text" name=addr1
								value="${dto.addr1 }" id="sample4_postcode"
								placeholder="우편번호"
								style="width: 200px; height: 30px; margin-top: 7px;"> <input
								type="button" onclick="execPostCode()"
								value="우편번호 찾기"
								style="width: 80px; height: 30px; margin-left: 1%; margin-top: 7px;"><br>
								<input type="text" name=addr2 value="${dto.addr2 }"
								id="sample4_roadAddress" placeholder="도로명주소"
								style="width: 200px; height: 30px; margin-top: 7px;"> <input
								type="text" name=addr3 value="${dto.addr3 }"
								id="sample4_jibunAddress" placeholder="지번주소"
								style="width: 200px; height: 30px; margin-left: 1%; margin-top: 7px;">
								<span id="guide" style="color: #999; display: none"></span> 
								<!-- <input type="text" id="sample4_extraAddress" placeholder="참고항목" style="width: 200px; height: 30px; margin-left: 1%; margin-top: 7px;">
						 --> 
						 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
								<script>
						    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
						  function execPostCode() {
         new daum.Postcode({
             oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
                
                $("[name=addr1]").val(data.zonecode);
                $("[name=addr2]").val(fullRoadAddr);
                
                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
            }
         }).open();
     }

						</script> <!--우편번호 api끝  -->
							</td>
						</tr>
						<tr>
							<td id="td1">*이메일</td>
							<td id="td2"><input type="text" id="inputEmail"
								value="${dto.email }" name=email></td>
						</tr>
					</table>
				</div>
				
				<!--개인정보수정 bottom  -->
				<div id="modifyBottom">
					<div id="inputModify" >
						<input type="button" value="수정" id="modifyInfo">
					</div>
			</form>
			<div id="exit">
				<input type="submit" value="취소" action="main">
			</div>

		</div>
	</div>
	
	
	


<script>
	
	document.getElementById("modifyInfo").addEventListener("click",function() {
		
 		check1 = document.getElementById('inputPhone').value;
		check2 = document
		.getElementById('sample4_postcode').value;	
		check3 = document
		.getElementById('sample4_roadAddress').value;	
		check4 = document
		.getElementById('sample4_jibunAddress').value;	
		check5 = document
		.getElementById('inputEmail').value;	

		
		
		if(check1&&check2&&check3&&check4&&check5) {
				document.getElementById("modifyInfo")
						.setAttribute("type", "submit");
				alert("개인정보 변경 완료.");
				location.href = "/main?id=${dto.id}";
		}else{
				alert("* 빈칸을 입력하세요.");
		}
	})

</script>

 <!-- 푸터 -->
 <%@include file="../include/footer.jsp"%>


</body>

</html>