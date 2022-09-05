<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/ex/resources/css/main.css">
	<link rel="stylesheet" href="/ex/resources/css/bookmain.css">
	
        
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>

</head>

<body>
<div style="width:1585px">
<!--헤더  -->
<%@include file="../include/header.jsp"%>

  <!-- 배너이미지 -->
    <div id="bannerBottom">
        <div id="imgBox">
            <img src="/ex/resources/img/2.jpg" id="bannerImg">
        </div>
        <!-- 검색바 -->
        <div id="searchBox">
            <input type="text" id="mySearch" onkeyup="myFunction()" placeholder="검색어를 입력하세요."
                title="Type in a category">
            <a href="#"><img src="/ex/resources/img/search.jpg" id="search"></a>
        </div>
    </div>


    <div id="mainMidTop">
        <div id="mainMidTopLeft">
            <!--   slide                    -->

            <div class="slideshow-container">

                <div class="mySlides fade1" >
                    <div class="numbertext">1 / 3</div>
                    <img src="/ex/resources/img/event1.jpg" style="width:100%">
                    <div class="text"></div>
                </div>

                <div class="mySlides fade1" id="mySlides2">
                    <div class="numbertext">2 / 3</div>
                    <img src="/ex/resources/img/event2.jpg" style="width:100%">
                    <div class="text"></div>
                </div>

                <div class="mySlides fade1" id="mySlides3">
                    <div class="numbertext">3 / 3</div>
                    <img src="/ex/resources/img/event3.jpg" style="width:100%">
                    <div class="text"></div>
                </div>

                <a class="prev" onclick="plusSlides(-1)">❮</a>
                <a class="next" onclick="plusSlides(1)">❯</a>

            </div>
            <br>

            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
            </div>
            <!--   slide끝                    -->
        </div>
        <div id="mainMidTopMid">
           <!--  <img src="/ex/resources/img//announce.jpg" id="search"> -->
            <div style="margin-left: 8px; margin-top: 8px; height:59px;" >
                 <h2><a href="notice" style="text-decoration: none; color: black;">ㅁ공지사항</a></h2>
                <a>우리도서관의 소식을 전해드립니다. </a> 
                <div id="plus">
                <a href="notice"><img src="/ex/resources/img/plus.jpg" style="width:30px;height:30px;">
                </a></div>
            </div>
              <c:forEach items="${dtoNotice}" var="dtonotice">
            <div id=homeNotice>
         
            <a href="readNotice?bno=${dtonotice.bno}">${dtonotice.title}</a>
            </div>
            </c:forEach>
        </div>
        <div id="mainMidTopRight">
            <!-- <img src="/ex/resources/img//calculate.jpg" id="search">
             -->
            <!--달력 api  -->
            <div id="calendar" >

            </div>
            <link href='/ex/resources/calendar/main.css' rel='stylesheet' />
            <script src='/ex/resources/calendar/main.js'></script>

            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var calendarEl = document.getElementById('calendar');
                    var calendar = new FullCalendar.Calendar(calendarEl, {
                        initialView: 'dayGridMonth',
                        googleCalendarApiKey: 'AIzaSyCULQjx1vFkzgkYT3a0Rq-xbCnq5I1oevE',

                        eventSources:  [{
                            googleCalendarId: 'f8ba2bmj6hcp382if9bun36q2c@group.calendar.google.com',
                            // className: 'gcal-event' // an option!,
                        },
                        { googleCalendarId:'ko.south_korea#holiday@group.v.calendar.google.com'
                        }],

                        eventClick: function (info) {
                            info.jsEvent.stopPropagation();
                            info.jsEvent.preventDefault();
                        }
                    });
                    calendar.render();
                });



            </script>
            <!--달력 api끝  -->


        </div>
    </div>
    <div id="mainMidBottom">
        <div id="mainMidBottomLeft">
            <!-- map api시작 -->
            <div id="map">
            </div>

            <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3019e2ca99ab45b03bf2c1324dc036b6">
                </script>
            <script>
                var container = document.getElementById('map');
                var options = {
                    center: new kakao.maps.LatLng(36.807363, 127.147200),
                    level: 3
                };

                var map = new kakao.maps.Map(container, options);
                var marker = new kakao.maps.Marker();

                // 타일 로드가 완료되면 지도 중심에 마커를 표시합니다
                kakao.maps.event.addListener(map, 'tilesloaded', displayMarker);

                function displayMarker() {

                    // 마커의 위치를 지도중심으로 설정합니다 
                    marker.setPosition(map.getCenter());
                    marker.setMap(map);

                    // 아래 코드는 최초 한번만 타일로드 이벤트가 발생했을 때 어떤 처리를 하고 
                    // 지도에 등록된 타일로드 이벤트를 제거하는 코드입니다 
                    kakao.maps.event.removeListener(map, 'tilesloaded', displayMarker);
                }
            </script>
            <!-- 맵 끝 -->
        </div>
        <!-- 배스트도서 -->
        <div id="mainMidBottomMid">
  		    <div style="margin-left: 25px; margin-top: 8px;">
            <h3><a href="best.html" style="text-decoration: none; color: black;">인기 도서</a>
            </h3>
            </div>
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
                                           
                                        </dl>
                                    </div>
                                    <!--info_inner-->
                                </div>
                                <!--con-->
                            </div>
                        </a>
                    </li>
                    
                </ul>
                <!--book_list-->
        </div>
        <div id="mainMidBottomRight">
            <img src="/ex/resources/img//sheet.jpg" id="search">
        </div>
    </div>
    
    
   <div id="mainMidBottom2">
        <a>이주의 AI추천 장르별 베스트도서</a>
  <a id=prev class=prevnext>❮</a>
  <a id=next class=prevnext>❯</a>
         <a href="/ex/crawling" style="position:relative; left:1100px">가져오기</a><br>
       
  
                  
 <!--ai추천 베스트도서  -->
  <%@include file="../include/mainAi.jsp"%>

 
 	</div>
 	</div>
 <!-- 푸터 -->
 <%@include file="../include/footer.jsp"%>

<script>
// slide

let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    if (n > slides.length) { slideIndex = 1 }
    if (n < 1) { slideIndex = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
}
// slide끝
</script>


</body>

</html>