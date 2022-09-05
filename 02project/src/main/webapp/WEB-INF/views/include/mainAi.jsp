<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

        
        <!----------------------------키즈 도서  -->
        <div id=kids dis=on>
               
	    <table>
	    <tr >
	    <td rowspan=3 style="font-size:25px; width:130px">
	    	어린이
	    </td>
	    
	    </tr>
        <Tr>
        <c:forEach items="${dtokids}" var="dtokids" begin="0" end="5" step="1" varStatus="status" >	
        <td><img src="${dtokids.img }"></td>
        </c:forEach> 		
        </Tr>
        
        <Tr>
        <c:forEach items="${dtokids}" var="dtokids" begin="0" end="5" step="1" varStatus="status" >	     
        <td >${dtokids.name }</td>
        </c:forEach>
        		
        	</Tr>
        
        </table>
    	</div>
    	
    	
    	<!--------------------------- 소설 -->
    	  <div style="display:none" id=novel dis=off>
	    <table>
	    <tr >
	    <td rowspan=3 style="font-size:25px; width:130px">
	    	소설
	    </td>
	    
	    </tr>
        <Tr>
        <c:forEach items="${dtonovel}" var="dtonovel" begin="0" end="5" step="1" varStatus="status" >	
        <td><img src="${dtonovel.img }"></td>
        </c:forEach> 		
        </Tr>
        
        <Tr>
        <c:forEach items="${dtonovel}" var="dtonovel" begin="0" end="5" step="1" varStatus="status" >	     
        <td >${dtonovel.name }</td>
        </c:forEach>
        		
        	</Tr>
        
        </table>
    	</div>
    	
    	<!---------------------자기계발  -->
    	  <div style="display:none" id=self dis=off>
	    <table>
	    <tr >
	    <td rowspan=3 style="font-size:25px; width:130px">
	    	자기계발
	    </td>
	    
	    </tr>
        <Tr>
        <c:forEach items="${dtoself}" var="dtoself" begin="0" end="5" step="1" varStatus="status" >	
        <td><img src="${dtoself.img }"></td>
        </c:forEach> 		
        </Tr>
        
        <Tr>
        <c:forEach items="${dtoself}" var="dtoself" begin="0" end="5" step="1" varStatus="status" >	     
        <td >${dtoself.name }</td>
        </c:forEach>
        		
        	</Tr>
        
        </table>
    	</div>
    	

    <script>
	    var b1=document.getElementById('prev')
	    b1.addEventListener("click",function(){
	        if(document.getElementById("kids").getAttribute("dis")=="on"){
	            document.getElementById("kids").style.display='none';
	            document.getElementById("kids").setAttribute("dis","off");
	            document.getElementById("self").setAttribute("dis","on");
	            document.getElementById("self").style.display='';
	        }else if(document.getElementById("novel").getAttribute("dis")=="on"){
	            document.getElementById("novel").style.display='none';
	            document.getElementById("novel").setAttribute("dis","off");
	            document.getElementById("kids").setAttribute("dis","on");
	            document.getElementById("kids").style.display='';
	        }else if(document.getElementById("self").getAttribute("dis")=="on"){
	            document.getElementById("self").style.display='none';
	            document.getElementById("self").setAttribute("dis","off");
	            document.getElementById("novel").setAttribute("dis","on");
	            document.getElementById("novel").style.display='';
	        }
	    })
	    
	    var b2=document.getElementById('next')
	    b2.addEventListener("click",function(){
	        if(document.getElementById("kids").getAttribute("dis")=="on"){
	            document.getElementById("kids").style.display='none';
	            document.getElementById("kids").setAttribute("dis","off");
	            document.getElementById("novel").setAttribute("dis","on");
	            document.getElementById("novel").style.display='';
	        }else if(document.getElementById("novel").getAttribute("dis")=="on"){
	            document.getElementById("novel").style.display='none';
	            document.getElementById("novel").setAttribute("dis","off");
	            document.getElementById("self").setAttribute("dis","on");
	            document.getElementById("self").style.display='';
	        }else if(document.getElementById("self").getAttribute("dis")=="on"){
	            document.getElementById("self").style.display='none';
	            document.getElementById("self").setAttribute("dis","off");
	            document.getElementById("kids").setAttribute("dis","on");
	            document.getElementById("kids").style.display='';
	        }
	    })
    
    </script>
</body>
</html>