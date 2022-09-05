<%@page import="com.human.dto.BbsDto"%>
<%@page import="com.human.service.BbsService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ex/resources/css/servicepage.css" type="text/css"/>
<link rel="stylesheet" href="/ex/resources/css/side.css" type="text/css"/>
<script>
	var msg = "${msg}"
		if(msg == 'update'){
			alert("게시물 수정완료")
		}
</script>
<script>
$(document).ready(function(){
$("#bbsdelete").click(function(){    
	if(confirm("정말 삭제하시겠습니까 ?") == true){
		self.location="/ex/bbsdelete?bno=${dto.bno }";
	}    
	else{        
		return ;    
	}
});
});
</script>
<script>
// 댓글 관리
var bno="${dto.bno}";
var page=1;
// 댓글 수정
$(document).ready(function() {		
	getPageList(page);
	$("#replyModBtn").on("click",function(){
		var rno=$(".modal-title").html();
		var recontent = $("#recontent").val();
		$.ajax({
			type:'put',
			url:'/ex/replies/'+rno,
			headers:{
				"Content-Type":"application/json"
			},
			data:JSON.stringify({recontent:recontent}),
			dataType:'text',
			success:function(result){
				if(result=='SUCCESS'){
					alert("수정 되었습니다.");
					$("#modDiv").hide("slow");
					getPageList(page);
				}
			}
		})
	})
	
	// 댓글 삭제
	$("#replyDelBtn").on("click",function(){
		var rno=$(".modal-title").html();
		$.ajax({
			type:'delete',
			url:'/ex/replies/'+rno,
			headers:{
				"Content-Type":"application/json"
			},
			dataType:'text',
			success:function(result){
				if(result=='SUCCESS'){
					alert("삭제 되었습니다.");
					$("#modDiv").hide("slow");
					getPageList(page);
				}
			}		
		})	
	})
	
	//수정 창 닫기
	$("#closeBtn").on("click",function(){
		$("#modDiv").hide("slow");
	})
	$("#replies").on("click",".replyLi button",function(){
		var rno=$(this).parent().attr("data-rno");
		var recontent=$(this).parent().text();
		$(".modal-title").html(rno);
		$("#recontent").val(recontent);
		$("#modDiv").show("slow");
	})
	
	//댓글 페이지 이동
	var fObject=$(".form");
	$(".pagination").on("click","a",function(event){
		event.preventDefault();
		page=$(this).attr("href");
		getPageList(page);	
	})
	
	////////////////////////////////
	$(".btnList").on("click",function(){
		fObject.attr("method","get");
		fObject.attr("action","/ex/sboard/list");
		fObject.submit();
		
	})	
	$(".btnRemove").on("click",function(){
		fObject.attr("action","/ex/sboard/remove");
		fObject.submit();
	})
	$(".btnModify").on("click",function(){
		fObject.attr("method","get");
		fObject.attr("action","/ex/sboard/modify");
		fObject.submit();
	})
	/////////////////////////////////
	//댓글 등록
	$("#replyAddBtn").on("click",function(){		
		var reid=$("#newReplyeWriter").val();
		var recontent=$("#newrecontent").val();
		$.ajax({
			type:'post',
			url:'/ex/replies',
			headers:{
				"Content-Type":"application/json"
			},
			dataType:'text',
			data:JSON.stringify({
				bno:bno,
				reid:reid,
				recontent:recontent
			}),
			success:function(result){
				if(result == 'SUCCESS'){
					alert("등록 되었습니다.");
					//화면에 찍는 작업
					getPageList(page);
				}
			}
		})
	})
});

//댓글 상세보기
function getPageList(page){
	var str="";
	$.getJSON("/ex/replies/"+bno+"/"+page,function(data){
		console.log(data);
		$(data.list).each(function(){	
			   str+="<li data-rno='"+this.rno+"'class='replyLi'>"+this.reid
			        +"<textarea>"+this.recontent+"</textarea>"
			        +"<button>수정</button></li>"
			})
		$("#replies").html(str);
		str="";
		if(data.pageMaker.prev){
			str+="<a href='"+(data.pageMaker.startPage-1)+"'> << </a>";
		}
		
		for(var i=data.pageMaker.startPage;i<data.pageMaker.endPage;i++){
			var strClass=data.pageMaker.page==i?'class=active':'';	
			str+="<a "+strClass+" href='"+i+"'>"+i+"</a>";
		}
		if(data.pageMaker.next){
			str+="<a href='"+(data.pageMaker.endPage+1)+"'> << </a>";
		}
		$(".pagination").html(str);	
	})
}
</script>
</head>
<body>
    <!--maindiv-->
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
                    <a href="service.html">비치희망도서</a>
                </li>
            </ul>
        </div> <!--lnb-->
        </div>
        <!--maindiv_left_container-->
        <div class="maindiv_right_container" style="height:1500px;">
            <div class="sub_title">
                <div class="sub_title_1">
                    <h3 class="title">비치희망도서신청</h3>
                </div>
                <!--sub_title_1--><br>
            </div>
            <!--sub_title-->
    <!--검색 기능/신청하기-->
     <div class="join_main">
        <table>
            <tr>
                <td></td>
                <td style="font-size: 20px;">
                    &nbsp;<input style="height:30px; border:none; font-size:20px; width:200px" type="text" name="id" value="${dto.id }" readonly>
                    ${dto.gender }&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <fmt:formatDate pattern="yyyy-MM-dd" value= "${dto.day }"/>
                </td>
            </tr>
            <tr>
                <td id="f_s">도서명</td>
                <td style="padding: 10px;"><input id="t_s" value="${dto.title }" disabled></td>
                <%
                if(id != null){
                	if(id.equals("admin")){
                %>
                	<form action="/ex/checkit?bno=${dto.bno }" method="POST">
                	<td>처리완료<input type="checkbox" name="checkit" value="완료">처리반환<input type="checkbox" name="checkit" value="반환"></td>
                	<td><input type="submit" value="등록"></td>
                	</form>
                <%                 
                	}
                }
                %>	
            </tr>
            <tr>
                <td id="f_s">이 유</td>
                <td style="padding: 10px;"><textarea id="c_s" disabled>${dto.content }</textarea></td>
            </tr>
            <tr>
                <td></td>
                <td>
                <%
                String userId = (String)request.getAttribute("userId");
                if(id != null){
                	if(id.equals("admin") || id.equals(userId)){
                %>
                <button class="d_l" onclick="location.href='/ex/service/serviceupdate?bno=${dto.bno}'">수정</button>
                <button class="de" id="bbsdelete">삭제</button>
                <%
                		}
                	}
                %>
                </td>
            </tr>
            <tr>
            <td></td>
            <td><hr id="hr"></td>
            </tr>
            <tr>
                <td id="f_s">댓 글</td>
                <td style="padding: 10px;">
                <input type="hidden" name="reid" id="newReplyeWriter" value="<%=id%>">
                <textarea class="d_s" id="newrecontent" name="recontent" placeholder="댓글을 입력하시오."></textarea>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                <button class="d_a" onClick="location.href='/ex/service/service'">목록</button>
                <div class="a_c"><input class="a_b" id="replyAddBtn" type="submit" value="댓글등록"></div>
                </td>
            </tr>
              <tr>
            <td></td>
            <td><hr id="hr"></td>
            </tr>
        </table>
        <div id='modDiv' style="display:none">
	<div class="modal-title"></div>
	<div>
		<input type='text' id='recontent'>
	</div>
	<div>
		<button type="button" id="replyModBtn">Modify</button>
		<button type="button" id="replyDelBtn">delete</button>
		<button type="button" id="closeBtn">close</button>
	</div>
</div>
<ui id="replies">
</ui>
<div class="pagination">
</div>
        </div>
        </div>
        </div>
</body>
</html>