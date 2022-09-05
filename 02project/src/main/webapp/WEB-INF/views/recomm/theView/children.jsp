<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<!doctype html>
<html>
<head>
    <mea charset="UTF-8">
        <title>newbook</title>
        <meta name="viewport" content="width=device-width" , initial-scale="1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/ex/resources/css/book.css">
        <link rel="stylesheet" href="/ex/resources/css/main.css">
</head>
<body>
    <div id="bannerTop">
        <div id="bannerTopLeft">
            <a href="main.html" class="topLeft"><img src="/ex/resources/image/ai.jpg" id="ai"></a>
            <a href="main.html" class="topLeft">
                <h1 id="topTextLeft">AI휴먼도서관</h1>
            </a>
        </div>
        <div id="bannerTopRight">
            <a href="main.html" class="topRight">
                <h1 id="topTextRight">HOME</h1>
            </a>
            <a href="login.html" class="topRight">
                <h1 id="topTextRight">로그인</h1>
            </a>
            <a href="insert.html" class="topRight">
                <h1 id="topTextRight">회원가입</h1>
            </a>
        </div>
    </div>
    <div id="bannerMid" class="navbar sticky">

        <div id="dropdown">
            <button class="dropbtn"><a href="introduce.html">도서관소개</a></button>
            <button class="dropbtn"><a href="search.html">도서메뉴</a></button>
            <button class="dropbtn"><a href="lobook.html">대출/반납</a></button>
            <button class="dropbtn"><a href="survey.html">ai도서추천</a></button>
            <button class="dropbtn"><a href="/mypage.html?id='aa111'">마이페이지</a></button>
            <div id="dropDownMenu">
                <div class="dorpDownContents">
                    <a href="introduce.html" class="linkContents">인사말</a><br><br>
                    <a href="way.html" class="linkContents">찾아오시는 길</a><br><br>
                    <a href="notice.html" class="linkContents">공지사항</a><br><br>
                    <a href="libraryevent.html" class="linkContents">도서관행사</a><br><br>
                    <a href="FAQ.html" class="linkContents">FAQ</a><br><br>
                    <a href="requestpage.html" class="linkContents">요청게시판</a><br><br>
                    <!-- <a href="#" class="linkContents">Link 3</a><br><br> -->
                    <!-- <a href="#" class="linkContents">Link 4</a><br><br> -->
                </div>
                <div class="dorpDownContents">
                    <a href="search.html" class="linkContents">도서검색</a><br><br>
                    <a href="newbook.html" class="linkContents4">신작</a><br><br>
                    <a href="bestbook.html" class="linkContents4">베스트</a><br><br>
                    <a href="service.html" class="linkContents">비치희망도서</a><br><br>

                </div>
                <div class="dorpDownContents">
                    <a href="relobook.html" class="linkContents">반납</a><br><br>
                    <a href="lobook.html" class="linkContents">대출</a><br><br>
                    <a href="" class=""></a><br><br>
                    <a href="" class=""></a><br><br>
                    <!-- <a href="#" class="linkContents">Link 3</a><br><br>
                    <a href="#" class="linkContents">Link 4</a><br><br> -->

                </div>
                <div class="dorpDownContents">
                    <a href="survey.html" class="linkContents5">ai 도서추천 설문</a><br><br>
                    <a href="aiBook.html" class="linkContents5">ai 도서추천</a><br><br>
                    <a href="" class=""></a><br><br>
                    <a href="" class=""></a><br><br>
                </div>
                <div class="dorpDownContents">
                    <a href="" class=""></a><br><br>
                    <a href="" class=""></a><br><br>
                </div>

            </div>
        </div>

    </div><!--bannerMid(드롭다운)-->

<!-- 상단 배너끝 -->

<!--main-->
    
    
    <div class="maindiv">
    <div class="maindiv_left_container">
        <div id="lnb" class="lnb">
            <h2 class="lnb_title">도서 추천</h2>
        <ul class="menu-lnb"><!--왼쪽 메뉴-->
            <li class="menu-lnb__item" id="lmenu">
                <a href="search.html" onclick="">미디어 추천도서</a>
            </li>
            <li class="menu-lnb__item" id="lmenu">
                <a href="newbook.html" onclick="">문학상 수상작</a>
            </li>
            <li class="menu-lnb__item" id="lmenu">
                <a href="bestbook.html" onclick="">전문기관 추천도서</a>
            </li>
            <li class="menu-lnb__item" id="lmenu">
                <a href="service.html">어린이/청소년 추천도서</a>
            </li>
        </ul>
    </div> <!--lnb-->
    </div> <!--maindiv_left_container-->
    <div class="maindiv_right_container">
    <div calss="sub_title">
    <div class="sub_title_1">
        <h3 class="title">어린이/청소년 추천도서</h3>
    </div><!--sub_title_1--><br>
    <div class="sub_title_2">
        <strong class="title">추천도서 소개</strong>
        <sub>이달의 어린이/청소년 추천 도서입니다.</sub>
    </div><!--sub_title_2-->
    </div><!--sub_title-->
    <div class="book_lk">
        <ul class="book_list">
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="bookinfo_01.html" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/280/l9791167370280.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.5
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">완전한 행복</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">정유정</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">은행나무</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="bookinfo_02.html" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/493/l9788949123493.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.4
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">순례주택</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">유은실</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">비룡소</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="bookinfo_03.html" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/755/l9791190337755.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">죽이고 싶은 아이</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">이꽃님</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">우리학교</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/002/l9788972970002.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">사회</span><br>
                                <strong class="title" title="제목">왜요, 기후가 어떤데요?</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">최원형</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">동녘</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/008/l9788932039008.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">크루아상 사러 가는 아침</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">필리오 들레름</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">문학과지성사</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/273/l9788977779273.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">사회</span><br>
                                <strong class="title" title="제목">독재와 민주주의</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">정관성</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">가교</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/710/l9791160946710.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">가족 종료</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">사카이 준코</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">사계절</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="http://image.kyobobook.co.kr/images/book/large/132/l9791190105132.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">광릉숲의 비밀</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">최진우</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">빈빈책방</dd>
                                </dl>
                            </div><!--info_inner-->
                        </div><!--con-->
                    </div>
                </a>
            </li><!--book_item 이부분 여러개 만들어야함-->
        </ul><!--book_list-->
    </div><!--book_lk-->
    </div><!--maindiv_right_container-->
</div><!--maindiv_margin-->
</div><!--maindiv-->
</body>

</html>