<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.PrintWriter"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ex/resources/css/join.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
   var msg = "${msg}";
   if(msg=="sameid"){
      alert("이미 아이디가 존재합니다.");
   }else if(msg=="otherpw"){
      alert("비밀번호를 재확인 하시오.");
   }else if(msg=="data"){
      alert("데이터 오류");
   }else if(msg=="test1"){
      alert("테스트 성공");
   }else if(msg=="test2"){
      alert("데이터 실패");
   }
</script>
<script>
function ispw(){
   var pw = document.getElementById("pw").value
   var pwcheck = document.getElementById("pwcheck").value
   var samepw = document.getElementById("samepw")
      if(pw == pwcheck){
         samepw.innerHTML="비밀번호가 일치함"
         samepw.style.color='blue';
      }
      else {
         samepw.innerHTML="비밀번호가 일치하지 않습니다"
         samepw.style.color='red';
      }
   }
</script>
<script>
$(document).ready(function () {
$('#btnCheck').click(function () {   
    if ($('#id').val() != '') {             
        // 아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환받기
        $.ajax({                
            type: 'GET',
            url: '/ex/idcheck',
            data: 'id=' + $('#id').val(),
            dataType: 'json',
            success: function(result) {
                if (result == '0') {
                    $('#sameid').text('사용 가능한 아이디 입니다.');
                    $("#sameid").css("color","blue");
                } else {
                    $('#sameid').text('이미 사용중인 아이디 입니다.');
                    $("#sameid").css("color","red");
                }
            },
            error: function(a, b, c) {
                console.log(a, b, c);
            }                 
        });              
    } else {
        alert('아이디를 입력하세요.');
        $('#id').focus();
    }      
});
})
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }     
      
           $("[name=addr1]").val(data.zonecode);
           $("[name=addr2]").val(fullRoadAddr);
           
       }
    }).open();
}
</script> <!--우편번호 api끝  -->
</head>
<body>
<form action="/ex/login/insert" method="post">
<!--회원가입 메인-->
    <div class="join_main">
        <h4><label style="padding-right:365px">아이디</label></h4>
        <input style="margin-left: 100px;" id="id" type="text" name="id" placeholder="ID 입력" required>
        <input style="width:80px; height:35px; text-align: center; padding-right:50px" type="button" id="btnCheck" value="중복체크 "><br>
        <span id="sameid"></span>
        
        <h4><label style="padding-right:350px">비밀번호</label></h4>
        <input type="password" id="pw" name="pw" placeholder="PW 입력" required><br>
        
        <h4><label style="padding-right:295px">비밀번호 재확인</label></h4>
        <input onchange="ispw()" type="password" id="pwcheck" name="pwcheck" placeholder="PW 재확인" required><br>
        <span id="samepw"></span>
        
        <h4><label style="padding-right:382px">성별</label></h4>
        <select name="gender">
        <option value="남자">남 자</option>
        <option value="여자">여 자</option>
        </select>
        
        <h4><label style="padding-right:382px">이름</label></h4>
        <input type="text" name="name" placeholder="이름 입력" required><br>
        
        <h4><label style="padding-right:365px">닉네임</label></h4>
        <input type="text" name="nickname" placeholder="닉네임 입력" required><br>
        
        <h4><label style="padding-right:382px">나이</label></h4>
        <input type="text" name="age" placeholder="나이 입력" required><br>
        
        <h4><label style="padding-right:350px">생년월일</label></h4>
        <input type="date" name="birthday" placeholder="생일입력" required><br>
        
        <h4><label style="padding-right:382px">주소</label></h4>      
      <input style="margin-right:16px; width:80px" type="text" name="addr1" placeholder="우편번호" readonly>
       <button style="margin-left:210px; height:40px" type="button" onclick="execPostCode();">우편번호 찾기</button>&nbsp;<br>
       <input name="addr2" placeholder="도로명 주소" readonly><br>
       <input type="text" name="addr3" placeholder="상세주소">
       
        <h4><label style="padding-right:330px">휴대폰 번호</label></h4>
        <input type="text" name="phone" placeholder="휴대폰 번호 입력(-빼고입력)" maxlength='11' required><br>
        
        <h4><label style="padding-right:365px">이메일</label></h4>
        <input type="text" name="email" placeholder="이메일 입력" required><br>
        </div>
        
<!--회원가입-->
    <div class="join">
        <input type="submit" value="가입하기">
    </div>
</form>
<%-- <%@ include file="../include/footer.jsp"%> --%>
</body>
</html>