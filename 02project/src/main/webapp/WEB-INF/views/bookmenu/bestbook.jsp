<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.PrintWriter"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/ex/resources/css/0book.css" type="text/css"/>
<link rel="stylesheet" href="/ex/resources/css/main.css" type="text/css"/>
<link rel="stylesheet" href="/ex/resources/css/bookmenu.css" type="text/css"/>
</head>
<body>
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
                <a href="/ex/service/service">비치희망도서</a>
            </li>
        </ul>
   		 </div> <!--lnb-->
        </div>
        <!--maindiv_left_container-->
        <div class="maindiv_right_container">
            <div calss="sub_title">
                <div class="sub_title_1">
                    <h3 class="title">베스트 도서</h3>
                </div>
                <!--sub_title_1--><br>
                <div class="sub_title_2">
                    <strong class="title">베스트 도서 소개</strong>
                    <sub>이달의 베스트 도서입니다.</sub>
                </div>
                <!--sub_title_2-->
            </div>
            <!--sub_title-->
            <div class="book_lk">
                <ul class="book_list">
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="bookinfo_01.html" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/작별인사.jpg">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.5
                                        </span>
                                        <span class="category">소설</span><br>
                                        <strong class="title" title="제목">작별인사</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">김영하</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">복복서가</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="bookinfo_00.html" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/흔한남매10.jpg">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.4
                                        </span>
                                        <span class="category">만화</span><br>
                                        <strong class="title" title="제목">흔한남매</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">백난도</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">미레엔아이세움</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="bookinfo_03.html" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/불편한 편의점.jpg">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.6
                                        </span>
                                        <span class="category">소설</span><br>
                                        <strong class="title" title="제목">불편한 편의점</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">김호연</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">나무옆의자</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/마음의 법칙.jpg">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.6
                                        </span>
                                        <span class="category">심리학</span><br>
                                        <strong class="title" title="제목">마음의 법칙</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">폴커 키츠</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">포레스트북스</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/문재인의 위로.jpg">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.6
                                        </span>
                                        <span class="category">에세이</span><br>
                                        <strong class="title" title="제목">문재인의 위로</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">더휴먼 편집부</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">더휴먼</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/기분을 관리하면 인생이 관리된다.jpg">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.6
                                        </span>
                                        <span class="category">에세이</span><br>
                                        <strong class="title" title="제목">기분을 관리하면 인생...</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">김다슬</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">클라우디아</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/무엇이 옳은가.jpg">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.6
                                        </span>
                                        <span class="category">에세이</span><br>
                                        <strong class="title" title="제목">무엇이 옳은가</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">후안 엔리케스</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">세계사</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                    <li class="book_item">
                        <!--book_item 여러개만들어야하는부분-->
                        <a href="" onclick="">
                            <div>
                                <div class="thumb">
                                    <span class="img">
                                        <img src="/ex/resources/img/안아줘요.png">
                                    </span>
                                </div>
                                <!--thumb-->
                                <div class="con">
                                    <div class="title_inner">
                                        <span class="date">
                                            2022.6
                                        </span>
                                        <span class="category">장르</span><br>
                                        <strong class="title" title="제목">제목</strong>
                                    </div>
                                    <!--title_tiner-->
                                    <div class="info_inner">
                                        <dl>
                                            <dt>지은이</dt>
                                            <dd class="author">지은이</dd>
                                            <dt>출판사</dt>
                                            <dd class="publisher">출판사</dd>
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    <!--book_item 이부분 여러개 만들어야함-->
                </ul>
                <!--book_list-->
            </div>
            <!--book_lk-->
        </div>
        <!--maindiv_right_container-->
    </div>
    <!--maindiv-->
</body>
</html>
