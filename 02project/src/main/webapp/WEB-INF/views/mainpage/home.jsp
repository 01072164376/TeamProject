<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String id=(String)session.getAttribute("id");
	String name=(String)session.getAttribute("name");
	if(id==null){
		out.println("<script>");
		out.println("alert('로그인해주세요')");
		out.println("location.href='/ex/login/login'");
		out.println("</script>");
// 		response.sendRedirect("/ex/login");
	}else{
		out.println(id + name +" 님이 로그인 하였습니다.");
		out.println("<br><a href='/ex/logout'>로그아웃</a>");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script>
	var msg = "${msg}";
	if(msg=="success"){
		alert("login success");
	}else if(msg=="noid"){
		alert("아이디 없음.");
	}else if(msg=="nopw"){
		alert("비밀번호 다름.");
	}else if(msg=="nohuman"){
		alert("인간이 아님.");
	}
</script>
</head>
<body>
<h2>로그인/회원가입 성공이유 <%=id %><%=name %></h2>
<h2>안녕하세요 <%out.print(session.getAttribute("name")+" 님"); %></h2>
<P>  The time on the server is ${serverTime}. </P>   
</body>
</html>