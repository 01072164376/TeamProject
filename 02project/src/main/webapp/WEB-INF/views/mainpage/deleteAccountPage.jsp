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
<link rel="stylesheet" href="/ex/resources/css/deleteAccountPage.css">
<link rel="stylesheet" href="/ex/resources/css/main.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
</style>





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
			<a href=/ex/mypage>회원정보수정</a>
		</button>
		<button id="passwordPage">
			<a href=password.html>비밀번호 변경</a>
		</button>
		<button id="deleteAccountPage">
			<a href=deleteAccountPage.html>회원탈퇴</a>
		</button>


	</div>

	<!-- 회원정보수정 페이지 컨텐츠 중간부분 -->
	<div id="mypageModify">
		<!-- <img src="/ex/resources/img/membermodify.jpg"> -->
		<div id="modifyNavi">
			<div id="modifyLeft">
				<h3>
					회원 탈퇴
					</h1>
					<a>▶</a>
			</div>
			<div id="modifyRight">
				<h3>
					회원 탈퇴 완료
					</h1>
			</div>
		</div>
		<div id="modifyContents">


			<div id="guide">
				<a1>
				<h3>▶ 회원탈퇴</h3>
				</a1>
			</div>
			<form action="/ex/mainpage/deleteAccountPage" method="POST">
				<input name=id value="${dto.id }" type=hidden>
				<div id="tableContain">
					<table id="myInfo">
						<tr>
							<td id="td1">현재 비밀번호</td>
							<td id="td2"><input type="password" id="inputPassword">
							</td>
						</tr>

						<td id="td1">비밀번호 확인</td>
						<td id="td2"><input type="password" id="inputPassword2">
						</td>
						</tr>

					</table>
				</div>

				<!--개인정보수정 bottom  -->
				<div id="modifyBottom">
					<div id="inputModify">
						<input type="button" value="탈퇴" id="deleteAccount">
					</div>
			</form>
			<div id="exit">
				<input type="submit" value="취소" action="main">
			</div>

		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script>
		document.getElementById('deleteAccount').addEventListener(
				"click",
				function() {
					/*비밀번호 체크  */
					check = document.getElementById('inputPassword').value;
					check2 = document.getElementById('inputPassword2').value;
					if (check == "${dto.pw}") {
						if (check == check2) {
							result = confirm("정말 탈퇴하시겠습니까?");
							if (result) {
								document.getElementById("deleteAccount")
										.setAttribute("type", "submit");
								alert("탈퇴 완료.")
								location.href = "/main?id=${dto.id}";
							} else {

							}
						} else {
							alert("비밀번호가 일치하지 않습니다.")
						}

					} else {
						alert("비밀번호 오류")
					}
				})
	
</script>
 <!-- 푸터 -->
 <%@include file="../include/footer.jsp"%>

</body>

</html>