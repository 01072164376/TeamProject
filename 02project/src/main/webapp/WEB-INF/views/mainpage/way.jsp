<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Title</title>
<link rel="stylesheet" href="/ex/resources/css/side.css" type="text/css"/>
</head>
<body>
    <!--maindiv-->
    <div class="maindiv">
        <div class="maindiv_left_container">
            <div id="lnb" class="lnb">
                <h2 class="lnb_title">도서관 소개</h2>
            <ul class="menu-lnb"><!--왼쪽 메뉴-->
                <li class="menu-lnb__item" id="lmenu">
                    <a href="/ex/mainpage/introduce" onclick="">인사말</a>
                </li>
                <li class="menu-lnb__item" id="lmenu">
                    <a href="/ex/mainpage/way" onclick="">찾아오시는 길</a>
                </li>
            </ul>
        </div> <!--lnb-->
        </div>
        <!--maindiv_left_container-->
        <div class="maindiv_right_container">
            <div class="sub_title">
                <div class="sub_title_1">
                    <h3 class="title">찾아오시는 길</h3>
                </div>
                <div class="waymain">
			        <img id="way" src="/ex/resources/img/way.PNG">
			        <h4>주소 : 충청남도 천안시 동남구 대흥로 215<br>
			            전화번호 : 041-561-1122</h4>
			    </div>
			    <!--a태그 네이버 지도 바로가기-->
			    <div class="naver">
			        <a href="https://map.naver.com/v5/search/휴먼%20교육센터" target="_blank">네이버 지도<br>바로가기</a>
			    </div>
                <!--sub_title_1--><br>
            </div>
        </div>
</body>
</html>