<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <script
    src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
    integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI="
    crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script type="text/javascript" async src="https://www.google-analytics.com/analytics.js"></script>
    <script src="https://connect.facebook.net/signals/config/335210141792704?v=2.9.65&r=stable" async></script>
    <script async src="https://connect.facebook.net/en US/fbevents.js"></script>
    <script type="text/javascript" async src="https://www.googletagmanager.com/gtag/js?id=G-F7YRD0VD6J&1=dataLayer&cx=c"></script>
    <script gtm="GTM-WPXF8VR" type="text/javascript" async src="https://www.google-analytics.com/gtm/optimize.js?id=OPT-5NJ356H"></script>
    
    <link rel="stylesheet" type="text/css" href="ex/resource/csswebstyle.css">
    <link rel="stylesheet" type="text/css" href="http://image.kyobobook.co.kr/ink/css/default_ink.css">
    <link rel="stylesheet" type="text/css" href="http://image.kyobobook.co.kr/ink/css/recommend.css">
    <!---->
    <link rel="stylesheet" type="text/css" href="https://www.ypbooks.co.kr/ypbooks/css/main.css">
    <link rel="stylesheet" type="text/css" href="https://www.ypbooks.co.kr/ypbooks/css/search.css">
    <link rel="stylesheet" type="text/css" href="https://www.ypbooks.co.kr/ypbooks/css/common.css">
    <!---->
    <script type="text/javascript" src="http://www.kyobobook.co.kr/js/datastory.js"></script>
    <script async src="https://www.google-analytics.com/analytics.js"></script>
    <script async src="https://www.googletagmanager.com/gtm.js?id=GTM-WPXF8VR"></script>
    <script type="text/javascript" src="http://image.kyobobook.co.kr/ink/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript">jQuery.noConflict();</script>
    <script type="text/javascript" src="https://www.ypbooks.co.kr/ypbooks/search/Main/search.js"></script>
    <script type="text/javascript" src="https://www.ypbooks.co.kr/ypbooks/js/smCookieUtil.js"></script>
    <script type="text/javascript" src="https://www.ypbooks.co.kr/ypbooks/js/jquery.bgiframe.min.js"></script>
    <script type="text/javascript" src="https://www.ypbooks.co.kr/ypbooks/js/jquery.util.js"></script>
    <script type="text/javascript" src="https://www.ypbooks.co.kr/ypbooks/js/http_request.js"></script>
    <script>
        var x = 0;
        var y = 0;
        drag = 0;
        move = 0;
        window.document.onmousemove = mouseMove;
        window.document.onmousedown = mouseDown;
        window.document.onmouseup = mouseUp;
        window.document.ondragstart = mouseStop;
        
        function mouseUp() {
            move = 0;
        }
        
        function mouseDown() {
            if (drag) {
                clickleft = window.event.x - parseInt(dragObj.style.left);
                clicktop = window.event.y - parseInt(dragObj.style.top);
                dragObj.style.zIndex += 1;
                move = 1;
            }
        }
        function mouseMove() {
            if (move) {
                dragObj.style.left = window.event.x - clickleft;
                dragObj.style.top = window.event.y - clicktop;
            }
        }
        function mouseStop() {
            window.event.returnValue = false;
        }
        function Show(divid) {
            divid.filters.blendTrans.apply();
            divid.style.visibility = "visible";
            divid.filters.blendTrans.play();
        }
        function Hide(divid) {
            divid.filters.blendTrans.apply();
            divid.style.visibility = "hidden";
            divid.filters.blendTrans.play();
        }
        function layerInit() {
            var flag = document.cookie.indexOf("Notice=");
            if (flag != -1) {
                flag += "Notice".length + 1;
                end = document.cookie.indexOf(";", flag);
                if (end == -1) end = document.cookie.length;
                
                if (unescape(document.cookie.substring(flag, end)) == "no") {
                    document.all.Notice.style.visibility="hidden";
                } else { document.all.Notice.style.visibility="visible"; }
            
            }
        }
        function check(position) {
            if (document.all.checkbox.checked) {
                var today = new Date();
                var expire = new Date(today.getTime() + 60 * 60 * 24 * 1000);
                document.cookie = position + "Notice=" + escape("no") + "; expires=" + expire.toGMTString();
                $("#" + position + "Notice").css("visibility", "hidden");
            } else $("#" + position + "Notice").css("visibility", "hidden");
        }

        function notice_getcookie(name) {
            var nameOfcookie = name + "=";
            var x = 0;
            while (x <= document.cookie.length) {
                var y = (x + nameOfcookie.length);
                if (document.cookie.substring(x, y) == nameOfcookie) {
                    if ((endOfcookie = document.cookie.indexOf(";", y)) == -1) endOfcookie = document.cookie.length;
                    return unescape(document.cookie.substring(y, endOfcookie));
                }
                x = document.cookie.indexOf(" ", x) + 1;
                if (x == 0) break;
            }
            return "";
        }
         
        function popupView(req_obj) {
            var multiPopupJson = JSON.parse(req_obj);
            
            if(multiPopupJson != null) {
                var popleft		= 0; 
                var poptop		= 0; 
                for (var i = 0; i < multiPopupJson.length; i++) {
                    
                    var cookietemp	= document.cookie;
                    var dayview		= 0;
                    var	pop_id		= multiPopupJson[i].pop_id; 
                    var	pop_title	= multiPopupJson[i].pop_title;  
                    var	exh_div		= ""; 
                    var	start_date	= ""; 
                    var	end_date	= "";  
                    var	content		= multiPopupJson[i].content; 
                    var	pop_from	= multiPopupJson[i].pop_from;  
                    var	img_name	= ""; 
                    var	img_course	= ""; 
                    var	img_width	= multiPopupJson[i].img_width; 
                    var	img_height	= multiPopupJson[i].img_height; 
                    var	link_url	= multiPopupJson[i].link_url; 
                    var img 		= multiPopupJson[i].img;
                    
                    while (true) {
                        if (cookietemp.indexOf("######") != -1) {
                            cookietemp = cookietemp.substring(cookietemp.indexOf("######") + 6);
                            var cookiepopid = cookietemp.substring(0, cookietemp.indexOf("="));
                            if (("lpupop") == cookiepopid) {
                                dayview = 1;
                                break;
                            }
                        } else {break;}
                    }
                    if (dayview == 1) break;
                    if (dayview == 0) {
                        var popupposition = "left=" + popleft + ",top=" + poptop + ",";
                        popleft += (parseInt(img_width) + 15);
                        if (popleft > 1024) {
                            popleft = 0;
                            poptop += 100;
                        }
                        document.popviewForm.pcd.value		= pop_id;
                        document.popviewForm.type.value		= pop_from;
                        document.popviewForm.title.value	= pop_title;
                        document.popviewForm.content.value	= content;
                        document.popviewForm.img.value		= img;
                        document.popviewForm.imgw.value		= img_width;
                        document.popviewForm.imgh.value		= img_height;
                        document.popviewForm.link.value		= link_url;
                        
                        var IMG_HEADER = "https://img.ypbooks.co.kr";
                        var add_popup = "";
                        add_popup += '<div id="poplayer" class="poplayer" style="background-color:#dfdfdf; padding-left: 5px;padding-top: 5px; width:321px; border:1px solid #ccc">';
                        add_popup += '<div id="pop" style="width:315px; height:315px">';
                        if(link_url.indexOf('.html') != -1){
                            add_popup += '<iframe name="type5" id="type5" src="/upload/HTML/popup/'+ link_url +'" style="width:327px; height:327px; border:none;"></iframe>';
                        } else {
                            if(link_url != "") {
                                add_popup += '<a href="' + link_url + '" target="_blank" style="display: block; width: 314px; margin: 8px auto; text-align: center;">';
                                add_popup += '<img src="'+IMG_HEADER + img + '" alt="' + pop_title + '" style="width:300px; height:300px;">';
                                add_popup += '</a>';
                            } else {
                                add_popup += '<img src="'+IMG_HEADER + img + '" alt="' + pop_title + '" style="display: block; margin: 8px auto; text-align: center; width:300px; height:300px;">';
                            }
                        }
                        add_popup += '</div>';
                        add_popup += '<div style="text-align:right; padding:0 5px 5px 0">';
                        add_popup += '<input id="lpu" type="checkbox" name="checkbox" value="checkbox" onclick="javascript:setCookie(this.id);" />';
                        add_popup += '&nbsp;<span style="display: inline-block; color:#000; font-size:12px;">?????? ?????? ??? ?????? ?????? ??????</span>&nbsp;'; 
                        add_popup += '<span style="display: inline-block; border: 1px solid #000; width: 14px; height: 14px; line-height: 14px; text-align: center; color: #000; margin-left: 4px; cursor: pointer;" onclick="layerHide();">X</span>';
                        add_popup += '</div>';
                        add_popup += "</div>"
                        $("#popup_layer").append(add_popup);
                        
                        var random = Math.floor(Math.random() * $('.poplayer').length);
                        $('.poplayer').hide().eq(random).show();
                    }
                } 
                if($('.poplayer').length == 0) {
                    layerHide();
                } 
            }
        }
        
        function layerHide(){
            $("#popup_layer").hide();
        }
        
        function setCookie(pop_id){ 
            var todayDate = new Date(); 
            var pcd = pop_id;
            todayDate.setDate(todayDate.getDate() + 1); 
            document.cookie = "######"+ pcd + "pop=" + escape("1") + "; path=/; expires=" + todayDate.toGMTString() + ";" 
        
            $('#popup_layer').hide();
        }

        var interval;
        var intervaltime = 3000;
        function goTodayBookPrev() {
            var tot = 3;
            var idx = $("input[name=todayListIdx]").val() - 1;
            idx = idx < 0 ? tot : idx;
            $("div[id^=\"divTodayBook_\"]").hide();
            $("#divTodayBook_" + idx).show();
            $("input[name=todayListIdx]").val(idx);
            clearInterval(interval);
            interval = setInterval("goTodayBookNext()", intervaltime);
        }
        function goTodayBookNext() {
            var tot = 3;
            var idx = Number($("input[name=todayListIdx]").val()) + 1;
            idx = idx > tot ? 0 : idx;
            $("div[id^=\"divTodayBook_\"]").hide();
            $("#divTodayBook_" + idx).show();
            $("input[name=todayListIdx]").val(idx);
            clearInterval(interval);
            interval = setInterval("goTodayBookNext()", intervaltime);
        }
        
        var bookInfo = null;
        var bookList = new Array(["", readCookie("bookCate")], ["", ""], ["", ""], ["", ""], ["", ""], ["", ""], ["", ""], ["", ""]);
        function showLoadingImg() { // loading image ?????????
            $("#bookList").html("");
            $("#bookList").append("<img src=\"https://img.ypbooks.co.kr/ypbooks/images/ajax_loding.gif\" style=\"width:100px;height:100px;margin:0px;top:70px;left:420px;overflow:hidden;position:absolute;z-index:900;\" />");
            $(".overView").hide();
        }
        
        function fShoppingCart(bookcode) {
            frmAction.Goods_cd.value = bookcode;
            frmAction.action = "/cart.yp";
            frmAction.submit();
        }
        
        var intervalAdvert;
        var intervalAdverttime = 3000;
        function showHideAdvert(pn) {
            var tot = "0" - 1;
            var idx = 0;
            $("[id^=\"ad_\"]").each(function(i) {
                if ($(this).css("display") != "none") {
                    $(this).hide();
                    idx = i;
                }
            });
            if (pn == "prev") {
                $("#ad_" + (idx > 0 ? idx - 1 : tot)).show();
            } else {
                $("#ad_" + (idx < tot ? idx + 1 : 0)).show();
            }
            clearInterval(intervalAdvert);
            intervalAdvert = setInterval("showHideAdvert(\"next\")", intervalAdverttime);
        }
        
        function YPBookView(pn) {
            var tot = 4;
            var idx = $("input[name=ypRecommandIdx]").val();
            if (pn == "next") {
                idx++;
                if (idx > tot) idx = 1;
            } else if (pn == "prev") {
                idx--;
                if (idx < 1) idx = tot;
            } else {
                idx = pn;
            }
            $(".commFrame").hide();
            $(".commFrame").eq(idx - 1).show();
            $(".commList ul").show();
            $(".commList ul").eq(idx - 1).hide();
            $("input[name=ypRecommandIdx]").val(idx);
        }
        
        function fNext(theme_id, theme_nm, theme_joname, banner_path) {
            FrmNextAction.theme_id.value	= theme_id;
            FrmNextAction.theme_nm.value	= theme_nm;
            FrmNextAction.theme_joname.value= theme_joname;
            FrmNextAction.banner_path.value = banner_path;
            FrmNextAction.submit();
        }
        
        function viewCateTab(cate) {
            $("div[id^=\"mainCateDet\"]").hide();
            $("#mainCateDet" + cate).show();
            $("img[id^=\"bestSenTab\"]").each(function(i) {
                $(this).attr("src", $(this).attr("src").replace("on", ""));
            });
            $("#bestSenTab" + cate).attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/recommend_tab0" + cate + "on.gif");
        }
        
        function showHideSimp(divId) {
            if (divId == "media") {
                $("#sympathyMedia").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/sympathy_tab01on.gif");
                $("#sympathyOld").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/sympathy_tab02.gif");
                $("#oldBest").hide();
                $("#divMediaRecomm").show();
            } else if (divId == "oldBest") {
                $("#sympathyOld").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/sympathy_tab02on.gif");
                $("#sympathyMedia").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/sympathy_tab01.gif");
                $("#divMediaRecomm").hide();
                $("#oldBest").show();
            }
        }
        
        
        function newsHref() { 
            if (Ztemp == 1) {
                document.location.href = "/customer_center.yp?targetpage=notice_list";
            } else if (Ztemp == 2) {
                document.location.href = "/culture_event.yp";
            } else if (Ztemp == 3) {
                document.location.href = "/event_list.yp?targetpage=branch_view";
            }
        }
        function imgChange() { 
            if (Ztemp == 1) {
                $("#newsImg").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/common/tit_ypnews.gif");
            } else if (Ztemp == 2) {
                $("#newsImg").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/common/tit_ypnews1.gif");
            } else if (Ztemp == 3) {
                $("#newsImg").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/common/tit_ypnews2.gif");
            }
        }
        
        var check_rightBanner = true;
        function visible_rightBanner() {
            var speed = 150;
            if (check_rightBanner) {	
                check_rightBanner = false;
                $("#rightBanner").animate({
                    right:"-=160px"
                }, speed);
                
                $("#arrow_rightBan").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/rightBan_on.png");
                $("#arrow_rightBan").attr("alt", "??????");
            } else {					
                check_rightBanner = true;
                $("#rightBanner").animate({
                    right:"+=160px"
                }, speed);
                
                $("#arrow_rightBan").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/rightBan_off.png");
                $("#arrow_rightBan").attr("alt", "??????");
            }
        }
        
        var check_leftBanner = true;
        function visible_leftBanner() {
            var speed = 150;
            if (check_leftBanner) {	
                check_leftBanner = false;
                $("#leftBanner").animate({
                    left:"-=160px"
                }, speed);
                
                $("#arrow_leftBan").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/leftBan_on.png");
                $("#arrow_leftBan").attr("alt", "??????");
            } else {					
                check_leftBanner = true;
                $("#leftBanner").animate({
                    left:"+=160px"
                }, speed);
                
                $("#arrow_leftBan").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/main/leftBan_off.png");
                $("#arrow_leftBan").attr("alt", "??????");
            }
        }
         
        $(document).ready(function() {
            layerInit();
            
            clearInterval(interval);
            interval = setInterval("goTodayBookNext()", intervaltime);
            $(".today").hover(function() {
                clearInterval(interval);
                $(".todayNav").stop(true, true);
                $(".todayNav").show();//fadeIn(250);
            }, function() {
                clearInterval(interval);
                interval = setInterval("goTodayBookNext()", intervaltime);
                $(".todayNav").delay(250).fadeOut(250);
            });
            $("#goTodayBookPrev").click(function() {
                goTodayBookPrev();
            });
            $("#goTodayBookNext").click(function() {
                goTodayBookNext();
            });
            
            var irandom = 0;
                                
            $("#ban_img" + irandom).attr("src", "https://img.ypbooks.co.kr/ypbooks/images/btn/mbtn0" + (irandom + 1) + "on.gif");
            $("#divBn_" + irandom).show();
        
            $("img[id^=\"ban_img\"]").hover(function() {
                var nowis = Number($(this).attr("id").replace("ban_img", ""));
                $("img[id^=\"ban_img\"]").each(function(i) {
                    $(this).attr("src", "https://img.ypbooks.co.kr/ypbooks/images/btn/mbtn0" + (i + 1) + ".gif");
                });
                $(this).attr("src", "https://img.ypbooks.co.kr/ypbooks/images/btn/mbtn0" + (nowis + 1) + "on.gif");
                $("div[id^=\"divBn_\"]").hide();
                $("#divBn_" + nowis).show();
            });
        
            var myFavor = readCookie("bookCate");
            if (myFavor != "") {
                var chkVal = myFavor.split(",");
                $("input[name=\"bookCate\"]").each(function(i) {
                    for (var ii = 0; ii < chkVal.length; ii++) {
                        if ($(this).val() == chkVal[ii]) $(this).attr("checked", true);
                    }
                });
            }
            
            $("li[id^=\"overimg0\"]").hide();
            
            $("#view1").click(function() {
                if (!/simpleView.gif/.test($("#view1").attr("src"))) {
                    $("#view1").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/btn/simpleView.gif");
                    $("#reply1").css("height", "0px");
                    $("#reply1").show();
                    $("#reply1").animate({height:"150px"}, "fast");
                } else {
                    $("#view1").attr("src", "https://img.ypbooks.co.kr/ypbooks/images/btn/openView.gif");
                    $("#reply1").hide();
                }
            });
        
            clearInterval(intervalAdvert);
            intervalAdvert = setInterval("showHideAdvert(\"next\")", intervalAdverttime);
            $("#showHideAdvertPrev").click(function() {
                showHideAdvert("prev");
            });
            $("#showHideAdvertNext").click(function() {
                showHideAdvert("next");
            });
        
            $(".themeSwitch").click(function() {
                if ($("#themeBox_1").css("display") != "none") {
                    $("#themeBox_1").hide();
                    $("#themeBox_2").show();
                } else {
                    $("#themeBox_1").show();
                    $("#themeBox_2").hide();
                }
            });
        
            $(".weekSwitch").click(function() {
                $(".week_box").each(function(wb){
                    $(".week_box").eq(wb).css("display", $(".week_box").eq(wb).css("display") != "none" ? "none" : "block");
                });
            });
        
            var recomm_interval;
            var recomm_intervaltime = 3000;
            clearInterval(recomm_interval);
            recomm_interval = setInterval("YPBookView('next')", recomm_intervaltime);
            $(".commBook").hover(function() {
                $(".commBookNav").stop(true, true);
                $(".commBookNav").show();
            }, function() {
                $(".commBookNav").delay(250).fadeOut(250);
            });
            $("#commBookPrev").click(function() {
                YPBookView("prev");
            });
            $("#commBookNext").click(function() {
                YPBookView("next");
            });
        
            $('.bookTab li a').on('click', function(){
                var eI = $(this).parent('li').index();
            
                $('.bl_wp .bl_tc').hide().eq(eI).show();
                
                if( !$(this).hasClass('on') ){
                    $('.bookTab li a').removeClass('on');
                    $(this).addClass('on');
                }
                else {
                    $('.bookTab li a').removeClass('on');
                }
            });
            
            $('.bookList li strong').each(function(){
                var btNum = 24; 
                var btLeng = $(this).text().length;
                $(this).each(function(){
                    if(btLeng >= btNum){ 
                        $(this).text( $(this).text().substr(0,btNum)+'...');
                    } 
                });
            });
            
        });
        
        $(window).ready(function() {
            popupView('[{"img":"\/upload\/HTML\/popup\/images\/popup_220701_02.jpg","img_width":"0","pop_id":"530","pop_title":"?????? ?????? ???????????? ?????? ?????? ?????? 1","img_height":"0","pop_from":"4","link_url":"\/book.yp?bookcd=101180549","content":""},{"img":"\/upload\/HTML\/popup\/images\/popup_220701_01.jpg","img_width":"300","pop_id":"529","pop_title":"?????????????????????","img_height":"300","pop_from":"4","link_url":"\/book.yp?bookcd=101177520","content":""}]');
        });
    </script>
    <link rel="stylesheet" href="/ex/resources/css/webstyle.css" type="text/css"/>
    <style>
        .header-container {
            display: flex;
            width: 1000px;
            height: 100px;
            margin: 0 auto;
            background-color: #000;
        }
        #wrap {
            width: 100%;
            height: 1000px;
        }
        #header-wrap {
            width: 100%;
        }
        #banner-wrap {
            width: 100%;
        }
        #content-wrap {
            width: 100%;
        }
        #footer-wrap{
            width: 100%;
        }
        #bannerTop {
            margin: auto;
            justify-content: center;
            height: 80px;
            background-color: white(33, 33, 33, 0.813);
            /* border-left: 1px solid black; */
            
        }

        #bannerTopLeft {
            width: 24%;
            margin-left: 18%;
            float: left;
            position: relative;
            white-space: nowrap;
        }

        #bannerTopRight {
            float: right;
            margin-top: 1%;
            margin-right: 18%;
            white-space: nowrap;
        }


        #bannerTop .topLeft {
            color: black;
            font-size: 13px;
            text-decoration-line: none;
            vertical-align: middle;
            justify-content: center;
            display: inline;
        }

        #bannerTop .topRight {
            color: black;
            font-size: 6px;
            text-decoration-line: none;
            vertical-align: middle;
            margin: 7px;
            justify-content: center;
            display: inline-block;



        }
        #topTextLeft {
            margin-top: 13px;
        }

        /* ai?????? */
        #ai {
            height: 75px;
            width: 95px;
            float: left;
            margin-left: 5px;

        }
        #bannerMid {
            width: 100%;
            height: 65px;
        }
        /*dropdown ??????css*/
        .navbar button {

            border: none;
            color: black;
            font-size: 15px;
            float: left;
            margin: auto;
            justify-content: center;
            -webkit-box-shadow: 0 0 0 1000px white inset;
        }
        #dropdown a {
            margin: auto;
            background-color: none;
        }
        .navbar button:hover {
            border: none;
            cursor:auto;

        }
        .linkContents:hover {
            border: none;
            cursor: pointer;
        }
        #dropdown {
            display: flex;
            width: 65%;
            height: 100%;
            text-decoration: none;
            justify-content: center;
            margin-left: 18%;
            position: relative;
            text-align: center;

        }
        .dropbtn {
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
        }
        a:link {
            color: black;
        }
        a:visited {
            color: black;
        }
        #dropdown a {
            text-decoration: none;
        }
        #dropdown:hover #dropDownMenu {
            display: block;
        }
        #dropDownMenu {
            width: 100%;
            height: 300px;
            background-color: rgb(222, 222, 222);
            margin-top: 64px;
            display: none; /*???????????????flex ??????none*/
            justify-content: center;
            text-align: center;
            position: absolute;
            z-index: 101;
            text-decoration: none;
        }
        .dorpDownContents {
            width: 18%; /*???????????? ?????? ??????*/
            height: 270px;
            color: black;
            /* padding: 16px ; */
            margin: auto;
            padding: auto;
            text-decoration: none;
            display: block;
            position:relative;
            float: left;
            border-right: 1px solid rgba(0, 0, 0, 0.185);
            margin-left: 2%;
            margin-top: 10px
        }

        .linkContents {
            font-size: 12px;
            margin-left: 60px;
            text-decoration: none;
            color: black;

        }

        .linkContents4 {
            font-size: 12px;
            margin-left: 60px;
            text-decoration: none;
            color: black;

        }
        .linkContents5 {
            font-size: 12px;
            margin-left: 60px;
            text-decoration: none;
            color: black;

        }   
        .recomm_today {
            width: 868px;
        }
        .recomm_today > .btn_more {
            right: 50px;
        }
        .recomm_today > .detail {
            margin-top: 10px;
            margin-left: 110px;
        }
        DIV.mainBookBox {
            width: 1000px;
            padding-top: 0px;
            overflow: hidden;
            position: relative;
            text-align: center;
            background-size: 100% 100%; 
        }
    </style>
</head>
<body>
    <div id="wrap">
        <!--bannerMid(????????????)-->
        <div id="content-wrap">
            <div class="content-container">
                <div class="slideshow-container">
                    <div class="mySlides fade">
                        <div class="main_box_01">
                            <div class="recomm_today">
                                <h3 class="title_recomm_main">????????? ????????????</h3>
                                <div class="cover">
                                    <a href="Introduction/submain/internet.html"><img src="http://image.kyobobook.co.kr/images/book/large/691/l9788954680691.jpg" alt="????????? ?????????"></a>
                                </div>
                                <div class="detail">
                                    <div class="title">
                                        <a href="Introduction/submain/internet.html">????????? ?????????</a>
                                    </div>
                                    <div class="author">
                                        "?????????"
                                        <span class="line">|</span>
                                        "????????????"
                                    </div>
                                    <div class="info">
                                        ???????????? ????????? ????????? ???????????? ????????? ?????? ?????? ???????????? ???????????? <br>???????????? ???????????? ?????? ???????????? ???????????? ?????????
                                        '????????? ?????????'??? <br>???????????????. ?????? ?????? ?????? ?????? ?????? ???????????? ?????? ??????????????? ????????? <br>????????????, 2016??? ????????? 2020???
                                        ???????????? ?????? ?????? ?????? ????????? ?????? <br>?????? ???????????? ??????????????? ????????? ????????? ??????????????? ??????.
                                    </div>
                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                                </div>
                                <div class="btn_more">
                                    <a href="redirect:/recomm/children">
                                        <img src="http://image.kyobobook.co.kr/ink/images/common/btn_more02.gif" alt="?????????">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mySlides fade">
                        <div class="main_box_01">
                            <div class="recomm_today">
                                <h3 class="title_recomm_main">????????? ????????????</h3>
                                <div class="cover">
                                    <a href="Introduction/submain/city.html"><img src="http://image.kyobobook.co.kr/images/book/large/914/l9788954699914.jpg" alt="?????????"></a>
                                </div>
                                <div class="detail">
                                    <div class="title">
                                        <a href="Introduction/submain/city.html">?????????</a>
                                    </div>
                                    <div class="author">
                                        "??????"
                                        <span class="line">|</span>
                                        "????????????"
                                    </div>
                                    <div class="info">
                                        ?????? ?????? ????????? ???????????? ??????????????? ????????? ????????? ?????? ????????????<br> '?????????'??? ???????????????.
                                        '?????????'??? ????????? ????????? ???????????? ?????? ??????<br> ???????????? ???????????? ????????? ????????????
                                        ????????? ???????????? ?????? ???????????? ????????? ?????? ????????? ?????? '?????? ?????????'??? ?????? ????????????
                                        ???????????? ????????? ?????? ?????? ????????? ??? ???????????? ????????? ????????? ?????????.
                                    </div>                                
                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                                </div>
                                <div class="btn_more">
                                    <a href="slide/media.html">
                                        <img src="http://image.kyobobook.co.kr/ink/images/common/btn_more02.gif" alt="?????????">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mySlides fade">
                        <div class="main_box_01">
                            <div class="recomm_today">
                                <h3 class="title_recomm_main">???????????? ????????????</h3>
                                <div class="cover">
                                    <a href="Introduction/submain/world.html"><img src="http://image.kyobobook.co.kr/images/book/large/918/l9791160946918.jpg" alt="??????????????? ??????"></a>
                                </div>
                                <div class="detail">
                                    <div class="title">
                                        <a href="Introduction/submain/world.html">??????????????? ??????</a>
                                    </div>
                                    <div class="author">
                                        "?????????"
                                        <span class="line">|</span>
                                        "?????????"
                                    </div>
                                    <div class="info">
                                        10??? ?????? ???????????? ???????????? ?????????, ????????? ?????????????????? ??????????????? <br>?????? ?????? ????????????
                                        ???????????? ????????? ??? ??? ????????? ?????? ?????? ???????????? <br>?????? ?????? ???????????? ?????????. ??? ????????? ????????????
                                        ??????????????? ????????? ?????????, <br>?????? ?????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ????????????.
                                    </div>                                    
                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                                </div>
                                <div class="btn_more">
                                    <a href="slide/Children.html">
                                        <img src="http://image.kyobobook.co.kr/ink/images/common/btn_more02.gif" alt="?????????">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    var t = document.querySelector('body');
                    var mb_w = document.querySelector('.modal_box_wrap');
                    if(t.addEventListener){
                        t.addEventListener('click', function(e){
                            e.target === mb_w ? mb_w.style.display = "none" : false;
                        }); 
                    } else if(t.attachEvent){
                        t.attachEvent('onclick', function(e){
                            e.target === mb_w ? mb_w.style.display = "none" : false;
                        })
                    }
                </script>
                <script>
                    function inputReset(){
                        var inputval = document.getElementById("t_query");
                        inputval.value = null;
                    }
                </script>
                <div class="mainBookBox">
                    <div class="bt_wp">
                        <ul class="bookTab" id="viewLayer">
                            <li>
                                <a href="javascript:;" id="imgMain01" class="on">????????? ????????????</a>
                            </li>
                            <li>
                                <a href="javascript:;" id="imgMain02">????????? ?????????</a>
                            </li>
                            <li>
                                <a href="javascript:;" id="imgMain03">???????????? ????????????</a>
                            </li>
                            <li>
                                <a href="javascript:;" id="imgMain04">?????????/????????? ????????????</a>
                            </li>
                        </ul>
                    </div>
                    <div class="bl_wp">
                        <div class="bl_tc" style="display: block;">
                            <ul class="bookList">
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/523/l9791170400523.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>???????????? ????????? ??????</strong><br>
                                            <span>?????????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/632/l9788925599632.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ??????</strong><br>
                                            <span>?????? ???????????????,?????? ?????????|?????????????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/452/l9791164136452.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>??????????????? ??????</strong><br>
                                            <span>????????? ??????|???????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/427/101184427.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ??????</strong><br>
                                            <span>?????? ??????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/041/101185041.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>??????</strong><br>
                                            <span>?????????|??????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/781/101184781.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ??????????????? ???????????????</strong><br>
                                            <span>?????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/730/101185730.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>???????????? 11</strong><br>
                                            <span>?????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/265/101180265.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ?????? ??????2</strong><br>
                                            <span>?????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="bl_tc" style="display: none;">
                            <ul class="bookList">
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/474/101179474.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ?????? ?????? ?????? ?????? ??????</strong><br>
                                            <span>?????????|???????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/776/101180776.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>??????????????? ????????????2</strong><br>
                                            <span>?????????|??????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/088/101178088.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ?????? ?????? ????????? ????????????</strong><br>
                                            <span>?????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/382/101181382.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ???(????????? ?????? ?????????8)</strong><br>
                                            <span>????????????,????????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/273/101186273.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>???????????? ?????????</strong><br>
                                            <span>??????????????????|?????????????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/700/101182700.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ????????? ????????? ??????</strong><br>
                                            <span>?????????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/682/101180682.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ??????????????? ??????</strong><br>
                                            <span>????????????|???????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="https://img.ypbooks.co.kr/upload/img/book/409/101184409.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? - ?????? ?????? ??????</strong><br>
                                            <span>????????????|??????????????????</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="bl_tc" style="display: none;">
                            <ul class="bookList">
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/618/l9788972917618.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ????????? ?????? ??????</strong><br>
                                            <span>????????? ?????????|??????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/661/l9791190977661.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????????????????? ????????????</strong><br>
                                            <span>?????????|?????????2??????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/054/l9788935213054.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ????????? ???</strong><br>
                                            <span>?????? ?????????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/159/l9791187135159.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ???????????? ???????????????</strong><br>
                                            <span>?????????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/385/l9788947527385.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ??????</strong><br>
                                            <span>?????? ????????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/673/l9788937832673.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ??????</strong><br>
                                            <span>????????? ??????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/518/l9791197210518.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>???????????? ????????????</strong><br>
                                            <span>?????????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/751/l9791188260751.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>EBS ?????? ???Q</strong><br>
                                            <span>EBS|??????</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="bl_tc" style="display: none;">
                            <ul class="bookList">
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/280/l9791167370280.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ??????</strong><br>
                                            <span>?????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/493/l9788949123493.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????????</strong><br>
                                            <span>?????????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/755/l9791190337755.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ?????? ??????</strong><br>
                                            <span>?????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/002/l9788972970002.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>??????, ????????? ?????????????</strong><br>
                                            <span>?????????|??????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/008/l9788932039008.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>???????????? ?????? ?????? ??????</strong><br>
                                            <span>????????? ?????????|??????????????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/273/l9788977779273.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>????????? ????????????</strong><br>
                                            <span>?????????|??????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/710/l9791160946710.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>?????? ??????</strong><br>
                                            <span>????????? ??????|?????????</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="http://image.kyobobook.co.kr/images/book/large/132/l9791190105132.jpg" width="90" height="128">
                                        <div class="text_wp">
                                            <strong>???????????? ??????</strong><br>
                                            <span>?????????|????????????</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-wrap">
            <div class="footer-container">

            </div>
        </div>
    </div>
    <script type="text/javascript">

    </script>
    <script>
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
            if (n > slides.length) {slideIndex = 1}    
            if (n < 1) {slideIndex = slides.length}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";  
            dots[slideIndex-1].className += " active";
        }
    </script>
</body>
</html>