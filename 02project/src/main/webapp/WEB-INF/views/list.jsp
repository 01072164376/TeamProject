<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
	<script>
	 var result = '${msg}';
		if (result == 'insert') {
			alert("회원가입 완료.");
		} else if (result == "delete") {
			alert("삭제 완료.")
		}
	</script>
<link rel="stylesheet" href="/ex/resources/css/OneFile.css" type="text/css"/>
</head>
<body>
<!--헤더  -->
<%@include file="include/header.jsp"%>


 <h1>휴먼 조회 프로그램</h1>
<hr>
<h2>휴먼 정보 리스트</h2>
<div style= float:right;>
<button type="button" onclick="location.href='insert'">휴먼 정보 등록</button>
  </div>
  <table id='customers' border="1">
	<tr>
		<th style="width: 10px">아이디</th>
		<th style="width: 10px">비밀번호</th>
		<th style="width: 10px">성별</th>
		<th style="width: 10px">이름</th>
		<th style="width: 10px">닉네임</th>
		<th style="width: 10px">나이</th>
		<th style="width: 30px">생일</th>
		<th style="width: 40px">우편</th>
		<th style="width: 40px">상세</th>
		<th style="width: 40px">주소</th>
		<th style="width: 30px">전화번호</th>
		<th style="width: 30px">이메일</th>
	</tr>
	<c:forEach items="${list}" var="dto">	
		<tr>
			<td><a href="/ex/delete?id=${dto.id }">${dto.id }</a></td>		
			<td>${dto.pw}</td>
			<td>${dto.gender}</td>
			<td>${dto.name}</td>
			<td>${dto.nickname}</td>
			<td>${dto.age}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value= "${dto.birthday }"/></td>
			<td>${dto.addr1}</td>
			<td>${dto.addr2}</td>
			<td>${dto.addr3}</td>
			<td>${dto.phone}</td>
			<td>${dto.email}</td>
		</tr>
	</c:forEach>
    </table>
    <br>
    <div style=text-align:center;>현재 휴먼 수는 ${size }명 입니다.</div>
</body>
</html>
