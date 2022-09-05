<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
        <link rel="stylesheet" href="../resources/css/btn.css">
        <link rel="stylesheet" href="../resources/css/infomedia.css">
        <link rel="stylesheet" href="../resources/css/infobook.css">
</head>
<%@include file="../include/header.jsp"%>

        <div class="maindiv">
            <div class="maindiv_left_container">
                <div id="lnb" class="lnb">
                    <h2 class="lnb_title">정보마당</h2>
                <ul class="menu-lnb"><!--왼쪽 메뉴-->
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="notice.html" onclick="">공지사항</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="/ex/intro/libraryevent" onclick="">도서관행사</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="/ex/intro/FAQ">FAQ</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="/ex/intro/requestpage">요청게시판</a>
                    </li>
                </ul>
            </div> <!--lnb-->
            </div> <!--maindiv_left_container-->        

    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>도서관의 공지사항을 알려드립니다.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                  ${readNotice.title }
                </div><br>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${readNotice.bno}</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>${readNotice.writer}</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd><fmt:formatDate pattern="yyyy-MM-dd" value= "${readNotice.day}"/></dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>${readNotice.viewcount}</dd>
                    </dl>
                </div>
                <div class="cont">
                    ${readNotice.content}
                </div>
            </div>
            <div class="bt_wrap">
                <a href="notice" class="on">목록</a>
                <a href="modifyNotice?bno=${readNotice.bno }">수정</a>
                <a href="deleteNotice?bno=${readNotice.bno }">삭제</a>
                
            </div>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>