<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="../../webstyle.css">
    <link rel="stylesheet" type="text/css" href="http://image.kyobobook.co.kr/ink/css/default_ink.css">
    <link rel="stylesheet" type="text/css" href="http://image.kyobobook.co.kr/ink/css/recommend.css">
    <!-- css01 -->
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/css/slick.css" onload="this.media='all';" media="all">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/css/jquery.scrollbar.css" onload="this.media='all';" media="all">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/css/jquery.bxslider.min.css" onload="this.media='all';" media="all">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/css/datepicker.css" onload="this.media='all';" media="all">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/css/asRange.css" onload="this.media='all';" media="all">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/css/datepicker.css" onload="this.media='all';" media="all">
    <!-- /css정리 -->
    <!-- css02 -->
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/css/loading-spiner.css">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/common/jquery_plugin/validation/validator.css">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/templete/nl/common/common.css">
    <link rel="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/templete/nl/css/import.css">
    <!-- /css정리 -->
    <style>
        .uccst14_detail_wrap {
            width: 1000px;
            margin: 0 auto;
        }
        .subtitle_wrap {
            width: 1000px;
            margin: -12.1px
        }
        .sub_box_top01 > .detail {
            margin-top: 30px;
            margin-left: 100px;
        }
        .sub_box_list01 > ul > li > .detail {
            margin-top: 30px;
            margin-left: 100px;
        }
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
        .nav {
            display: flex;
            text-align: center;
        }
        .nav > li {
            font-size: 16px;
            margin-left: 86px;
            margin-top: 16px;
            text-align: center;
        }
        .header-container > img {
            height: 100px;
        }
        h1 {
            font-size: 25px;
            margin-top: 35px;
            margin-left: 20px;
            color: #fff;
        }
        .login {
            font-size: 15px;
            margin-top: 40px;
            margin-left: 450px;
        }
        .login a {
            font-size: 18px;
            color: #fff;
            margin-right: 20px;
        }
    </style>
    <style>
        /* 구매자분포,평점분포 190404 */
        .Ere_prod_graphwrap {margin:0 auto; padding:40px 0; background:#f9f9f9;}
        .Ere_prod_graphwrap .graph_box {width:800px; margin:0 auto; padding:0; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#333; }
        .Ere_prod_graphwrap .graph_box .buyer_area { margin:0; padding:0 0 40px 0; overflow:hidden; border-bottom:1px dotted #ccc;}
        .Ere_prod_graphwrap .graph_box .star_area {  margin:0; padding:50px 0 0 0 ;}


        /* 구매자분포 */
        .buyer_area .buyer_box { margin:0; padding:0; }
        .buyer_area .buyer_box .anay_title { float:left; margin:70px 0 0 0 ; padding:0; width:20%;}
        .buyer_area .buyer_box .anay_Tround {margin:0; background-color:#ffd6ec; width: 100px; height:70px; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; text-align: center; padding-top:30px; font-size:16px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#111; font-weight:bold; line-height:1.4;}
        .buyer_area .buyer_box .anay_conts { float:left; margin:0; padding:0 0 0 2%;  width:78%; font-size:13px; }
        .buyer_area .buyer_box .anay_conts .analysis { float:left; width:100%; padding:0;}

        /* 구매자분포 그래프 */
        .buyer_area .buyer_box .analysis_box { margin:0; padding:0;}
        .buyer_area .buyer_box .analysis_box .tb_woman {text-align:right; padding:8px 0; width:45%; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif;}
        .buyer_area .buyer_box .analysis_box .tb_woman .bar {float:right; }
        .buyer_area .buyer_box .analysis_box .tb_woman .bar img {width:100%; height:20px;}
        .buyer_area .buyer_box .analysis_box .tb_woman .per {float:right; padding-right:10px; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; font-style:italic; color:#000; letter-spacing:-0.05em; }

        .buyer_area .buyer_box .analysis_box .tb_tit {text-align:center; width:10%; padding:3px 0 5px 0; font-size:15px;  font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#333; font-weight:600;}

        .buyer_area .buyer_box .analysis_box .tb_man {text-align:left; padding:8px 0;  width:45%; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; }
        .buyer_area .buyer_box .analysis_box .tb_man .bar {float:left;}
        .buyer_area .buyer_box .analysis_box .tb_man .bar img {width:100%; height:20px;}
        .buyer_area .buyer_box .analysis_box .tb_man .per {float:left; padding-left:10px; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; font-style:italic; color:#000;  letter-spacing:-0.05em;}


        /*평점 분포*/
        .star_area .star_box { margin:0; padding:0; } 
        .star_area .star_box .anay_title { float:left; margin:70px 0 0 0 ; padding:0; width:23%; }
        .star_area .star_box .anay_Tround {margin:0; background-color: #ffd6ec;width: 100px; height:70px; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; text-align: center; padding-top:30px; font-size:16px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#111; font-weight:bold; line-height:1.4;}

        .star_area .star_box .star_list { float:right; margin:0; padding:0 0 0 2%; width:75%; font-size:13px;}
        .star_area .star_box .star_list .tb_left {text-align:left; width:110px; padding:6px 0;}
        .star_area .star_box .star_list .tb_right {text-align:left; padding:6px 0;}
        .star_area .star_box .star_list .tb_right .bar { float:left;}
        .star_area .star_box .star_list .tb_right .bar img { width:100%; height:20px;}
        .star_area .star_box .star_list .tb_right .per { float:left; font-size:14px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; font-style:italic; color:#111; padding-left:5px; }

        .score_box { margin:0 0 15px 0; padding:0 ;} 
        .score_box .star { margin:0; padding:0; float:left;} 
        .score_box .num { float:left; padding:7px 0 0 15px; color:#ef3b96; font-weight:bold; font-size:34px;} 


        /* 구매자분포,평점분포_3 190422 */
        .Ere_prod_graphwrap_a {margin:0 auto; padding:40px 0; background:#f9f9f9;}
        .Ere_prod_graphwrap_a .graph_box { width:800px; margin:0 auto; padding:0; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#333; }
        .Ere_prod_graphwrap_a .graph_box .buyer_area_a {width:800px; margin:0; padding:0 0 40px 0; overflow:hidden; border-bottom:1px dotted #ccc; }
        .Ere_prod_graphwrap_a .graph_box .star_area_a {width:800px;  margin:0; padding:50px 0 0 0 ; }

        /* 구매자분포 */
        .buyer_area_a .buyer_box { margin:0; padding:0; }
        .buyer_area_a .buyer_box .anay_title { float:left; margin:70px 0 0 50px ; padding:0; width:20%;}
        .buyer_area_a .buyer_box .anay_Tround_S {margin:0; background-color:#e5e5e5; width: 100px; height:70px; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; text-align: center; padding-top:30px;  font-size:16px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#111; font-weight:bold; line-height:1.4;}
        .buyer_area_a .buyer_box .anay_Tround_L { display:none;}


        .buyer_area_a .buyer_box .anay_conts { float:left; margin:0; padding:0 0 0 0px;  width:519px; font-size:13px; }
        .buyer_area_a .buyer_box .anay_conts .analysis { float:left; width:100%; padding:0;}

        /* 구매자분포 그래프 */
        .buyer_area_a .buyer_box .analysis_box { margin:0; padding:0;}
        .buyer_area_a .buyer_box .analysis_box .tb_woman {background:url(//image.aladin.co.kr/img/shop/2018/analysis_box_bg1.png) repeat-x 0 0; text-align:right; padding:8px 0; width:45%; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif;}
        .buyer_area_a .buyer_box .analysis_box .tb_woman_last { text-align:right; padding:8px 0; width:45%; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif;}

        .buyer_area_a .buyer_box .analysis_box .tb_woman .bar {float:right; }
        .buyer_area_a .buyer_box .analysis_box .tb_woman .bar img {width:100%; height:20px;}
        .buyer_area_a .buyer_box .analysis_box .tb_woman .per { background:#f9f9f9; padding-bottom:2px; width:18%; float:left; padding-right:5px; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; font-style:italic; color:#000; letter-spacing:-0.05em; }

        .buyer_area_a .buyer_box .analysis_box .tb_tit {text-align:center; width:10%; padding:3px 0 5px 0; font-size:15px;  font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#333; font-weight:600;letter-spacing:-0.05em;}

        .buyer_area_a .buyer_box .analysis_box .tb_man {background:url(//image.aladin.co.kr/img/shop/2018/analysis_box_bg1.png) repeat-x 0 0; text-align:left; padding:8px 0;  width:45%; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; }
        .buyer_area_a .buyer_box .analysis_box .tb_man_last { text-align:left; padding:8px 0;  width:45%; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; }
        .buyer_area_a .buyer_box .analysis_box .tb_man .bar {float:left;}
        .buyer_area_a .buyer_box .analysis_box .tb_man .bar img {width:100%; height:20px;}
        .buyer_area_a .buyer_box .analysis_box .tb_man .per {background:#f9f9f9; padding-bottom:2px; width:18%; float:right; padding-left:5px; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; font-style:italic; color:#000;  letter-spacing:-0.05em; text-align:right;}


        /*평점 분포*/
        .star_area_a .star_box { margin:0; padding:0;  } 
        .star_area_a .star_box .anay_title { float:left; margin:70px 0 0 50px ; padding:0; width:20%; }
        .star_area_a .star_box .anay_Tround_S {margin:0; background-color: #e5e5e5;width: 100px; height:70px; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; text-align: center; padding-top:30px; font-size:16px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#111; font-weight:bold; line-height:1.4;}
        .star_area_a .star_box .anay_Tround_L { display:none;}

        .star_area_a .star_box .anay_conts { float:left; margin:0; padding:0 0 0 10px; width:520px; font-size:13px;}
        .star_area_a .star_box .anay_conts .analysis {width:100%; padding:0;}

        .star_area_a .star_box .analysis_box { margin:0; padding:0;}
        .star_area_a .star_box .star_list { float:left; margin:0; padding:0; width:100%; font-size:13px; text-align:center;}
        .star_area_a .star_box .star_list .tb_left { text-align:left; width:130px; padding:6px 0;}
        .star_area_a .star_box .star_list .tb_right {background:url(//image.aladin.co.kr/img/shop/2018/analysis_box_bg1.png) repeat-x 0 0; text-align:left; padding:8px 0;}
        .star_area_a .star_box .star_list .tb_right .bar { float:left;}
        .star_area_a .star_box .star_list .tb_right .bar img { width:100%; height:20px;}
        .star_area_a .star_box .star_list .tb_right .per {background:#f9f9f9; padding-bottom:2px;  width:15%; text-align:right; float:right; font-size:14px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; font-style:italic; color:#111; padding-left:5px;  }


        .score_box { margin:0 auto 15px auto; display:inline-block; padding:0; text-align:center;} 
        .score_box .star { margin:0; padding:0; float:left;} 
        .score_box .num { float:left; padding:7px 0 0 15px; color:#ef3b96; font-weight:bold; font-size:34px;} 
        /* 100자평 */
        .Ere_prod_mblog_R .hundred_box { margin:0; padding:0;}
        .Ere_prod_mblog_R .hundred_box .Hleft1 { float:left; margin:0 5px 0 0; padding:0; width:700px; float:left;} /* 타이틀 상단으로 width값 변경 : width:500px; -> width:700px; */
        .Ere_prod_mblog_R .hundred_box .Hright1 { float:right; margin:0; padding:0px; width:95px; }
        .Ere_prod_mblog_R .hundred_box .starbox {margin:0; padding:6px 0; width:145px;  }

        .Ere_prod_mblog_R .hundred_box .text_box { border:1px solid #d5d5d5; margin:0; padding:0px; width:695px; height:65px;}/* 타이틀 상단으로 width값 변경 : width:495px; -> width:695px; */
        .Ere_prod_mblog_R .hundred_box .text_box .Btext_area {border:0; padding:10px 10px; width:675px; height:45px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; font-size:14px; color:#777; text-align:left;letter-spacing:-0.02em; line-height:1.6;   } /*타이틀 상단으로 width값 변경 : width:475px; -> width:675px; */

        .Ere_prod_mblog_R .hundred_box .Hleft2 { float:left; margin:0 20px 0 0; padding:0;}
        .Ere_prod_mblog_R .hundred_box .Hright2 { float:right; margin:0; padding:0px;  }
        .Ere_prod_mblog_R .hundred_box .myreview { float:left; margin:0; padding:9px 10px; width:240px; border:1px solid #d5d5d5; color:#222; }

        .Ere_prod_mblog_R .Btitle_box {margin:0; padding:10px 0 ; width:100%; border-bottom:1px solid #d5d5d5; }/* 타이틀 상단으로 width값 변경 : width:600px; -> width:100% */
        .Ere_prod_mblog_R .Btitle_box .Tlist_left { float:left; margin:0; padding: 0;}
        .Ere_prod_mblog_R .Btitle_box .Tlist_left ul {margin:0; padding: 0; }
        .Ere_prod_mblog_R .Btitle_box .Tlist_left ul li { float:left; list-style:none; margin:0 0; padding: 0 25px 0 5px;  color:#333; font-size:16px; text-align:left;  }
        .Ere_prod_mblog_R .Btitle_box .Tlist_left ul li .on {color:#0fa8ff; font-size:16px; font-weight:600; display:block; padding: 0; }

        .Ere_prod_mblog_R .Btitle_box .Tlist_right { float:right; margin:0; padding:0 ; color:#333; font-size:15px; }
        .Ere_prod_mblog_R .Btitle_box .Tlist_right ul {margin:0; padding:0 ; color:#333; font-size:15px; }
        .Ere_prod_mblog_R .Btitle_box .Tlist_right ul li {float:left; list-style:none; margin:0; padding:0 0 0 25px ; color:#333; font-size:14px; }

        /* 응원 댓글 */
        .Ere_prod_mblog_R .Btitle_box .Tlist_left2 { float:left; margin:0 0 10px 0; padding: 0; width:100%; color:#ef3c97; font-size:16px; font-weight:bold; letter-spacing:-0.02em; line-height:1.6;  }
        .Ere_prod_mblog_R .Btitle_box .Tlist_left2 a {color:#ef3c97; text-decoration:none;}
        .Ere_prod_mblog_R .Btitle_box .Tlist_right2 { float:right; margin:0; padding:0 ; color:#333; font-size:15px; }
        .Ere_prod_mblog_R .Btitle_box .Tlist_right2 ul {margin:0; padding:0 ; color:#333; font-size:15px; }
        .Ere_prod_mblog_R .Btitle_box .Tlist_right2 ul li {float:left; list-style:none; margin:0; padding:0 0 0 25px ; color:#333; font-size:14px; }

        /* 이 책의 마니아가 남긴 글 리스트 */
        .Ere_prod_mblog_R .mania_list { margin:0; padding:0;  }
        .Ere_prod_mblog_R .mania_list .ma_photo {float:left; margin:0 15px 0 0; padding:5px 0 0 0; text-align:left; width:70px;}
        .Ere_prod_mblog_R .mania_list .ma_photo img {width:70px; height:70px}
        .Ere_prod_mblog_R .mania_list .ma_write {float:left; margin: 0; padding:0; width:715px; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#333; letter-spacing:-0.02em; line-height:1.6;}/* 타이틀 상단으로 width값 변경 : width:515px;  -> width:715px;  */

        /* 100자평 글 리스트 */
        .Ere_prod_mblog_R .hundred_list { margin:0; padding:0;}
        .Ere_prod_mblog_R .hundred_list .HL_star {float:left; margin:0 15px 0 0; padding:0; text-align:left; width:130px;}
        .Ere_prod_mblog_R .hundred_list .HL_write { float:left; margin: 0; padding:0 0 0 0; width:655px; font-size:15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#333; letter-spacing:-0.02em; line-height:1.6;}/* 타이틀 상단으로 width값 변경 : width:600px;  -> width:655px;  */
        .Ere_prod_mblog_R .hundred_list .HL_write2 { float:left; margin: 0; padding:0 0 0 0; width:810px; font-size: 15px; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; color:#333;letter-spacing:-0.02em; line-height:1.6; }

        /* 여백, 정렬, 폰트*/
        .Ere_floatL {float: left;}
        .Ere_floatR {float: right;}
        .Ere_textL { text-align:left;}
        .Ere_textR { text-align:right;}
        .Ere_textC { text-align:center;}
        .Ere_P5 { padding:5px;}
        .Ere_PT5 { padding-top:5px;}
        .Ere_PT8 { padding-top:8px;}
        .Ere_PT10 { padding-top:10px;}
        .Ere_PT40 { padding-top:40px;}
        .Ere_PR5 { padding-right:5px;}
        .Ere_PR10 { padding-right:10px;}
        .Ere_PR30 { padding-right:30px;}
        .Ere_PR50 { padding-right:50px;}
        .Ere_PB0 { padding-bottom:0px;}
        .Ere_PB5 { padding-bottom:5px;}
        .Ere_PB10 { padding-bottom:10px;}
        .Ere_PB15 { padding-bottom:15px;}

        .Ere_M0 {margin:0px;}
        .Ere_MT5 {margin-top:5px;}
        .Ere_MT10 {margin-top:10px;}
        .Ere_MR4 { margin-right:4px}
        .Ere_ML4 { margin-left:4px}
        .Ere_ML7 { margin-left:7px}
        .Ere_ML10 { margin-left:10px}
        .Ere_MB5 {margin-bottom:5px;}
        .Ere_MB10 {margin-bottom:10px;}
        .Ere_MB20 {margin-bottom:20px;}
        .Ere_MB_m1 {margin-bottom:-1px}
        .Ere_MB_m2 {margin-bottom:-2px}
        .Ere_MB_m3 {margin-bottom:-3px}
        .Ere_MB_m4 {margin-bottom:-4px;}
        .Ere_MB_m5 {margin-bottom:-5px;}
        .Ere_MB_m8 {margin-bottom:-8px;}

        .Ere_clear {clear: both;margin: 0px;padding: 0px;}
        .Ere_space5 { margin:0; padding:0; height:5px;}
        .Ere_space10 { margin:0; padding:0; height:10px;}
        .Ere_space15 { margin:0; padding:0; height:15px;}
        .Ere_space20 { margin:0; padding:0; height:20px;}
        .Ere_space25 { margin:0; padding:0; height:25px;}
        .Ere_space30 { margin:0; padding:0; height:30px;}
        .Ere_space40 { margin:0; padding:0; height:40px;}
        .Ere_space50 { margin:0; padding:0; height:50px;}
        .Ere_space60 { margin:0; padding:0; height:60px;}

        .Ere_fs13 { font-size:13px;} /* 상단 미리보기 및 본문 더보기 */
        .Ere_fs14 { font-size:14px;} /* 지역변경 및 */
        .Ere_fs15 { font-size:15px;} /* 본문 내용 소타이틀  */
        .Ere_fs16 { font-size:16px;} /* 본문 내용 소타이틀  */
        .Ere_fs17 { font-size:17px;} /* 밑줄긋기 페이지*/
        .Ere_fs18 { font-size:18px;} /* 본문 내용 타이틀 및 */
        .Ere_fs20 { font-size:20px;} /* 중고 판매자 이름  및 */
        .Ere_fs24 { font-size:24px;} /* 판매가 */
        .Ere_fs30 { font-size:30px;} /* 평점 */
        .Ere_str { font-weight:600;}
        .Ere_str_n { font-weight:normal;}
        .Ere_italic { font-style:italic;}
        .Ere_valign_t {vertical-align:super}
        .Ere_ht18 { line-height:1.8;}
        .Ere_ht11 { line-height:1.1;}

        .Ere_pink{color:#ef3b96; text-align:center}
        .Ere_pink_left{color:#ef3b96;}


        .Ere_line1 { margin:0; padding:0; border-top:1px solid #ccc;} /* 상단 헤더 라인 */
        .Ere_line2 { margin:45px 0 40px 0; padding: 0; border-top:1px solid #d5d5d5;} /* 여백 포함한 컨텐츠 리스트 라인 */
        .Ere_line3 { margin:45px 0 0px 0; padding: 0; border-top:0;} /* 내용 끝나는 라인: 상품인증 위에는 라인 컬러 없음 */
        .Ere_line4 { margin:20px 0; padding:0; border-top:1px dotted #aaa;} /* 내용 중간 도트 라인 */

        /* 100자평 등록 */
        .Ere_btn_register {display:inline-block; *zoom: 1; *display:inline; padding:0; vertical-align: middle; text-align: center; overflow: hidden; text-decoration: none;cursor: pointer; background: #0fa8ff; }
        .Ere_btn_register a:link {white-space: nowrap; text-decoration: none; outline: 0; color: #FFF; font-size:15px; font-weight: bold; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; line-height:1.5; display: block; white-space: nowrap; background: #0fa8ff; margin: 0; width:95px; padding:23px 0px 22px 0px;}
        .Ere_btn_register a:hover {text-decoration: none; background: #00a1fc;}
        .Ere_btn_register a:visited {background: #0fa8ff; text-decoration: none;outline: 0;color: #FFF; font-size:15px; font-weight: bold; font-family: malgun, "Malgun Gothic", Dotum, 돋움, sans-serif; display: block;white-space: nowrap; margin: 0;}
    </style>
    <script
        src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
        integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI="
        crossorigin="anonymous">
    </script>
    <script>
        var isOldIe = false;
    </script>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-65875867-3"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-65875867-3');
    </script>

    <script type="text/javascript" async src="https://www.google-analytics.com/analytics.js"></script>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-65875863-3"></script>

    <script src="https://www.nl.go.kr/resource/common/js/jquery-1.12.3.min.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/js/jquery.bxslider.min.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/js/jquery.scrollbar.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/js/jquery.outside.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/js/jquery-asRange.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/js/slick.js"></script>
    <script src="https://www.nl.go.kr/resource/common/js/bootstrap-datepicker.js"></script>
    <!---->
    <script src="https://www.nl.go.kr/resource/common/jquery_plugin/common_functions.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/jquery_plugin/validation/validator.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/jquery_plugin/validation/accessability.js"></script>
    <script defer src="https://www.nl.go.kr/resource/common/jquery_plugin/popWin.js"></script>

    <script defer src="https://www.nl.go.kr/resource/templete/nl/js/layout.js"></script>
    <script defer src="https://www.nl.go.kr/resource/templete/nl/js/common.js"></script>
    <script defer src="https://www.nl.go.kr/resource/templete/nl/js/sub.js"></script>
    <style>
        .recomm_today {
            width: 868px;
        }
        .recomm_today > .btn_more {
            right: 50px;
        }
        .recomm_today > .detail {
            margin-top: 20px;
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

        /* ai로고 */
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
        /*dropdown 메뉴css*/
        .navbar button {

            border: none;
            color: black;
            font-size: 15px;
            float: left;
            margin: auto;
            justify-content: center;
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
            display: none; /*수정작업시flex 기본none*/
            justify-content: center;
            text-align: center;
            position: absolute;
            z-index: 101;
            text-decoration: none;
        }
        .dorpDownContents {
            width: 18%; /*드롭다운 사이 간격*/
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
    </style>
</head>
<body class="sub">
    <script type="text/javascript" src="https://www.nl.go.kr/crosseditor4/js/namo_scripteditor.js"></script>
    <div id="wrap">
        <div id="bannerTop">
            <div id="bannerTopLeft">
                <a href="main.html" class="topLeft"><img src="/ex/resources/img/ai.jpg" id="ai"></a>
                <a href="main.html" class="topLeft">
                    <h1 id="topTextLeft">AI휴먼도서관</h1>
                </a>
            </div>
            <div id="bannerMid" class="navbar sticky">  
                <div id="dropdown">
                    <button class="dropbtn"><a href="introduce.html">도서관소개</a></button>
                    <button class="dropbtn"><a href="search.html">도서메뉴</a></button>
                    <button class="dropbtn"><a href="lobook.html">대출/반납</a></button>
                    <button class="dropbtn"><a href="survey.html">ai도서추천</a></button>
                    <button class="dropbtn"><a href="/mypage.html?id='aa111'">마이페이지</a></button>
                    <div id="dropDownMenu">
                        <div class="dorpDownContents">
                            <a href="introduce.html" class="linkContents">인사말</a><br><br>
                            <a href="way.html" class="linkContents">찾아오시는 길</a><br><br>
                            <a href="notice.html" class="linkContents">공지사항</a><br><br>
                            <a href="libraryevent.html" class="linkContents">도서관행사</a><br><br>
                            <a href="FAQ.html" class="linkContents">FAQ</a><br><br>
                            <a href="requestpage.html" class="linkContents">요청게시판</a><br><br>
                            <!-- <a href="#" class="linkContents">Link 3</a><br><br> -->
                            <!-- <a href="#" class="linkContents">Link 4</a><br><br> -->
                        </div>
                        <div class="dorpDownContents">
                            <a href="search.html" class="linkContents">도서검색</a><br><br>
                            <a href="newbook.html" class="linkContents4">신작</a><br><br>
                            <a href="bestbook.html" class="linkContents4">베스트</a><br><br>
                            <a href="service.html" class="linkContents">비치희망도서</a><br><br>
                        </div>
                        <div class="dorpDownContents">
                            <a href="relobook.html" class="linkContents">반납</a><br><br>
                            <a href="lobook.html" class="linkContents">대출</a><br><br>
                            <a href="" class=""></a><br><br>
                            <a href="" class=""></a><br><br>
                            <!-- <a href="#" class="linkContents">Link 3</a><br><br>
                            <a href="#" class="linkContents">Link 4</a><br><br> -->
                        </div>
                        <div class="dorpDownContents">
                            <a href="survey.html" class="linkContents5">ai 도서추천 설문</a><br><br>
                            <a href="aiBook.html" class="linkContents5">ai 도서추천</a><br><br>
                            <a href="" class=""></a><br><br>
                            <a href="" class=""></a><br><br>
                        </div>
                        <div class="dorpDownContents">
                            <a href="" class=""></a><br><br>
                            <a href="" class=""></a><br><br>
                        </div>
                    </div>
                </div>
            </div><!--bannerMid(드롭다운)-->
        </div>
        <div id="content-wrap">
            <div class="container">
                <div class="uccst14_detail_wrap">
                    <div class="uccst14_detail">
                        <div class="title_wrap">
                            <h1>
                                <span class="date">미디어 추천도서</span>
                                <span class="title_area">
                                    <span class="category addCategoryCustom">사회</span>
                                    <span class="title">규칙 없음</span>
                                </span>
                            </h1>
                            <div class="board_info_area">
                                <div class="thumb">
                                    <img src="http://image.kyobobook.co.kr/images/book/large/632/l9788925599632.jpg">
                                </div>
                                <div class="book_info_wrap">
                                    <dl class="book_info">
                                        <dt>저자</dt>
                                        <dd class="author">리드 헤이스팅스, 에린 마이어</dd>
                                        <dt>출판사</dt>
                                        <dd class="publicher">알에이치코리아</dd>
                                        <dt>발행년도</dt>
                                        <dd class="year">2020</dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="board_contents">
                                <div class="subtitle_wrap">
                                    <div class="subtitle_inner">
                                        <div class="btn_wrap">
                                            <button type="button" class=" btn btn_book_info" title="접기">
                                                도서소개
                                            </button>
                                        </div>
                                        <div class="subtitle_content">
                                            <p class="cont"> </p>
                                            <p class="0" style="line-height: 170%; margin-right: 6px; margin-left: 6px;">
                                                <span style="letter-spacing: -0.1pt; font-size: 12pt;"> </span>
                                                <span style="letter-spacing: -0.1pt; font-family: 나눔고딕; font-size: 12pt;">
                                                    넷플릭스 CEO 리드 헤이스팅스의 첫 책 '규칙 없음'. 1997년 설립 당시, 넷플릭스는 우편으로 DVD를 대여해 주는 회사에 불과했다. 
                                                    그러나 2022년 현재는 한국을 포함해 190여 개국 전 세계인에게 즐거움을 선사하며 연간 수조 원의 수익을 창출하는 글로벌 기업이 되었다. 
                                                    넷플릭스는 DVD 대여 서비스에서 인터넷 스트리밍 서비스로 사업을 전환하고, 2013년 '하우스 오브 카드'를 시작으로 드라마 제작까지
                                                    나서며, 시대 흐름에 발맞춰 혁신은 거듭했다. 흥미로운 것은 코닥이나 노키아, 블록버스터처럼 승승장구하던 기업이 산업 생태계가 변할 때
                                                    도채되는 것과 달리, 넷플릭스는 소용돌이치는 비즈니스 환경에서도 변화에 유연하게 대처해 왔다는 것이다.
                                                </span>
                                            </p>
                                            <p class="0" style="line-height: 170%; margin-right: 6px; margin-left: 6px;">
                                                <span style="letter-spacing: -0.1pt; font-size: 12pt;"> </span>
                                                <span style="letter-spacing: -0.1pt; font-family: 나눔고딕; font-size: 12pt;">

                                                </span>
                                            </p>
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                
                            </div>
                            <div class="btn_wrap btn_view_wrap center">
                                <a href="#" class="btn btn_list">목록</a>
                            </div>
                        </div>
                    </div>
                </div>
                <link trl="stylesheet" type="text/css" href="https://www.nl.go.kr/resource/search/css/integSearch.css">
                <script type="text/javascript" src="https://www.nl.go.kr/resource/search/js/search.js"></script>
                <script type="text/javascript" src="https://www.nl.go.kr/resource/search/js/detailView.js"></script>
            </div>
            <div class="Ere_prod_graphwrap_a">
                <div class="graph_box">
                    <div class="buyer_area_a">
                        <div class="buyer_box">
                            <div class="anay_title">
                                <div class="anay_Tround_L">독자 분포</div>
                                <div class="anay_Tround_S">
                                    독자<br>분포
                                </div>
                            </div>
                            <div class="anay_conts">
                                <div class="analysis">
                                    <div class="analysis_box">
                                        <table width="100%" border="0" cellspacing="0">
                                            <tbody>
                                                <tr>
                                                    <td class="tb_woman">
                                                        <div class="bar" id="bar_w_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                    <td class="tb_tit">10대</td>
                                                    <td class="tb_man">
                                                        <div class="bar" id="bar_m_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tb_woman">
                                                        <div class="bar" id="bar_w_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                    <td class="tb_tit">20대</td>
                                                    <td class="tb_man">
                                                        <div class="bar" id="bar_m_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tb_woman">
                                                        <div class="bar" id="bar_w_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                    <td class="tb_tit">30대</td>
                                                    <td class="tb_man">
                                                        <div class="bar" id="bar_m_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tb_woman">
                                                        <div class="bar" id="bar_w_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                    <td class="tb_tit">40대</td>
                                                    <td class="tb_man">
                                                        <div class="bar" id="bar_m_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tb_woman">
                                                        <div class="bar" id="bar_w_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                    <td class="tb_tit">50대</td>
                                                    <td class="tb_man">
                                                        <div class="bar" id="bar_m_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tb_woman">
                                                        <div class="bar" id="bar_w_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                    <td class="tb_tit">60대</td>
                                                    <td class="tb_man">
                                                        <div class="bar" id="bar_m_0" style="width: 0%;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                        </div>
                                                        <div class="per">0%</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tb_woman_last Ere_PT10 Ere_str">여성</td>
                                                    <td class="tb_tit"></td>
                                                    <td class="tb_man_last Ere_PT10 Ere_str">남성</td>
                                                </tr>
                                            </tbody>                      
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a id="anchorOrderStatisstics"></a>
                    </div>
                </div>
                <div class="graph_box">
                    <div class="star_area_a">
                        <div class="star_box">
                            <div class="anay_title">
                                <div class="anay_Tround_L">평점 분포</div>
                                <div class="anay_Tround_S">
                                    평점<br>분포
                                </div>
                            </div>
                            <div class="anay_conts">
                                <div class="analysis">
                                    <div class="analysis_box">
                                        <div class="star_list">
                                            <div class="score_box">
                                                <div class="star">
                                                    <img src="//image.aladin.co.kr/img/shop/2018/icon_Lstar_on.png">
                                                    <img src="//image.aladin.co.kr/img/shop/2018/icon_Lstar_on.png">
                                                    <img src="//image.aladin.co.kr/img/shop/2018/icon_Lstar_on.png">
                                                    <img src="//image.aladin.co.kr/img/shop/2018/icon_Lstar_on.png">
                                                    <img src="//image.aladin.co.kr/img/shop/2018/icon_Lstar_on.png">
                                                </div>
                                                <div class="num">0.0</div>
                                                <div class="Ere_clear"></div>
                                            </div>
                                        </div>
                                        <div class="star_list">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="tb_left">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                        </td>
                                                        <td class="tb_right">
                                                            <div class="bar" id="bar_r_5" style="width: 0%;">
                                                                <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                            </div>
                                                            <div class="per">0%</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tb_left">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                        </td>
                                                        <td class="tb_right">
                                                            <div class="bar" id="bar_r_4" style="width: 0%;">
                                                                <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                            </div>
                                                            <div class="per">0%</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tb_left">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                        </td>
                                                        <td class="tb_right">
                                                            <div class="bar" id="bar_r_4" style="width: 0%;">
                                                                <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                            </div>
                                                            <div class="per">0%</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tb_left">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                        </td>
                                                        <td class="tb_right">
                                                            <div class="bar" id="bar_r_4" style="width: 0%;">
                                                                <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                            </div>
                                                            <div class="per">0%</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tb_left">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom:-4px;">
                                                        </td>
                                                        <td class="tb_right">
                                                            <div class="bar" id="bar_r_4" style="width: 0%;">
                                                                <img src="//image.aladin.co.kr/img/shop/2018/analysis_bg1.png">
                                                            </div>
                                                            <div class="per">0%</div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a id="anchorRankStatistics"></a>
                </div>
                <div class="Ere_clear"></div>
            </div>
            <div class="Ere_clear Ere_space50"></div>
            <div class="Ere_prod_blogwrap">
                <div class="Ere_prod_mblog_box">
                    <div class="Ere_prod_mblog_L">100자평</div>
                    <div class="Ere_prod_mblog_R">
                        <div class="hundred_box">
                            <div class="Hleft1">
                                <div class="starbox">
                                    <div class="Ere_floatL" style="cursor:pointer;">
                                        <a id="divCommentReviewStar1" class="divCommentReviewStar" data-star="1">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_gray.png" border="0">                                
                                        </a>
                                        <a id="divCommentReviewStar2" class="divCommentReviewStar" data-star="2">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_gray.png" border="0">                                
                                        </a>  
                                        <a id="divCommentReviewStar3" class="divCommentReviewStar" data-star="3">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_gray.png" border="0">                                
                                        </a>  
                                        <a id="divCommentReviewStar4" class="divCommentReviewStar" data-star="4">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_gray.png" border="0">                                
                                        </a>                              
                                        <a id="divCommentReviewStar5" class="divCommentReviewStar" data-star="5">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_gray.png" border="0">                                
                                        </a>  
                                    </div>
                                    <div class="Ere_clear"></div>
                                </div>
                            </div>
                            <div class="Hright1 Ere_textC">
                                <input type="checkbox" id="isfacebook" style="width:0; height:0;">
                                <input type="checkbox" id="istwitter" style="width:0; height:0;">
                            </div>
                            <div class="Ere_clear"></div>
                        </div>
                        <div class="Ere_space10"></div>
                        <div class="hundred_box">
                            <div class="Hleft1">
                                <div class="text_box">
                                    <textarea id="txt_commentReview" name="tag_save" cols="87" rows="3" class="Btext_area watermark" onkeyup="TextLengthCheck('#txt_commentReview',280,'#cnt_commentReview')"
                                    onclick="fn_login_check()" style="resize: none;"></textarea>
                                    <div class="p_smfont npd_tgray" style="text-align:right; padding-top: 3px; padding-right: 3px; display: none;">
                                        <sapn id="cnt_commentReview"></sapn>
                                    </div>
                                </div>
                            </div>
                            <div class="Hright1">
                                <div class="Ere_btn_register">
                                    <a href="javascript:void(0);" id="commentReview_savebtn" onclick="fn_SaveCommentReview()">등록</a>
                                </div>
                            </div>
                            <div class="Ere_clear"></div>
                        </div>
                        <div class="Ere_space30"></div>
                        <div id="CommentReviewList">
                            <div class="review_list_wrap">
                                <ul>
                                    <div class="hundred_list">
                                        <div class="HL_star">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_on.png" style="margin-bottom: -4px;">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom: -4px;">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom: -4px;">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom: -4px;">
                                            <img src="//image.aladin.co.kr/img/shop/2018/icon_star_off.png" style="margin-bottom: -4px;">
                                        </div>
                                        <div class="HL_write">
                                            <div class="blog_list3">
                                                <ul>
                                                    <li>

                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="Ere_clear"></div>
                                    </div>
                                    <div class="Ere_space20"></div>
                                    <div class="hundred_list">
                                        <div class="HL_star">
        
                                        </div>
                                        <div class="HL_write">
        
                                        </div>
                                        <div class="Ere_clear"></div>
                                    </div>
                                    <div class="Ere_space20"></div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    <script>
        $(".btn_book_info").click(function() {
            var tabindex = $(this).index();
            $(".cont").hide();
            $(".cont").eq(tablndex).show();
        })
    </script>
    <script>
        /**
         * <a href="#">링크</a>
         * 위와 같은 형태로 된 링크를 '#'동작이 먹지 않게 막는다.
         */
        $(document).delegate("a[href='#']","click",function(event){
            event.preventDefault();
        });
        $(document).delegate("a[href='#none']","click",function(event){
            event.preventDefault();
        });
    
        /*
        $(function(){
            $("#qrImg").prop("src", "/comm/qr.do?url=/NL/contents/N20500000000.do");
        })
        */
     
        /* 스크랩 등록 폼 호출 */
        function fn_scrap(gbn){
    
            var data = null;
            var frm = document.nlScrapForm;
            frm.scrapGbn.value = gbn;
            data = new FormData(frm);
            
    
            $.ajax({
                type : "post"
                , url : "/NL/main/scrapCateList.ajax"
                , data : data
                , processData: false  // Important!
                , contentType: false
                , cache: false
                , dataType : "html"
                , success : function(data){
                    $("#layerScrap").show();
                    $("#layerScrap").html(data);
                    setTimeout(function(){
                        document.getElementById('selCateKey').focus();
                    }, 100);
                }
                , error : function(jqXHR,textStatus,e){
                     alert("일정 조회 중 오류가 발생하였습니다. 관리자에게 문의해 주세요.");
                    return;
                }
            });
        }
    
        /* 스크랩 등록  */
        function fn_scrapInst(){
    // 	 	var data = $('#nlScrapForm').serialize();
             var url = "/NL/main/scrapCrud.ajax";
    
             document.nlScrapForm.scrapCateKey.value = $("#selCateKey").val();
             document.nlScrapForm.scrapDesc.value = $("#scrapContents").val();
    
            $.ajax({
                url : url,
                data : $('#nlScrapForm').serialize(),
                type: 'POST',
                dataType : "json",
                async : false,
                success: function(data) {
                        alert(data.result);
                        $("#layerScrap").hide();
                },
                error : function(xhr) {
                    alert(xhr.status);
                }
            });
        }
     
        /* 스크랩 분류 호출 */
        function fn_scrapCate(gbn){
             var data = null;
            var frm = document.nlScrapForm;
            frm.scrapGbn.value = gbn;
    
            data = new FormData(frm);
    
            $.ajax({
                type : "post"
                , url : "/NL/main/scrapCateList.ajax"
                , data : data
                , processData: false  // Important!
                , contentType: false
                , cache: false
                , dataType : "html"
                , success : function(data){
                    $("#sublayPopup").show();
                    $("#sublayPopup").html(data);
                    document.getElementById('scrapCmnTitle').focus(); 
                }
                , error : function(jqXHR,textStatus,e){
                     alert("일정 조회 중 오류가 발생하였습니다. 관리자에게 문의해 주세요.");
                    return;
                }
            });
        }
    
        $(document).ready(function(){
            
            ItgJs.NowPageById("N10000000000>N20500000000","SNB");
            ItgJs.NowPageById("N10000000000>N20500000000","TAB");
            ItgJs.NowPageById("N10000000000>N20500000000","MTAB");
            
            ItgJs.NowPageById("N10000000000>N20500000000","GNB");
            ItgJs.NowPageById("N10000000000>N20500000000","GNBB");
            
        });
    
    
    $(document).ready(function(){
    
            /* 통합검색 자동완성 */
            $(".schKwd").keyup(function() {
                var akc_enable = akc_getCookie(); //자동완성 1:켜기, 0:끄기
    
                //if(!$(".autocomplete_layer").hasClass("is_collapsed")){ //자동완성 끄기 해제시
                if(akc_enable == 1){
                    var term = $(this).val();
                    if(!ItgJs.fn_isEmpty(term)){
                        $.ajax({
                              url : "/NL/main/autoCompleteList.ajax"
                            , data: {'term':term}
                            , dataType: "json"
                            , type : "post"
                            , beforeSend : ""
                            , success : function(data){
                                var suggest = "";
                                var sArr = data.suggestArr;
                                for(var i in sArr) {
                                    suggest += "<li class='item'><a href='#none' onclick='autocompleteChoice(\""+sArr[i]+"\");'>"+
                                    sArr[i][0].replace(term,'<strong>'+term+'</strong>')+"</a></li>";
                                }
                                $(".result_list").html(suggest);
                                $(".result_list").refreshAutoList(suggest);
                            }
                            , error : function(jqXHR,textStatus,e){
                                //alert("결과 조회 중 오류가 발생하였습니다. 관리자에게 문의해 주세요.");
                                return;
                            }
                        });
                    }
                //}
                }else{//자동완성 미사용
                    $('div.autocomplete_layer').addClass('is_collapsed');
                    $(".result_list").refreshAutoList("");
                }
    
            });
    
            /* 내서재 - 연구자정보서비스정보 표출 여부  */
            var researchYn = 'false';
            if(researchYn == 'false'){
                $('#SNB_N60509000000').hide();
                $('#MMAP_N60509000000').hide();
            }
            /* 내서재 - 회원가입 표출 여부  */
            var loginYn = 'false';
            if(loginYn == 'true'){
                $('#SNB_N60300000000').hide();
            }
        });
    
        /* 자동완성 결과 선택 */
        function autocompleteChoice(suggest){
            $(".autocomplete_layer").removeClass("is_expanded");
            $(".search-btn-wrap .btn_arrow").removeClass("is_fold");
            $(".schKwd").val(suggest);
        }
    
        $(function(){
            setTimeout(
            function(){
                var ctgFormWrap = $(".category_form_item.is_selected").parents(".category_form_wrap");
                ctgFormWrap.after("<h4 class='ir_text'>"+$(".category_form_item.is_selected a").text()+"</h4>");
    
                if($(".depth4-menu-wrap").length!=0) {
                    $(".content_top").after("<h4 class='ir_text'>"+$("#menu-wrap-tab4-mo .depth4-menu__item.is_selected:not(.bx-clone) a > span").text()+"</h4>");
                }
            }, 3000);
        });
    
        //자동완성 쿠키
        function akc_setCookie(bool) {
            var akc_cookie = 0;
            var todayDate;
    
            if(bool)
            {
                akc_cookie = "1";
                akc_enable = "1";
                $('div.autocomplete_layer').removeClass('is_collapsed');
            } else {
                akc_enable = "0";
                $('div.autocomplete_layer').addClass('is_collapsed');
            }
    
            todayDate = new Date();
            todayDate.setDate(todayDate.getDate() + 3650);
            document.cookie = "KonanAKC=" + escape(akc_cookie) + "; path=/; expires=" + todayDate.toGMTString();
    
            $('div.autocomplete_layer').removeClass('is_expanded');
            $(".result_list").refreshAutoList("");
        }
    
        function akc_getCookie() {
            var bool=false;
            var allcookies;
            var pos;
            var start;
            var end;
            var akc_cookie;
    
            allcookies = document.cookie;
            pos = allcookies.indexOf("KonanAKC=");
            if ( pos==-1 ) return "1";
            start = pos + 9;
            end = allcookies.indexOf(";",start);
    
            if (end == -1) end = allcookies.length;
    
            akc_cookie = allcookies.substring(start,end);
            akc_cookie = unescape(akc_cookie);
    
            return akc_cookie;
        }
    
        //[자동완성 목록 갱신]
        $.fn.refreshAutoList = function(str){
            var listStr = str;
            //최초 수행 버튼
            var akc_enable = akc_getCookie(); //자동완성 1:켜기, 0:끄기
            var closeBtn = "<button type=\"button\" class=\"autocomplete_close\" onclick=\"akc_setCookie(0);\">자동완성 끄기</button>";
    
            if(akc_enable == 1){
                closeBtn = "<button type=\"button\" class=\"autocomplete_close\" onclick=\"akc_setCookie(0);\">자동완성 끄기</button>";
                $('.search-btn-wrap .btn_arrow .arrow_fold').removeClass('is_collapsed');
            }else{
                closeBtn = "<button type=\"button\" class=\"autocomplete_close\" onclick=\"akc_setCookie(1);\">자동완성 켜기</button>";
                listStr = "<li class='item'><a href=\"javascript:void(0);\">자동완성이 꺼져있습니다.</a></li>";
                $('.search-btn-wrap .btn_arrow .arrow_fold').addClass('is_collapsed');
            }
            $('.autocomplete_layer div.btn_wrap').html(closeBtn);//자동완성 켜기끄기 버튼
            $(this).html(listStr);
        }
    
        window.addEventListener("load", function(){
            var title1 = $("div[data-uploaded-item-cell='download']").attr('title');
            var title2 = $("div[data-uploaded-item-cell='delete']").attr('title');
            var title3 = $("div[data-uploaded-item-cell='arrowdown']").attr('title');
            var title4 = $("div[data-uploaded-item-cell='arrowup']").attr('title');
            $("div[data-uploaded-item-cell='download']").remove();
            $("div[data-uploaded-item-cell='delete']").remove();
            $("div[data-uploaded-item-cell='arrowdown']").remove();
            $("div[data-uploaded-item-cell='arrowup']").remove();
            //alert(title1 + title2 + title3 + title4);
        });
    
           function waPopup() {
               if($( window ).width() <= 767){
                window.open("/resource/templete/nl/common/img/common/web_20220621.png", "a", "width=549, height=777, left=100, top=50");
               } else {
                window.open("/resource/templete/nl/common/img/common/web_20220621.png", "a", "width=549, height=777, left=100, top=50");
               }
           }
    
           function fn_print(){
               document.pf.printzone.value = document.getElementById("sub_content").innerHTML;
               var popOption = "width=1260, height=800, resizable=no, scrollbars=no, status=no;";
               window.open(encodeURI("/NL/popContentsPrint.do"), "", popOption);
           }
    </script>
</body>
</html>