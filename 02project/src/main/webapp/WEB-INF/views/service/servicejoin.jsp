<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.io.PrintWriter"%>
<%@ include file="../include/header.jsp"%>
<% 
	String name=(String)session.getAttribute("name");
	String gender=(String)session.getAttribute("gender");
	if(id==null){
		out.println("<script>");
		out.println("alert('로그인 후 이용가능')"); 
		out.println("location.href='/ex/service/service'"); 
		out.println("</script>"); 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ex/resources/css/servicejoin.css" type="text/css"/>
<link rel="stylesheet" href="/ex/resources/css/side.css" type="text/css"/>
</head>
<body>
     <!--maindiv-->
    <div class="maindiv">
        <div class="maindiv_left_container">
            <div id="lnb" class="lnb">
                <h2 class="lnb_title">도서 검색</h2>
            <ul class="menu-lnb"><!--왼쪽 메뉴-->
                <li class="menu-lnb__item" id="lmenu">
                    <a href="search.html" onclick="">도서검색</a>
                </li>
                <li class="menu-lnb__item" id="lmenu">
                    <a href="newbook.html" onclick="">신작 도서</a>
                </li>
                <li class="menu-lnb__item" id="lmenu">
                    <a href="bestbook.html" onclick="">베스트 도서</a>
                </li>
                <li class="menu-lnb__item" id="lmenu">
                    <a href="service.html">비치희망도서</a>
                </li>
            </ul>
        </div> <!--lnb-->
        </div>
        <!--maindiv_left_container-->
        <div class="maindiv_right_container">
            <div class="sub_title">
                <div class="sub_title_1">
                    <h3 class="title">비치희망도서신청</h3>
                </div>
                <!--sub_title_1--><br>
            </div>
            <!--sub_title-->
    <!--검색 기능/신청하기-->
     <form action="/ex/service/servicejoin" method="post">
     <input type="hidden" name="id" value="<%=id%>">
     <input type="hidden" name="gender" value="<%=gender%>">
     <input type="hidden" name="checkit" value="처리중">
     <div class="join_main">
        <table>
            <tr>
                <td></td>
                <td id="js">신청란</td>
            </tr>
            <tr>
                <td id="f_s">도서명</td>
                <td style="padding: 10px;"><input id="t_s" type="text" name="title" placeholder="도서명을 작성 하시오." required></td>
            </tr>
            <tr>
                <td id="f_s">이 유</td>
                <td style="padding: 10px;"><textarea id="c_s" name="content" placeholder="이유를 작성 하시오." required></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td id="tc"><input id="god" type="submit" value="신청하기"></td>
            </tr>
        </table>
        </div>
        </form>
       </div>
     </div>
     <%@ include file="../include/footer.jsp"%>
</body>
</html>