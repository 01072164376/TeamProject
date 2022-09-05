<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ex/resources/css/find_pw.css" type="text/css"/>
<script>
var msg = "${msg}";
if(msg == "nopw"){
	alert("비밀번호를 찾을 수 없습니다. 다시 입력하시오.");
} else if (msg == "data") {
	alert("데이터 오류");
} else if (msg == "noid") {
	alert("아이디가 존재하지 않습니다.");
}
</script>
</head>
<body>
    <!--비밀번호찾기 메인-->
    <form action="find_pw" method="post">
    <div class="join_main">
        <h1 style="margin-top:50px">비밀번호 찾기</h1>
        <h4><label style="padding-right:365px">아이디</label></h4>
        <input type="text" name="id" placeholder="ID 입력" required><br>
        <h4><label style="padding-right:382px">이름</label></h4>
        <input type="text" name="name" placeholder="이름 입력" required><br>
        <h4><label style="padding-right:365px">이메일</label></h4>
        <input type="text" name="email" placeholder="이메일 입력" required><br>
        </div>
    <!--비밀번호찾기-->
    <div class="join">
        <input type="submit" value="찾기">
    </div>
</form>
<%-- <%@ include file="../include/footer.jsp"%> --%>
</body>
</html>