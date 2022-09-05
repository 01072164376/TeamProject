<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ex/resources/css/servicepage.css" type="text/css"/>
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
     <div class="join_main">
    <form action="/ex/service/serviceupdate?bno=${dto.bno }" method="post">
        <table>
            <tr>
                <td></td>
                <td style="font-size: 20px;">
                    &nbsp;<input style="height:30px; border:none; font-size:20px; width:200px" value="${dto.id }" readonly>
                    ${dto.gender }&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <fmt:formatDate pattern="yyyy-MM-dd" value= "${dto.day }"/>
                </td>
            </tr>
            <tr>
                <td id="f_s">도서명</td>
                <td style="padding: 10px;"><input id="t_s" type="text" name="title" value="${dto.title }" ></td>
            </tr>
            <tr>
                <td id="f_s">이 유</td>
                <td style="padding: 10px;"><textarea id="c_s" name="content">${dto.content }</textarea></td>
            </tr>
            <tr>
                <td></td>
                <td>
               	<button class="a_f">수정완료</button>
                </td>
            </tr>
        </table>
        </form>
        </div>
        </div>
        </div>
        <%@ include file="../include/footer.jsp"%>
</body>
</html>