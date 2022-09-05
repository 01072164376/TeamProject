<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ex/resources/css/login.css" type="text/css"/>
	<script>
	var msg = "${msg}";
	var id = "${id}";
	var pw = "${pw}";
	if(msg=="success") {
		alert("login success");
	}else if(msg=="noid") {
		alert("아이디가 존재하지 않습니다.");
	}else if(msg=="nopw") {
		alert("비밀번호 다시 입력하시오.");
	}else if(msg=="data") {
		alert("데이터 오류.");
	}else if(msg == "logout") {
		alert("로그아웃 완료.")
	} else if (msg == "findId") {
		alert("당신의 아이디는"+"=>"+id+"<="+"입니다.");
	} else if (msg == "findpw") {
		alert("당신의 비밀번호는"+"=>"+pw+"<="+"입니다.");
	}
</script>
</head>
<body>
    <!--아이디/비밀번호 입력/로그인-->
    <div class="login_main">
        <img src="/ex/resources/img/ai.jpg"><br>
        <form action="login" method="post">
        ID<input id="login_id" type="text" name="id" placeholder="아이디 입력" required><br>
        PW<input id="login_pw" type="password" name="pw" placeholder="비밀번호 입력" required><br>
        <input id="login" type="submit" value="로그인"><br>
        </form>
    </div>
  	<!-- 아이디/비밀번호 찾기/회원가입 -->
    <div class="find">
        <input type="submit" value="아이디 찾기 " onClick="location.href='find_id'">
        | <input type="submit" value=" 비밀번호 찾기 " onClick="location.href='find_pw'">
        | <input type="submit" value=" 회원가입" onClick="location.href='insert'">
    </div>
    <div class="login_blank">
    </div>
</body>
</html>
<%@ include file="../include/footer.jsp"%>