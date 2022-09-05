<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
        <link rel="stylesheet" href="../resources/css/btn.css">
        <link rel="stylesheet" href="../resources/css/infomedia.css">
        <link rel="stylesheet" href="../resources/css/infobook.css">
        <link rel="stylesheet" href="../resources/css/bookmenu.css">
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
                        <a href="eventpage.html" onclick="">도서관행사</a>
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
            <strong>요청게시판</strong>
            <p>요청사항을 작성하시면 적극적으로 반영하겠습니다.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    게시글 제목
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>1</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>작성자</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022.8.8</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>33</dd>
                    </dl>
                </div>
                <div class="cont">
                    게시글 내용
                </div>
            </div>
            <div class="bt_wrap">
                <a href="requestpage.html" class="on">목록</a>
                <a href="requestedit.html">수정</a>
            </div>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>