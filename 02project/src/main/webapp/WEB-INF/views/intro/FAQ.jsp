<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <mea charset="UTF-8">
        <title>newbook</title>
        <meta name="viewport" content="width=device-width" , initial-scale="1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../resources/css/btn.css">
        <link rel="stylesheet" href="../resources/css/infomedia.css">
        <link rel="stylesheet" href="../resources/css/infobook.css">
        <link rel="stylesheet" href="../resources/css/bookmenu.css">
</head>
<body>
<%@include file="../include/header.jsp"%>

        <div class="maindiv">
            <div class="maindiv_left_container">
                <div id="lnb" class="lnb">
                    <h2 class="lnb_title">정보마당</h2>
                <ul class="menu-lnb"><!--왼쪽 메뉴-->
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="../mainpage/notice" onclick="">공지사항</a>
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
            <strong>FAQ</strong>
            <p>FAQ 페이지입니다.</p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>
                <div>
                    <div class="num">5</div>
                    <div class="title"><a href="requestview.html">게시글 제목</a></div>
                    <div class="writer">작성자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">4</div>
                    <div class="title"><a href="requestview.html">게시글 제목</a></div>
                    <div class="writer">작성자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">3</div>
                    <div class="title"><a href="requestview.html">게시글 제목</a></div>
                    <div class="writer">작성자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">2</div>
                    <div class="title"><a href="requestview.html">게시글 제목</a></div>
                    <div class="writer">작성자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="requestview.html">게시글 제목</a></div>
                    <div class="writer">작성자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">33</div>
                </div>
            </div>
            <div class="board_page">
                <a href="#" class="bt first"></a>
                <a href="#" class="bt prev"></a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>