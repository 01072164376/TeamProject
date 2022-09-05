<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width" , initial-scale="1.0">
         <link href="${pageContext.request.contextPath}/resources/css/0book.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
        <title>Document</title>
</head>
<script>
    function btn(){
        alert('이용해주셔서 감사합니다.');
    }
    </script>
<body>
<!--헤더  -->
<%@include file="../include/header.jsp"%>
  
<!-- 반납 입력-->

<div id="board-search">
    <div class="container">
        <div class="search-window">
            <form action="">
                <div class="search-wrap">
                    <select name="search3" style="width:80px; height:35px;">
                    <option value="도서명">도서명</option>
                    <option value="저자">저자</option>
                    </select>
                    <input type="search" id="losearch" style="width:300px; height:36px;"  placeholder="검색어를 입력해주세요." value="">
                    <button type="submit" style="width:80px; height:35px;" class="btn btn-color">검색</button> 
                    <button onclick="javascript:btn()" type="submit" style="width:80px; height:35px;" class="btn btn-color">반납</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 게시판-->
<div id="board-list">
    <div class="container">
        <table class="board-table">
            <thead>
            <tr>
                <th scope="col" class="th-num">번호</th>
                <th scope="col" class="th-title">도서명</th>
                <th scope="col" class="th-date">대여자</th>
                <th scope="col" class="th-date">대출일자</th>
                <th scope="col" class="th-date">반납일자</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>3</td>
                <th style="text-align: center;"><a href="bookinfo_01.html">작별인사</a></th>
                <td>김철수</td>
                <td>2022.03.07</td>
                <td>2022.03.14</td>
            </tr>

            <tr>
                <td>2</td>
                <th style="text-align: center;"><a href="bookinfo_00.html">흔한남매</a></th>
                <td>홍길동</td>
                <td>2022.06.23</td>
                <td>2022.07.01</td>
            </tr>
            </tr>

            <tr>
                <td>1</td>
                <th style="text-align: center;"><a href="bookinfo_03.html">불편한 편의점</a></th>
                <td>영희</td>
                <td>2022.08.15</td>
                <td>2022.08.28</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- page 만들기 -->
<div class="page">
    <ul class="pagination">
        <li> <a href="#" class="firstp">처음 페이지</a></li>
        <li> <a href="#" class="arrow left"><<</a></li>
        <li> <a href="#" class="firstnum">1</a></li>
        <li> <a href="#" class="num">2</a></li>
        <li> <a href="#" class="num">3</a></li>
        <li> <a href="#" class="num">4</a></li>
        <li> <a href="#" class="num">5</a></li>
        <li> <a href="#" class="num">6</a></li>
        <li> <a href="#" class="num">7</a></li>
        <li> <a href="#" class="arrow right">>></a></li>
        <li> <a href="#" class="lastp">끝 페이지</a></li>
    </ul>
</div>

<%@include file="../include/footer.jsp"%>
</body>
</html>