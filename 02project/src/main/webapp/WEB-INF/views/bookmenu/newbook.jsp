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

<!--main-->
    
    
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
    </div> <!--maindiv_left_container-->
    <div class="maindiv_right_container">
    <div calss="sub_title">
    <div class="sub_title_1">
        <h3 class="title">신작 도서</h3>
    </div><!--sub_title_1--><br>
    <div class="sub_title_2">
        <strong class="title">신작 도서 소개</strong>
        <sub>이달의 신작 도서입니다.</sub>
    </div><!--sub_title_2-->
    </div><!--sub_title-->
    <div class="book_lk">
        <ul class="book_list">
            <li class="book_item"><!--book_item 여러개만들어야하는부분-->
                <a href="bookinfo_01.html" onclick="">
                    <div>
                        <div class="thumb">
                            <span class="img">
                                <img src="/ex/resources/img/작별인사.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.5
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">작별인사</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">김영하</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">복복서가</dd>
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
                                <img src="/ex/resources/img/역행자.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.4
                                </span>
                                <span class="category">에세이</span><br>
                                <strong class="title" title="제목">역행자</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">자청</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">웅진지식하우스</dd>
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
                                <img src="/ex/resources/img/불편한 편의점.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">불편한 편의점</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">김호연</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">나무옆의자</dd>
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
                                <img src="/ex/resources/img/인플레이션에서살아남기.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">에세이</span><br>
                                <strong class="title" title="제목">인플레이션에서 살아남기</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">오건영</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">페이지2북스</dd>
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
                                <img src="/ex/resources/img/변화하는 세계 질서.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">경제</span><br>
                                <strong class="title" title="제목">변화하는 세계 질서</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">레이 달리오</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">한빛비즈</dd>
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
                                <img src="/ex/resources/img/마음의 법칙.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">심리학</span><br>
                                <strong class="title" title="제목">마음의 법칙</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">폴커 키츠</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">포레스트북스</dd>
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
                                <img src="/ex/resources/img/세상의 마지막 기차역.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">소설</span><br>
                                <strong class="title" title="제목">세상의 마지막 기차역</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">무라타 다케시</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">모모</dd>
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
                                <img src="/ex/resources/img/설민석의  한국사.jpg" >
                            </span>
                        </div><!--thumb-->
                        <div class="con">
                            <div class="title_inner">
                                <span class="date">
                                    2022.6
                                </span>
                                <span class="category">만화</span><br>
                                <strong class="title" title="제목">설민석의 한국사 대모험</strong>
                            </div><!--title_tiner-->
                            <div class="info_inner">
                                <dl>
                                    <dt>지은이</dt>
                                    <dd class="author">설민석</dd>
                                    <dt>출판사</dt>
                                    <dd class="publisher">단꿈아이</dd>
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
</div>
</body>
</html>
