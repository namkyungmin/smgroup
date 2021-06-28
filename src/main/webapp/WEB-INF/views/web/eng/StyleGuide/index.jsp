<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/include/eng/header.jsp" %>
<title>Style Guide</title>
<style>
    h3 { font-size:30px; margin-bottom:20px; font-weight:700; }
    h4 { font-size:24px; margin:20px 0; font-weight:700; }
    hr { display:block; margin:30px 0; width:100%; background:#000; }
    .bg_gray { background:gray; padding:10px; }
    .btn_wrap { margin-bottom:10px; }
</style>
</head>

<body>
    <div id="wrap" class="style_guide sub">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Style Guide</h2>
            </div>
            <!--// e: title -->
             <!-- s: breadcrumb -->
             <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth1">미디어</li>
                <li class="depth2">보도자료</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section">
                    <h3>본문 타이틀</h3>
                    <div class="bg_gray">
                        <p class="common_tit type01">보도자료</p>
                    </div>
                    <p class="common_tit type02">보도자료</p>
                    <p class="common_tit type03">보도자료</p>

                    <hr>

                    <h3 class="eng">BUTTONS</h3>
                    <h4>기본버튼</h4>
                    <div class="btn_wrap">
                        <a href="" class="common_btn type01">
                            <span>LIST</span>
                        </a>
                    </div>
                    <div class="btn_wrap">
                        <a href="" class="common_btn type02">
                            <span>Go to Ethical Management</span>
                        </a>
                    </div>
                    <div class="btn_wrap bg_gray">
                        <a href="" class="common_btn type03">
                            <span>Go to Desired Talents</span>
                        </a>
                    </div>
                    <h4>아웃링크 버튼</h4>
                    <div class="btn_wrap">
                        <a href="" class="common_btn outlink">
                            <span>기사보기</span>
                        </a>
                    </div>
                    <h4>다운로드 버튼</h4>
                    <div class="btn_wrap">
                        <a href="/resource/file/SMGROUP_Code_of_Ethics_KR.pdf" class="common_btn download" target="_blank" title="새 창으로 바로가기"><span>Download</span></a>
                    </div>
                </div>
                <%@ include file="/include/eng/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        //movie list
        $('.movie.list .slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 5000,
        });
        $( "#datePickerStart" ).datepicker({dateFormat: 'yy-mm-dd'});
        $( "#datePickerEnd" ).datepicker({dateFormat: 'yy-mm-dd'});

         //news list
        $('.news.list .slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 5000,
        });
        $( "#datePickerStart2" ).datepicker({dateFormat: 'yy-mm-dd'});
        $( "#datePickerEnd2" ).datepicker({dateFormat: 'yy-mm-dd'});
    </script>
</body>
</html>