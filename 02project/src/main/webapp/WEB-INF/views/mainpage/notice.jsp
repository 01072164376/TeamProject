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
	<link rel="stylesheet" href="/ex/resources/css/infomedia.css">
        <link rel="stylesheet" href="/ex/resources/css/infobook.css">
        <link rel="stylesheet" href="/ex/resources/css/btn.css">
            
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
<script>
function selChange() {
	var sel = document.getElementById('cntPerPage').value;
	location.href="notice?nowPage=${paging.nowPage}&cntPerPage="+sel;
}



</script>
<%@include file="../include/header.jsp"%>
</head>

<body>
<div style="width:1585px">
<!--헤더  -->
    </div>
        <div class="maindiv">
            <div class="maindiv_left_container">
                <div id="lnb" class="lnb">
                    <h2 class="lnb_title">정보마당</h2>
                <ul class="menu-lnb"><!--왼쪽 메뉴-->
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="notice.html" onclick="">공지사항</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="../intro/libraryevent.html" onclick="">도서관행사</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="../intro/FAQ.html">FAQ</a>
                    </li>
                    <li class="menu-lnb__item" id="lmenu">
                        <a href="../intro/requestpage.html">요청게시판</a>
                    </li>
                </ul>
            </div> <!--lnb-->
            </div> <!--maindiv_left_container-->        

    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>도서관의 공지사항을 알려드립니다.</p>
            <div style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
	</div> <!-- 옵션선택 끝 -->
        </div>
        
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회수</div>
                </div>
                <c:forEach items="${viewAll}" var="list">	
                <div>
                    <div class="num">${list.bno}</div>
                    <div class="title"><a href="readNotice?bno=${list.bno }">${list.title}</a></div>
                    <div class="writer">${list.writer}</div>
                    <div class="date"><fmt:formatDate pattern="yyyy-MM-dd" value= "${list.day}"/></div>
                    <div class="count">${list.viewcount}</div>
                </div>
                
             	</c:forEach>
            </div>
           
            
            <div class="bt_wrap" style="margin-left:900px">
                <a id=writeNotice style="cursor:pointer">글작성</a>
                
            </div>
            
            
            
            <div style="display: block; text-align: center; font-size:18px" >		
		<c:if test="${paging.startPage != 1 }">
			<a href="notice?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="notice?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="notice?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
        </div>
 
    

</div><!--maindiv_margin-->
</div><!--maindiv-->













 <!-- 푸터 -->
 <%@include file="../include/footer.jsp"%>

<script>
window.onload=function(){
	
    id = '<%=(String)session.getAttribute("id")%>';
	    
    /*글작성 로그인 했을때 안했을떄 */
	  document.getElementById("writeNotice").addEventListener("click",function() {
  	  if(id=="null"){
  		  
  		  alert("로그인해주세요");
  		  location.href ="/ex/login/login";
				
				
		  }else{
				location.href ="/ex/mainpage/insertNotice";
				
		  }
		
	  })
		
}
</script>


</body>

</html>