<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find_id page</title>
<link rel="stylesheet" href="/ex/resources/css/find_id.css" type="text/css"/>
<script>
var msg = "${msg}";
if(msg == "noid"){
	alert("아이디를 찾을 수 없습니다. 다시 입력하시오.");
} else if (msg == "data") {
	alert("데이터 오류");
}
</script>
</head>
<body>
    <!--아이디찾기 메인-->
    <form action="find_id" method="post">
    <div class="join_main">
        <h1 style="margin-top:50px">아이디 찾기</h1>
        <h4><label style="padding-right:382px">이름</label></h4>
        <input type="text" name="name" placeholder="이름 입력" required><br>
        <h4><label style="padding-right:330px">휴대폰 번호</label></h4>
        <input type="text" name="phone" placeholder="휴대폰 번호 입력(-빼고입력)" maxlength='11' required><br>
        <h4><label style="padding-right:365px">이메일</label></h4>
        <input type="text" name="email" placeholder="이메일 입력" required><br>
        </div>
    <!--아이디찾기-->
    <div class="join">
        <input type="submit" value="찾기">
    </div>
</form>
<%-- <%@ include file="../include/footer.jsp"%> --%>
</body>
</html>