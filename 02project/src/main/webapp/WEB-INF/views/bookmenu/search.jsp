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
    </div> <!--maindiv_left_container-->
    <div class="maindiv_right_container">
        <div calss="sub_title">
            <div class="sub_title_1">
                <h3 class="title">도서 검색</h3>
            </div>
            <!--sub_title_1--><br>
        </div>
        <!--sub_title-->
        <div class="main_search">

            <form action="/main/media/action_target.php" method="get">
            <fieldset style="width: 600px; height:200px; padding-top:20"><legend><b>도서 검색</b></legend>
                
                <div id="s1">
                <select name="search" style="width:65px; height:30px;">
                <option value="전체">전체</option> 
                <option value="도서명">도서명</option>
                <option value="저자">저자</option>
                <option value="출판사">출판사</option>
                </select>
                <input type="text" style="width:350px; height:30px; font-size:14px; margin-top:20px;" name="text1" placeholder="검색어를 입력해주세요.">
                <select name="choose" style="width:65px; height:30px;">
                    <option value="AND">AND</option> 
                    <option value="OR">OR</option>
                    </select><br>
         
                <select name="search2" style="width:65px; height:30px;">
                    <option value="전체">전체</option> 
                    <option value="도서명">도서명</option>
                    <option value="저자">저자</option>
                    <option value="출판사">출판사</option>
                    </select>
                    <input type="text" style="width:350px; height:30px; font-size:14px; margin-top:20px;" name="text2" placeholder="검색어를 입력해주세요.">
                    <select name="choose2" style="width:65px; height:30px;">
                        <option value="AND">AND</option> 
                        <option value="OR">OR</option>
                        </select><br>
            
             <select name="search3" style="width:65px; height:30px;">
                 <option value="전체">전체</option> 
                 <option value="도서명">도서명</option>
                 <option value="저자">저자</option>
                 <option value="출판사">출판사</option>
                 </select>
                 <input type="text" style="width:350px; font-size:14px; height:30px; margin-top:20px;" name="text3" placeholder="검색어를 입력해주세요.">
                <select name="choose3" style="width:65px; height:30px;">
                    <option value="AND">AND</option> 
                    <option value="OR">OR</option>
                    </select><br>
         </div>  
        </fieldset>
           
          
        <fieldset style="width: 600px; height:100px; border:3"><legend><b>자료 유형</b></legend>
            <div id="check">
                      <input type="checkbox" style="width:20px; height:20px; margin-top: 30px;" name="1" value="전체">전체 &nbsp;
                      <input type="checkbox" style="width:20px; height:20px;" name="2" value="도서">도서 &nbsp;
                      <input type="checkbox" style="width:20px; height:20px;" name="3" value="전자책(e-book)">전자책(e-book) &nbsp;
                      <input type="checkbox" style="width:20px; height:20px;" name="4" value="오디오북">오디오북 &nbsp; 
                      <input type="checkbox" style="width:20px; height:20px;" name="5" value="DVD(영화)">DVD(영화) &nbsp;<br>
                </div>
         </fieldset>  
        
        
        <div id="submit">
            <input type ="submit" class="btn-color" style="width: 60px; height:45px;  margin-top:20px;" value="검색"> &nbsp; &nbsp;
            <input type="reset" class="btn-color" style="width: 60px; height:45px;  margin-top:20px;"  value="초기화">     
        </div>
        </form>
        </div>
    </div>
    <!--maindiv_right_container-->
</div>


<!--main-->
</body>
</html>
