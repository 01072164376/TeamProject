<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>login page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/ex/resources/css/header.css"/>
  <script>
		  window.onload=function(){
	       id = '<%=(String)session.getAttribute("id")%>';
	  	    
	      /*마이페이지눌렀을때 로그인 했을때 안했을떄 */
	  	  document.getElementById("mypage").addEventListener("click",function() {
	    	  if(id=="null"){
	    		  
	    		  alert("로그인해주세요");
	    		  location.href ="/ex/login/login";
					
					
			  }else{
					location.href ="/ex/mainpage/mypage";
					
			  }
			
		  })
			
		
  }
</script>
</head>
<body>
    <div id="bannerTop">
        <div id="bannerTopLeft">
            <a href="/ex/mainpage/main" class="topLeft"><img src="/ex/resources/img/ai.jpg" id="ai"></a>
            <a href="/ex/mainpage/main" class="topLeft">
                <h1 id="topTextLeft">AI휴먼도서관</h1>
            </a>
        </div>
        <div id="bannerTopRight">
            <a href="/ex/mainpage/main" class="c_a">
                <h1 id="topTextRight">HOME</h1>
            </a>
            </a>
            <%
            String id=(String)session.getAttribute("id");
            if(id != null){
            %>
                <h1 class="c_p"><%=id %>님이 로그인 하였습니다</h1> 
            <a href="/ex/logout" class="c_a">
                <h1 id="topTextRight">로그아웃</h1>
            </a>
            <%   
            }else {
            %>
            <a href="/ex/login/login" class="c_a">
                <h1 id="topTextRight">로그인</h1>
            </a>
            <a href="/ex/login/insert" class="c_a">
                <h1 id="topTextRight">회원가입</h1>
            </a>            
            <%
            }
            %> 
        </div>
    </div><!--상단 바-->
    <div id="bannerMid" class="navbar sticky">

        <div id="dropdown">
            <button class="dropbtn"><a href="/ex/mainpage/introduce">도서관소개</a></button>
            <button class="dropbtn"><a href="/ex/bookmenu/search">도서메뉴</a></button>
            <button class="dropbtn"><a href="/ex/lob/relobook">대출/반납</a></button>
            <button class="dropbtn"><a href="/ex/recomm/aiBook">ai도서추천</a></button>
            <button class="dropbtn" id=mypage style="cursor: pointer;">마이페이지</a></button>
            <div id="dropDownMenu">
                <div class="dorpDownContents" id="dropDownLine">
                    <a href="/ex/mainpage/introduce" class="linkContents">인사말</a><br><br>
                    <a href="/ex/mainpage/way" class="linkContents">찾아오시는 길</a><br><br>
                    <a href="/ex/mainpage/notice" class="linkContents">공지사항</a><br><br>
                    <a href="/ex/intro/libraryevent" class="linkContents">도서관행사</a><br><br>
                    <a href="/ex/intro/FAQ" class="linkContents">FAQ</a><br><br>
                    <a href="/ex/intro/requestpage" class="linkContents">요청게시판</a><br><br>
                    <!-- <a href="#" class="linkContents">Link 3</a><br><br> -->
                    <!-- <a href="#" class="linkContents">Link 4</a><br><br> -->
                </div>
                <div class="dorpDownContents" id="dropDownLine">
                    <a href="/ex/bookmenu/search" class="linkContents">도서검색</a><br><br>
                    <a href="/ex/bookmenu/newbook" class="linkContents4">신작</a><br><br>
                    <a href="/ex/bookmenu/bestbook" class="linkContents4">베스트</a><br><br>
                    <a href="/ex/service/service" class="linkContents">비치희망도서</a><br><br>

                </div>
                <div class="dorpDownContents" id="dropDownLine">
                    <a href="/ex/lob/relobook" class="linkContents">반납</a><br><br>
                    <a href="/ex/lob/lobook" class="linkContents">대출</a><br><br>
                    <a href="" class=""></a><br><br>
                    <a href="" class=""></a><br><br>
                    <!-- <a href="#" class="linkContents">Link 3</a><br><br>
                    <a href="#" class="linkContents">Link 4</a><br><br> -->

                </div>
                <div class="dorpDownContents" id="dropDownLine">
                    <a href="survey.html" class="linkContents5">ai 도서추천 설문</a><br><br>
                    <a href="/ex/recomm/aiBook" class="linkContents5">ai 도서추천</a><br><br>
                    <a href="/ex/service/aiGenre" class="linkContents5">ai 도서장르 추천(성별,나이)</a><br><br>
                    <a href="" class=""></a><br><br>
                    <a href="" class=""></a><br><br>
                </div>
                <div class="dorpDownContents">
                    <a href="" class=""></a><br><br>
                    <a href="" class=""></a><br><br>
                </div>

            </div>
        </div>

    </div><!--bannerMid(드롭다운)--> <!--헤더끝-->
  
  
<!-- </body> -->
<!-- </html> -->