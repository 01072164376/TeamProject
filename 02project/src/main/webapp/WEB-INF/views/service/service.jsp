<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 페이지</title>
<script>
	 var result = '${msg}';
		if (result == 'success') {
			alert("신청 완료.");
		} else if (result == "delete") {
			alert("삭제 완료.")
		}
</script>
<script>
$(document).ready(function(){
	  $('#search_b').on("click",function(event){
		  self.location="/ex/service/service"+'${pageMaker.makePage(1)}'
		  +'&searchType='+$("select option:selected").val()
		  +"&keyword="+$('#search_a').val();
	  })
});
</script>
<link rel="stylesheet" href="/ex/resources/css/service.css" type="text/css"/>
<link rel="stylesheet" href="/ex/resources/css/side.css" type="text/css"/>
</head>
<body>
    <!--maindiv-->
    <div class="maindiv">
        <div class="maindiv_left_container">
            <div id="lnb" class="lnb">
                <h2 class="lnb_title">도서 검색</h2>
            <ul class="menu-lnb"><!--왼쪽 메뉴-->
                <li class="menu-lnb__item" id="lmenu">
                    <a href="/ex/bookmenu/search" onclick="">도서검색</a>
                </li>
                <li class="menu-lnb__item" id="lmenu">
                    <a href="/ex/bookmenu/newbook" onclick="">신작 도서</a>
                </li>
                <li class="menu-lnb__item" id="lmenu">
                    <a href="/ex/bookmenu/bestbook" onclick="">베스트 도서</a>
                </li>
                <li class="menu-lnb__item" id="lmenu">
                    <a href="/ex/service/service">비치희망도서</a>
                </li>
            </ul>
        </div> <!--lnb-->
        </div>
        <!--maindiv_left_container-->
        <div class="maindiv_right_container">
            <div class="sub_title">
                <div class="sub_title_1">
                    <h3 class="title">비치희망도서신청</h3>
                </div>
                <!--sub_title_1--><br>
            </div>
            <!--sub_title-->
    <!--검색 기능/신청하기-->
    <div class="main">
      <form>
    <div class="search">
        <select name="searchType">
    		<option value="n" <c:out value="${pageMaker.searchType==null?'selected':'' }"/>>----</option>
    		<option value="t" <c:out value="${pageMaker.searchType eq 't'?'selected':'' }"/>>번호</option>
    		<option value="c" <c:out value="${pageMaker.searchType eq 'c'?'selected':'' }"/>>도서명</option>
    		<option value="w" <c:out value="${pageMaker.searchType eq 'w'?'selected':'' }"/>>작성자</option>
<%--     		<option value="tc" <c:out value="${pageMaker.searchType eq 'tc'?'selected':'' }"/>>title or content</option> --%>
<%--     		<option value="cw" <c:out value="${pageMaker.searchType eq 'cw'?'selected':'' }"/>>c w</option> --%>
<%--     		<option value="tcw" <c:out value="${pageMaker.searchType eq 'tcw'?'selected':'' }"/>>t c w</option> --%>
        </select>
        <input id="search_a" name="keyword" type="text" value="${pageMaker.keyword}">
        <input id="search_b" type="submit" value="검색">
        <input id="search_c" onclick="location.href='/ex/service/servicejoin'" value="신청하기">
    </div>
   </form>
    <!--게시판-->
    <div class="content">
        <table style="text-align: center; border: 1px solid #dddddd">
        <thead>
            <tr>
                <th style="width: 50px; background-color: #eeeeee; text-align: center;">번호</th>
                <th style="width: 400px; background-color: #eeeeee; text-align: center;">도서명</th>
                <th style="width: 100px; background-color: #eeeeee; text-align: center;">작성자</th>
                <th style="width: 200px; background-color: #eeeeee; text-align: center;">등록일</th>
                <th style="width: 70px;  background-color: #eeeeee; text-align: center;">조회수</th>
                <th style="width: 70px;  background-color: #eeeeee; text-align: center;">처리결과</th>
            </tr>        
        </thead>
        <tbody>
        <c:forEach items="${bbslist}" var="dto">        
                <tr>
                    <td>${dto.bno }</td>
                    <td id="c_p" onClick="location.href='/ex/service/servicepage?bno=${dto. bno}'">${dto.title }</td>
                    <td>${dto.id }</td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd" value= "${dto.day }"/></td>
                    <td>${dto.click }</td>
                    <td>${dto.checkit }</td>
                </tr>
                </c:forEach>
        </tbody>
        </table>
            <!-- 페이지 기능 -->
             <div class="pagination"><!-- 게시판 갯수 -->
             <c:if test="${pageMaker.page !=1}">
                <a href='service${pageMaker.makeSearch(1)}'>&laquo;</a>
             </c:if>
             <c:if test="${pageMaker.prev }">
                <a href='service${pageMaker.makeSearch(pageMaker.startPage-1)}'>&lt;</a>
             </c:if>
             
             <c:forEach begin="${pageMaker.startPage }" end="${ pageMaker.endPage}" var="idx">
                <a href='service${pageMaker.makeSearch(idx)}' 
                 <c:out value="${pageMaker.page==idx?' class=active ':'' }"/> >
                 ${idx}</a>
             </c:forEach>
             
             <c:if test="${pageMaker.next }">
                <a href='service${pageMaker.makeSearch(pageMaker.endPage+1)}'>&gt;</a>
                
             </c:if>  
             
             <c:if test="${pageMaker.page != pageMaker.totalEndPage}">
                <a href='service${pageMaker.makeSearch(pageMaker.totalEndPage)}'>&raquo;</a>
             </c:if></div>      
        <!--maindiv_right_container--> 
            </div><!-- 페이지 기능 -->
          </div><!--main-->
        </div>
    </div>
    <!--maindiv-->     
    <%@ include file="../include/footer.jsp"%>
</body>
</html>