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
<body>
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
                        <a href="libraryevent.html" onclick="">도서관행사</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="FAQ.html">FAQ</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="requestpage.html">요청게시판</a>
                    </li>
                </ul>
            </div> <!--lnb-->
            </div> <!--maindiv_left_container-->        

    <div class="board_wrap">
        <div class="board_title">
            <strong>게시글 작성</strong>
            <p>게시글을 작성합니다.</p>
        </div>
        <form action=insertNotice method=POST>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력"  name=title></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" placeholder="글쓴이 입력"  name=writer ></dd>
                    </dl>
                  
                </div>
                <div class="cont">
                    <input type="textarea" name=content >

                </div>
               
            </div>
            <div class="bt_wrap">
                <input type="submit" class=on value=작성 style="cursor:pointer">
                <a href="notice">취소</a>
                
            </div>
            </div>
            </form>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>